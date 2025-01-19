<?php
namespace App\Controller;

use App\Repository\LogoRepository;
use App\Repository\PourquoisRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PourquoisController extends AbstractController
{
    private $LogoRepository;

    public function __construct(
            LogoRepository $LogoRepository,
            PourquoisRepository $PourquoisRepository
        )
    {
        $this->LogoRepository = $LogoRepository;
        $this->PourquoisRepository = $PourquoisRepository;
    }

    public function index()
    {
        $logos = $this->LogoRepository->getLogos();
        $pourquois = $this->PourquoisRepository->findAllPourquois();

        return $this->render('pourquois.html.twig',[
            'logos' => $logos,
            'pourquois' => $pourquois
        ]);
    }
}