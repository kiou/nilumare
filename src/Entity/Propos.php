<?php

namespace App\Entity;

use App\Repository\ProposRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Table(name : "propos")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: ProposRepository::class)]
class Propos
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type : "integer")]
    private ?int $id = null;

    #[ORM\Column(type : "datetimetz")]
    private $created;

    #[ORM\Column(type : "datetimetz", nullable:true)]
    private $changed;

    #[Assert\NotBlank(message : "Compléter le champ contenu accueil")]
    #[ORM\Column(type: Types::TEXT)]
    private ?string $contenuaccueil = null;

    #[Assert\NotBlank(message : "Compléter le champ titre page")]
    #[ORM\Column(length: 255)]
    private ?string $titirepage = null;
    
    #[Assert\NotBlank(message : "Compléter le champ contenu page")]
    #[ORM\Column(type: Types::TEXT)]
    private ?string $contenupage = null;

    public function __construct()
    {
        $this->created = new \DateTime();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitirepage(): ?string
    {
        return $this->titirepage;
    }

    public function setTitirepage(string $titirepage): static
    {
        $this->titirepage = $titirepage;

        return $this;
    }

    public function getContenupage(): ?string
    {
        return $this->contenupage;
    }

    public function setContenupage(string $contenupage): static
    {
        $this->contenupage = $contenupage;

        return $this;
    }

    public function getCreated(): ?\DateTimeInterface
    {
        return $this->created;
    }

    public function setCreated(\DateTimeInterface $created): static
    {
        $this->created = $created;

        return $this;
    }

    #[ORM\PreUpdate()]
    public function preChanged()
    {
        $this->changed = new \DateTime();
    }

    public function getChanged(): ?\DateTimeInterface
    {
        return $this->changed;
    }

    public function setChanged(?\DateTimeInterface $changed): static
    {
        $this->changed = $changed;

        return $this;
    }

    public function getContenuaccueil(): ?string
    {
        return $this->contenuaccueil;
    }

    public function setContenuaccueil(string $contenuaccueil): static
    {
        $this->contenuaccueil = $contenuaccueil;

        return $this;
    }
}
