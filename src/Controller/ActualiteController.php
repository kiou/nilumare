<?php
namespace App\Controller;

use App\Entity\Actualites;
use App\Repository\LogoRepository;
use App\Repository\ActualitesRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ActualiteController extends AbstractController
{

    private $ActualitesRepository;
    private $LogoRepository;
    

    public function __construct(
            ActualitesRepository $ActualitesRepository,
            LogoRepository $LogoRepository,
        )
    {
        $this->ActualitesRepository = $ActualitesRepository;
        $this->LogoRepository = $LogoRepository;
    }

    public function index()
    {
        $logos = $this->LogoRepository->getLogos();
        $actualites = $this->ActualitesRepository->getLimitActualites();

        return $this->render('actualites.html.twig',[
            'actualites' => $actualites,
            'logos' => $logos,
        ]);
    }
    
    public function view(
        Request $request
    )
    {
        $firstActualites = $this->ActualitesRepository->getLimitActualites(0,2);
        $nextActualites = $this->ActualitesRepository->getLimitActualites(2,5);

        return $this->render('include/actualites.html.twig',[
            'firstActualites' => $firstActualites,
            'nextActualites' => $nextActualites
        ]);
    }

    public function show(Actualites $id)
    {
        $actualite = $this->ActualitesRepository->find($id);
        $logos = $this->LogoRepository->getLogos();

        return $this->render('actualite.html.twig',[
            'actualite' => $actualite,
            'logos' => $logos,
        ]);
    }

}