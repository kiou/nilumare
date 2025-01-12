<?php
namespace App\Controller;

use App\Entity\Mares;
use App\Entity\MaresCategories;
use App\Repository\LogoRepository;
use App\Repository\MaresRepository;
use App\Repository\MaresCategoriesRepository;
use App\Repository\PlantesCategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MareController extends AbstractController
{
    private $LogoRepository;
    private $MaresCategoriesRepository;
    private $MaresRepository;
    private $PlantesCategorieRepository;

    public function __construct(
            LogoRepository $LogoRepository,
            MaresCategoriesRepository $MaresCategoriesRepository,
            MaresRepository $MaresRepository,
            PlantesCategorieRepository $PlantesCategorieRepository,
        )
    {
        $this->LogoRepository = $LogoRepository;
        $this->MaresCategoriesRepository = $MaresCategoriesRepository;
        $this->MaresRepository = $MaresRepository;
        $this->PlantesCategorieRepository = $PlantesCategorieRepository;
    }

    public function index(
        MaresCategories $categorie = null
    )
    {
        $logos = $this->LogoRepository->getLogos();
        $marescategorie = $this->MaresCategoriesRepository->getMaresCategorie();
        $mares = $this->MaresRepository->getMares($categorie);

        return $this->render('mares.html.twig',[
            'logos' => $logos,
            'marescategorie' => $marescategorie,
            'mares' => $mares,
        ]);
    }

    public function show(Mares $id)
    {
        $mare = $this->MaresRepository->find($id);
        $logos = $this->LogoRepository->getLogos();
        $plantes = $this->MaresRepository->findPlantesByMareId($id);
        $plantescategorie = $this->PlantesCategorieRepository->getPlantesCategorie();

        return $this->render('mare.html.twig',[
            'logos' => $logos,
            'mare' => $mare,
            'plantes' => $plantes,
            'plantescategorie' => $plantescategorie,
        ]);
    }

}