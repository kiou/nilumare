<?php

namespace App\Entity;

use Imagine\Image\Box;
use App\Entity\Mares;
use Imagine\Gd\Imagine;
use App\Utilities\Upload;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\LegendesRepository;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\HttpFoundation\File\UploadedFile;

#[ORM\Table(name : "legende")]
#[ORM\Entity(repositoryClass: LegendesRepository::class)]
class Legendes
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type : "integer")]
    private ?int $id = null;

    #[ORM\Column(type : "datetimetz")]
    private $created;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ titre")]
    private ?string $title = null;

    #[ORM\Column(type: 'string', length: 255)]
    private $url;

    #[ORM\ManyToOne(targetEntity: Mares::class, inversedBy: 'legendes')]
    #[ORM\JoinColumn(nullable: false)]
    private $mare;

    private ?File $imageFile = null;

    #[ORM\Column(length: 255)]
    private ?string $resume = null;

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

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

        return $this;
    }

    public function __toString(): string
    {
        return $this->title ?: 'Nouvelle légende';
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): static
    {
        $this->url = $url;

        return $this;
    }

    public function setImageFile(?File $imageFile = null): void
    {
        $this->imageFile = $imageFile;
    }

    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }

    
    public function upload(): void
    {
        if ($this->imageFile instanceof UploadedFile) {
            $upload = new Upload();
            $timestamp = time();

            $image = $upload->createName(
                $this->imageFile->getClientOriginalName(),
                $this->getUploadRootDir().'/',
                $timestamp
            );

            $imagine = new Imagine();

            $size = new Box(170,170);
            $imagine->open($this->imageFile)
                    ->thumbnail($size, 'outbound')
                    ->save($this->getUploadRootDir().'miniature/'.$image);

            $this->url = $image;
        }
    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../public/img/';
    }

    public function getMare(): ?Mares
    {
        return $this->mare;
    }

    public function setMare(?Mares $mare): static
    {
        $this->mare = $mare;

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
}
