<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class Contact
{
    private ?int $id = null;

    #[Assert\NotBlank(message : "Compléter le champ Nom Complet")]
    private ?string $nom = null;

    #[Assert\NotBlank(message : "Compléter le champ Téléphone")]
    private ?string $telephone = null;

    #[Assert\NotBlank(message : "Compléter le champ Email")]
    #[Assert\Email(
        message: "L'email '{{ value }}' n'est pas une adresse email valide."
    )]
    private ?string $email = null;

    #[Assert\NotBlank(message : "Compléter le champ Message")]
    private ?string $message = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }
    
    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(string $telephone): static
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): static
    {
        $this->email = $email;

        return $this;
    }

    public function getMessage(): ?string
    {
        return $this->message;
    }

    public function setMessage(string $message): static
    {
        $this->message = $message;

        return $this;
    }
}

