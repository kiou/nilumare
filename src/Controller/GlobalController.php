<?php
namespace App\Controller;

use App\Repository\LogoRepository;
use App\Repository\MaresRepository;
use App\Repository\ProposRepository;
use App\Repository\HeadersRepository;
use App\Repository\PlantesRepository;
use App\Repository\PourquoisRepository;
use App\Repository\StatistiquesRepository;
use Symfony\Component\HttpFoundation\Request;
use App\Repository\PlantesCategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalController extends AbstractController
{

    private $HeadersRepository;
    private $LogoRepository;
    private $PlantesCategorieRepository;
    private $PlantesRepository;
    private $MaresRepository;
    private $StatistiquesRepository;
    private $ProposRepository;
    private $PourquoisRepository;

    public function __construct(
            LogoRepository $LogoRepository,
            HeadersRepository $HeadersRepository,
            PlantesCategorieRepository $PlantesCategorieRepository,
            PlantesRepository $PlantesRepository,
            MaresRepository $MaresRepository,
            StatistiquesRepository $StatistiquesRepository,
            ProposRepository $ProposRepository,
            PourquoisRepository $PourquoisRepository
        )
    {
        $this->HeadersRepository = $HeadersRepository;
        $this->LogoRepository = $LogoRepository;
        $this->PlantesCategorieRepository = $PlantesCategorieRepository;
        $this->PlantesRepository = $PlantesRepository;
        $this->MaresRepository = $MaresRepository;
        $this->StatistiquesRepository = $StatistiquesRepository;
        $this->ProposRepository = $ProposRepository;
        $this->PourquoisRepository = $PourquoisRepository;
    }

    public function index(
        Request $request
    )
    {
        $headers = $this->HeadersRepository->getAllHeaders();
        $logos = $this->LogoRepository->getLogos();
        $plantescategorie = $this->PlantesCategorieRepository->getPlantesCategorie();
        $plantes = $this->PlantesRepository->getPlantes();
        $mares = $this->MaresRepository->getAccueilMare();
        $statistiques = $this->StatistiquesRepository->getAccueilStatistiques();
        $propos = $this->ProposRepository->findLast();
        $pourquois = $this->PourquoisRepository->findAllPourquois('accueil');

        return $this->render('index.html.twig',[
            'action' => 'accueil',
            'logos' => $logos,
            'headers' => $headers,
            'plantescategorie' => $plantescategorie,
            'plantes' => $plantes,
            'mares' => $mares,
            'statistiques' => $statistiques,
            'propos' => $propos,
            'pourquois' => $pourquois
        ]);
    }

}