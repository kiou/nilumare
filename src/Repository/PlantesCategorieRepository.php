<?php

namespace App\Repository;

use App\Entity\PlantesCategorie;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<PlantesCategorie>
 *
 * @method PlantesCategorie|null find($id, $lockMode = null, $lockVersion = null)
 * @method PlantesCategorie|null findOneBy(array $criteria, array $orderBy = null)
 * @method PlantesCategorie[]    findAll()
 * @method PlantesCategorie[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PlantesCategorieRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, PlantesCategorie::class);
    }

    public function getPlantesCategorie()
    {
        $qb = $this->createQueryBuilder('c');

        $qb->orderBy('c.id', 'DESC');
   
        return $qb->getQuery()->getResult();
    }

}
