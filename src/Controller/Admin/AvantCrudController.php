<?php

namespace App\Controller\Admin;

use App\Entity\Avant;
use Imagine\Image\Box;
use Imagine\Gd\Imagine;
use App\Utilities\Upload;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class AvantCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Avant::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Mise en avant')
            ->setEntityLabelInPlural('Mises en avant')
            ->setDefaultSort(['id' => 'DESC']);
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        $timestamp = time();

        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextField::new('title', 'Titre');
        yield ImageField::new('image','Image')
            ->setHelp('1780 pixel de large et 590 pixel de haut')
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
                $size = new Box(1780,590);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);
        });
        yield TextField::new('link', 'Lien');
        yield TextField::new('linkname', 'Nom du bouton (Lien)');
        yield BooleanField::new('isActive','Actif');

    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../../public/img/';
    }

}
