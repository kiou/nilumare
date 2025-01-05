<?php
namespace App\Controller;

use App\Entity\Plantes;
use App\Entity\PlantesCategorie;
use App\Repository\LogoRepository;
use App\Repository\PlantesRepository;
use App\Repository\PlantesCategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PlanteController extends AbstractController
{

    private $PlantesRepository;
    private $LogoRepository;
    private $PlantesCategorieRepository;

    public function __construct(
            PlantesRepository $PlantesRepository,
            LogoRepository $LogoRepository,
            PlantesCategorieRepository $PlantesCategorieRepository,
        )
    {
        $this->PlantesRepository = $PlantesRepository;
        $this->LogoRepository = $LogoRepository;
        $this->PlantesCategorieRepository = $PlantesCategorieRepository;
    }

    public function index(
        PlantesCategorie $categorie = null
    )
    {
        $logos = $this->LogoRepository->getLogos();
        $plantescategorie = $this->PlantesCategorieRepository->getPlantesCategorie();
        $plantes = $this->PlantesRepository->getPlantes($categorie);

        return $this->render('plantes.html.twig',[
            'logos' => $logos,
            'plantescategorie' => $plantescategorie,
            'plantes' => $plantes,
        ]);
    }
        
    public function view(
        PlantesCategorie $categorie = null,
        Plantes $excludeId = null
    )
    {
        $plantes = $this->PlantesRepository->getPlantes($categorie,$excludeId);

        return $this->render('include/plantescategorie.html.twig',[
            'plantes' => $plantes,
        ]);
    }


    public function show(Plantes $id)
    {
        $plante = $this->PlantesRepository->find($id);
        $logos = $this->LogoRepository->getLogos();

        return $this->render('plante.html.twig',[
            'logos' => $logos,
            'plante' => $plante,
        ]);
    }

}