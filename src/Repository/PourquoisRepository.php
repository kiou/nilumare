<?php

namespace App\Repository;

use App\Entity\Pourquois;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Pourquois>
 *
 * @method Pourquois|null find($id, $lockMode = null, $lockVersion = null)
 * @method Pourquois|null findOneBy(array $criteria, array $orderBy = null)
 * @method Pourquois[]    findAll()
 * @method Pourquois[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PourquoisRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Pourquois::class);
    }

    public function findAllPourquois($avant = null)
    {
        $qb = $this->createQueryBuilder('p')
                   ->andWhere('p.isActive =  :isActive')
                   ->setParameter('isActive', true)
                   ->orderBy('p.id', 'DESC');

        if(!is_null($avant)){
            $qb->andWhere('p.isAccueil =  :isAccueil')
            ->setParameter('isAccueil', true)
            ->orderBy('p.id', 'DESC')
            ->setMaxResults(1);

            return $qb->getQuery()->getOneOrNullResult();
        }
    
        return $qb->getQuery()->getResult();
    }
}
