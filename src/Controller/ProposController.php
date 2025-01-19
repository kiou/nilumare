<?php
namespace App\Controller;

use App\Repository\LogoRepository;
use App\Repository\ProposRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ProposController extends AbstractController
{
    private $LogoRepository;

    public function __construct(
            LogoRepository $LogoRepository,
            ProposRepository $ProposRepository
        )
    {
        $this->LogoRepository = $LogoRepository;
        $this->ProposRepository = $ProposRepository;
    }

    public function index()
    {
        $logos = $this->LogoRepository->getLogos();
        $propos = $this->ProposRepository->findLast();

        return $this->render('propos.html.twig',[
            'logos' => $logos,
            'propos' => $propos
        ]);
    }
}