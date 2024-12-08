<?php

namespace App\Repository;

use App\Entity\Logo;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Logo>
 *
 * @method Logo|null find($id, $lockMode = null, $lockVersion = null)
 * @method Logo|null findOneBy(array $criteria, array $orderBy = null)
 * @method Logo[]    findAll()
 * @method Logo[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LogoRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Logo::class);
    }

    public function getLogos()
    {
        $qb = $this->createQueryBuilder('l');

        $qb->orderBy('l.id', 'DESC')
            ->setMaxResults(1);
   
        return $qb->getQuery()->getOneOrNullResult();
    }
}
