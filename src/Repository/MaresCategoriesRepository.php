<?php

namespace App\Repository;

use App\Entity\MaresCategories;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<MaresCategories>
 *
 * @method MaresCategories|null find($id, $lockMode = null, $lockVersion = null)
 * @method MaresCategories|null findOneBy(array $criteria, array $orderBy = null)
 * @method MaresCategories[]    findAll()
 * @method MaresCategories[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MaresCategoriesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MaresCategories::class);
    }

    public function getMaresCategorie()
    {
        $qb = $this->createQueryBuilder('c');

        $qb->orderBy('c.id', 'DESC');
   
        return $qb->getQuery()->getResult();
    }
}
