<?php
namespace App\Controller;

use App\Repository\AvantRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AvantController extends AbstractController
{

    private $AvantRepository;

    public function __construct(
            AvantRepository $AvantRepository,
        )
    {
        $this->AvantRepository = $AvantRepository;
    }

    public function view(
        Request $request
    )
    {
        $avant = $this->AvantRepository->getAvant();

        return $this->render('include/avant.html.twig',[
            'avant' => $avant,
        ]);
    }

}