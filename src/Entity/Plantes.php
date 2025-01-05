<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use App\Entity\PlantesCategorie;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\PlantesRepository;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Table(name : "plantes")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: PlantesRepository::class)]
class Plantes
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

    #[ORM\OneToMany(targetEntity: PlanteImage::class, mappedBy: 'plante', cascade: ['persist', 'remove'], orphanRemoval: true)]
    private $planteimages;

    #[ORM\Column(name : "is_active", type : "boolean")]
    private $isActive;

    #[ORM\Column(name : "stock", type : "boolean")]
    private $stock;

    #[ORM\ManyToOne(targetEntity: PlantesCategorie::class, inversedBy: 'plantes')]
    #[ORM\JoinColumn(nullable: false)]
    #[Assert\NotBlank(message : "Compléter le champ catégorie")]
    private $plantescategorie;

    public function __construct()
    {
        $this->created = new \DateTime();
        $this->isActive = true;
        $this->stock = true;
        $this->planteimages = new ArrayCollection();
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

    public function getPlantescategorie(): ?PlantesCategorie
    {
        return $this->plantescategorie;
    }

    public function setPlantescategorie(?PlantesCategorie $plantescategorie): static
    {
        $this->plantescategorie = $plantescategorie;

        return $this;
    }

    /**
     * @return Collection<int, PlanteImage>
     */
    public function getPlanteimages(): Collection
    {
        return $this->planteimages;
    }

    public function addPlanteimage(PlanteImage $planteimage): static
    {
        if (!$this->planteimages->contains($planteimage)) {
            $this->planteimages->add($planteimage);
            $planteimage->setPlante($this);
        }

        return $this;
    }

    public function removePlanteimage(PlanteImage $planteimage): static
    {
        if ($this->planteimages->removeElement($planteimage)) {
            // set the owning side to null (unless already changed)
            if ($planteimage->getPlante() === $this) {
                $planteimage->setPlante(null);
            }
        }

        return $this;
    }

    public function isStock(): ?bool
    {
        return $this->stock;
    }

    public function setStock(bool $stock): static
    {
        $this->stock = $stock;

        return $this;
    }
}
