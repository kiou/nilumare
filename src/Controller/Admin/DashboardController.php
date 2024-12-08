<?php

namespace App\Controller\Admin;

use App\Entity\Logo;
use App\Entity\User;
use App\Entity\Avant;
use App\Entity\Block;
use App\Entity\Mares;
use App\Entity\Headers;
use App\Entity\Plantes;
use App\Entity\Actualites;
use App\Entity\Statistiques;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\UserMenu;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use Symfony\Component\Security\Core\User\UserInterface;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        return $this->render('admin/dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('<img src="../img/logoadmin.png" style="max-width:95%;">')
            ->setFaviconPath('img/favicon.png');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('Gestion');
        yield MenuItem::linkToCrud('Utilisateurs', 'fas fa-dot-circle', User::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Blocks', 'fas fa-dot-circle', Block::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Logos & réseaux', 'fas fa-dot-circle', Logo::class)->setDefaultSort(['id' => 'DESC']);

        yield MenuItem::section('Contenu');
        yield MenuItem::linkToCrud('En tête accueil', 'fas fa-dot-circle', Headers::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Plantes', 'fas fa-dot-circle', Plantes::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Mares et bassins', 'fas fa-dot-circle', Mares::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Actualités', 'fas fa-dot-circle', Actualites::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Statistiques', 'fas fa-dot-circle', Statistiques::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Mise en avant', 'fas fa-dot-circle', Avant::class)->setDefaultSort(['id' => 'DESC']);
    }

    public function configureUserMenu(UserInterface $user): UserMenu
    {

        return parent::configureUserMenu($user)
            ->setGravatarEmail($user->getEmail())
            ->setName($user->getPrenom().' '.$user->getNom());
    }

    public function configureActions(): Actions
    {
        return parent::configureActions()
            ->add(Crud::PAGE_INDEX, Action::DETAIL);
    }
}
