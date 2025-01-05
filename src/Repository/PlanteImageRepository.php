<?php

namespace App\Repository;

use App\Entity\PlanteImage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<PlanteImage>
 *
 * @method PlanteImage|null find($id, $lockMode = null, $lockVersion = null)
 * @method PlanteImage|null findOneBy(array $criteria, array $orderBy = null)
 * @method PlanteImage[]    findAll()
 * @method PlanteImage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PlanteImageRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, PlanteImage::class);
    }

//    /**
//     * @return PlanteImage[] Returns an array of PlanteImage objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('p.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?PlanteImage
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
