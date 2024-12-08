<?php

namespace App\Repository;

use App\Entity\Mares;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Mare>
 *
 * @method Mares|null find($id, $lockMode = null, $lockVersion = null)
 * @method Mares|null findOneBy(array $criteria, array $orderBy = null)
 * @method Mares[]    findAll()
 * @method Mares[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MaresRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Mares::class);
    }

    public function getAccueilMare()
    {
        $qb = $this->createQueryBuilder('m');

        $qb->andWhere('m.isActive =  :isActive')
            ->setParameter('isActive', true)
            ->orderBy('m.id', 'DESC')
            ->setMaxResults(4);
   
        return $qb->getQuery()->getResult();
    }

}
