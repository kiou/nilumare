<?php

namespace App\Repository;

use App\Entity\Actualites;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Actualites>
 *
 * @method Actualites|null find($id, $lockMode = null, $lockVersion = null)
 * @method Actualites|null findOneBy(array $criteria, array $orderBy = null)
 * @method Actualites[]    findAll()
 * @method Actualites[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ActualitesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Actualites::class);
    }

    public function getLimitActualites($first, $max)
    {
        $qb = $this->createQueryBuilder('a');

        $qb->andWhere('a.isActive =  :isActive')
            ->setParameter('isActive', true)
            ->orderBy('a.id', 'DESC')
            ->setFirstResult($first)
            ->setMaxResults($max);
   
        return $qb->getQuery()->getResult();
    }
}
