<?php

namespace App\Controller\Admin;

use App\Entity\Propos;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ProposCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Propos::class;
    }
    
    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('A propos')
            ->setEntityLabelInPlural('A propos')
            ->setDefaultSort(['id' => 'DESC'])
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
        ;
    }

    public function configureFields(string $pageName): iterable
    {
        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextEditorField::new('contenuaccueil','Contenu du block accueil')
            ->hideOnIndex()
            ->setFormType(CKEditorType::class);   
        yield TextField::new('titirepage', 'Titre de la page à propos');
        yield TextEditorField::new('contenupage','Conjtenu de la page à propos')
            ->hideOnIndex()
            ->setFormType(CKEditorType::class);   
    }

}
