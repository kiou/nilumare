<?php
namespace App\Form\Type;

use App\Entity\Legendes;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ImageTypeLegende extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class, [
                'label' => "Titre",
                'required' => true,
            ])
            ->add('resume', TextareaType::class, [
                'label' => "Contenu",
                'required' => true,
            ])
            ->add('imageFile', FileType::class, [
                'label' => false,
                'required' => false,
            ])
            ->add('url', HiddenType::class);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Legendes::class,
        ]);
    }
}
?>