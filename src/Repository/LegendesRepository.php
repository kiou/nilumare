<?php

namespace App\Repository;

use App\Entity\Legendes;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Legendes>
 *
 * @method Legendes|null find($id, $lockMode = null, $lockVersion = null)
 * @method Legendes|null findOneBy(array $criteria, array $orderBy = null)
 * @method Legendes[]    findAll()
 * @method Legendes[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LegendesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Legendes::class);
    }

}
