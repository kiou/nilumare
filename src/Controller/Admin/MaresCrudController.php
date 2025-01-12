<?php

namespace App\Controller\Admin;

use App\Entity\Mares;
use Imagine\Image\Box;
use Imagine\Gd\Imagine;
use App\Utilities\Upload;
use App\Form\Type\ImageTypeLegende;
use Doctrine\ORM\EntityManagerInterface;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class MaresCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Mares::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('title')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Mare et bassin')
            ->setEntityLabelInPlural('Mares et bassins')
            ->setDefaultSort(['id' => 'DESC'])
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        $timestamp = time();

        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextField::new('title', 'Titre');
        yield SlugField::new('slug', 'URL automatique')
            ->hideOnIndex()
            ->setTargetFieldName('title');
        yield AssociationField::new('marescategorie','Catégorie')
            ->setSortProperty('name');
        yield ImageField::new('image','Image')
            ->setHelp('570 pixel de large et 370 pixel de haut')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $size = new Box(1920,550);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $imagine = new Imagine();
                $size = new Box(570,370);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageavant','Image avant')
            ->setHelp('1920 pixel de large et 960 pixel de haut')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $size = new Box(1920,960);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);
        })->hideOnIndex();
        yield ImageField::new('imageapres','Image aprés')
            ->setHelp('1920 pixel de large et 960 pixel de haut')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $size = new Box(1920,960);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);
        })->hideOnIndex();
        yield TextareaField::new('resume', 'Résumé')->hideOnIndex();
        yield TextEditorField::new('content','Contenu')
            ->hideOnIndex()
            ->setFormType(CKEditorType::class);   
        yield CollectionField::new('legendes','Légendes')
            ->setEntryType(ImageTypeLegende::class)
            ->setFormTypeOptions([
                'by_reference' => false,
            ])
            ->onlyOnForms();
        yield AssociationField::new('plantes', 'Plante(s) en relation')
            ->setFormTypeOption('by_reference', false)
            ->hideOnIndex();
        yield BooleanField::new('isActive','Actif');
    }

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        foreach ($entityInstance->getLegendes() as $legendes) {
            $legendes->upload();
            $legendes->setMare($entityInstance);
            $entityManager->persist($legendes);
        }

        parent::persistEntity($entityManager, $entityInstance);
    }

    public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        foreach ($entityInstance->getLegendes() as $legendes) {
            $legendes->upload();
            $legendes->setMare($entityInstance);
            $entityManager->persist($legendes);
        }

        parent::updateEntity($entityManager, $entityInstance);
    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../../public/img/';
    }
}
