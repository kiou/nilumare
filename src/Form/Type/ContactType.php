<?php

namespace App\Form\Type;

use App\Entity\Contact;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class,[
                'label' => false,
                'attr' => [ 'placeholder' => 'Votre Nom Complet *'],
            ])
            ->add('email', EmailType::class,[
                'label' => false,
                'attr' => [ 'placeholder' => 'Votre Email *'],
            ])
            ->add('telephone', TextType::class,[
                'label' => false,
                'attr' => [ 'placeholder' => 'Votre Téléphone *'],
            ])
            ->add('message', TextareaType::class,[
                'label' => false,
                'attr' => [ 'placeholder' => 'Votre message *'],
            ])
            ->add('Envoyer', SubmitType::class,[
                'label' => 'Envoyer le message',
                'attr' => ['class' => 'btn bleu btnSubmit']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Contact::class
        ]);
    }
}
