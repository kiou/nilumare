<?php

namespace App\Entity;

use App\Repository\MaresCategoriesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\DBAL\Types\Types;

#[ORM\Table(name : "marescategorie")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: MaresCategoriesRepository::class)]
class MaresCategories
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type : "integer")]
    private ?int $id = null;

    #[ORM\Column(type : "datetimetz")]
    private $created;

    #[ORM\Column(type : "datetimetz", nullable:true)]
    private $changed;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ nom")]
    private ?string $name = null;

    #[ORM\OneToMany(targetEntity: Mares::class, mappedBy: 'marescategories')]
    private $mares;

    public function __construct()
    {
        $this->created = new \DateTime();
        $this->mares = new ArrayCollection();
    }

    public function __toString(): string
    {
        return $this->name;
    }

    public function getId(): ?int
    {
        return $this->id;
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

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection<int, Mares>
     */
    public function getMares(): Collection
    {
        return $this->mares;
    }

    public function addMare(Mares $mare): static
    {
        if (!$this->mares->contains($mare)) {
            $this->mares->add($mare);
            $mare->setMarescategories($this);
        }

        return $this;
    }

    public function removeMare(Mares $mare): static
    {
        if ($this->mares->removeElement($mare)) {
            // set the owning side to null (unless already changed)
            if ($mare->getMarescategories() === $this) {
                $mare->setMarescategories(null);
            }
        }

        return $this;
    }
}
