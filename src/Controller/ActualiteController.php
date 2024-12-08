<?php
namespace App\Controller;

use App\Repository\ActualitesRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ActualiteController extends AbstractController
{

    private $ActualitesRepository;

    public function __construct(
            ActualitesRepository $ActualitesRepository,
        )
    {
        $this->ActualitesRepository = $ActualitesRepository;
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

}