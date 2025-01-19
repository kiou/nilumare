<?php

namespace App\Repository;

use App\Entity\Propos;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Propos>
 *
 * @method Propos|null find($id, $lockMode = null, $lockVersion = null)
 * @method Propos|null findOneBy(array $criteria, array $orderBy = null)
 * @method Propos[]    findAll()
 * @method Propos[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProposRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Propos::class);
    }

    public function findLast()
    {
        return $this->createQueryBuilder('p')
            ->orderBy('p.id', 'DESC')
            ->setMaxResults(1)
            ->getQuery()
            ->getOneOrNullResult();
    }
}
