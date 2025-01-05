<?php
namespace App\Controller;

use App\Entity\Contact;
use App\Form\Type\ContactType;
use App\Repository\LogoRepository;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ContactController extends AbstractController
{

    private $LogoRepository;

    public function __construct(
            LogoRepository $LogoRepository
        )
    {
        $this->LogoRepository = $LogoRepository;
    }

    public function index(Request $request)
    {
        $logos = $this->LogoRepository->getLogos();

        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact,[
            'action' => $this->generateUrl('sendcontact')
        ]);

        return $this->render('contact.html.twig',[
            'form' => $form->createView(),
            'logos' => $logos
        ]);
    }
}