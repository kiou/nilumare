<?php

namespace App\Entity;

use App\Entity\Plantes;
use App\Entity\Legendes;
use Doctrine\DBAL\Types\Types;
use App\Entity\MaresCategories;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\MaresRepository;
use Doctrine\Common\Collections\Collection;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Table(name : "mares")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: MaresRepository::class)]
class Mares
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
    #[Assert\NotBlank(message : "Compléter le champ titre")]
    private ?string $title = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ slug")]
    private ?string $slug = null;

    #[ORM\Column(length: 255)]
    private ?string $resume = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $content = null;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $image;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageavant;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageapres;

    #[ORM\Column(name : "is_active", type : "boolean")]
    private $isActive;

    #[ORM\ManyToOne(targetEntity: MaresCategories::class, inversedBy: 'mares')]
    #[ORM\JoinColumn(nullable: false)]
    #[Assert\NotBlank(message : "Compléter le champ catégorie")]
    private $marescategorie;

    #[ORM\OneToMany(targetEntity: Legendes::class, mappedBy: 'mare', cascade: ['persist', 'remove'], orphanRemoval: true)]
    private $legendes;

    #[ORM\ManyToMany(targetEntity: Plantes::class, inversedBy: "mares")]
    private $plantes;

    public function __construct()
    {
        $this->created = new \DateTime();
        $this->isActive = true;
        $this->legendes = new ArrayCollection();
        $this->plantes = new ArrayCollection();
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

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }

    public function getResume(): ?string
    {
        return $this->resume;
    }

    public function setResume(string $resume): static
    {
        $this->resume = $resume;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): static
    {
        $this->content = $content;

        return $this;
    }

    public function getImageavant(): ?string
    {
        return $this->imageavant;
    }

    public function setImageavant(?string $imageavant): static
    {
        $this->imageavant = $imageavant;

        return $this;
    }

    public function isIsActive(): ?bool
    {
        return $this->isActive;
    }

    public function setIsActive(bool $isActive): static
    {
        $this->isActive = $isActive;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): static
    {
        $this->image = $image;

        return $this;
    }

    public function getImageapres(): ?string
    {
        return $this->imageapres;
    }

    public function setImageapres(?string $imageapres): static
    {
        $this->imageapres = $imageapres;

        return $this;
    }

    public function getMarescategorie(): ?MaresCategories
    {
        return $this->marescategorie;
    }

    public function setMarescategorie(?MaresCategories $marescategorie): static
    {
        $this->marescategorie = $marescategorie;

        return $this;
    }

    /**
     * @return Collection<int, Legendes>
     */
    public function getLegendes(): Collection
    {
        return $this->legendes;
    }

    public function addLegende(Legendes $legende): static
    {
        if (!$this->legendes->contains($legende)) {
            $this->legendes->add($legende);
            $legende->setMare($this);
        }

        return $this;
    }

    public function removeLegende(Legendes $legende): static
    {
        if ($this->legendes->removeElement($legende)) {
            // set the owning side to null (unless already changed)
            if ($legende->getMare() === $this) {
                $legende->setMare(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Plantes>
     */
    public function getPlantes(): Collection
    {
        return $this->plantes;
    }

    public function addPlante(Plantes $plante): static
    {
        if (!$this->plantes->contains($plante)) {
            $this->plantes->add($plante);
        }

        return $this;
    }

    public function removePlante(Plantes $plante): static
    {
        $this->plantes->removeElement($plante);

        return $this;
    }
}
