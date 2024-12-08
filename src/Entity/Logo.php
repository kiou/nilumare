<?php

namespace App\Entity;

use App\Repository\LogoRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Table(name : "logo")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: LogoRepository::class)]
class Logo
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type : "integer")]
    private ?int $id = null;

    #[ORM\Column(type : "datetimetz")]
    private $created;

    #[ORM\Column(type : "datetimetz", nullable:true)]
    private $changed;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $logoheader;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $logofooter;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $facebook;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $instagram;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $linkedin;

    public function __construct()
    {
        $this->created = new \DateTime();
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

    public function getLogoheader(): ?string
    {
        return $this->logoheader;
    }

    public function setLogoheader(?string $logoheader): static
    {
        $this->logoheader = $logoheader;

        return $this;
    }

    public function getLogofooter(): ?string
    {
        return $this->logofooter;
    }

    public function setLogofooter(?string $logofooter): static
    {
        $this->logofooter = $logofooter;

        return $this;
    }

    public function getFacebook(): ?string
    {
        return $this->facebook;
    }

    public function setFacebook(?string $facebook): static
    {
        $this->facebook = $facebook;

        return $this;
    }

    public function getInstagram(): ?string
    {
        return $this->instagram;
    }

    public function setInstagram(?string $instagram): static
    {
        $this->instagram = $instagram;

        return $this;
    }

    public function getLinkedin(): ?string
    {
        return $this->linkedin;
    }

    public function setLinkedin(?string $linkedin): static
    {
        $this->linkedin = $linkedin;

        return $this;
    }
}
