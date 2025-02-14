<?php

namespace App\Repository;

use App\Entity\Statistiques;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Statistiques>
 *
 * @method Statistiques|null find($id, $lockMode = null, $lockVersion = null)
 * @method Statistiques|null findOneBy(array $criteria, array $orderBy = null)
 * @method Statistiques[]    findAll()
 * @method Statistiques[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class StatistiquesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Statistiques::class);
    }

    public function getAccueilStatistiques()
    {
        $qb = $this->createQueryBuilder('s');

        $qb->andWhere('s.isActive =  :isActive')
            ->setParameter('isActive', true)
            ->orderBy('s.id', 'DESC')
            ->setMaxResults(4);
   
        return $qb->getQuery()->getResult();
    }

}
