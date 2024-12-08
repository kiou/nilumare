<?php

namespace App\Repository;

use App\Entity\Plantes;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Plantes>
 *
 * @method Plantes|null find($id, $lockMode = null, $lockVersion = null)
 * @method Plantes|null findOneBy(array $criteria, array $orderBy = null)
 * @method Plantes[]    findAll()
 * @method Plantes[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PlantesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Plantes::class);
    }

    public function getPlantes()
    {
        $qb = $this->createQueryBuilder('p');

        $qb->andWhere('p.isActive =  :isActive')
            ->setParameter('isActive', true);

        $qb->orderBy('p.id', 'DESC');
   
        return $qb->getQuery()->getResult();
    }

}
