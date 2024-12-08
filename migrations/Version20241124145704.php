<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20241124145704 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE plantes ADD plantescategorie_id INT NOT NULL');
        $this->addSql('ALTER TABLE plantes ADD CONSTRAINT FK_F3E76151F03451E1 FOREIGN KEY (plantescategorie_id) REFERENCES plantescategorie (id)');
        $this->addSql('CREATE INDEX IDX_F3E76151F03451E1 ON plantes (plantescategorie_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE plantes DROP FOREIGN KEY FK_F3E76151F03451E1');
        $this->addSql('DROP INDEX IDX_F3E76151F03451E1 ON plantes');
        $this->addSql('ALTER TABLE plantes DROP plantescategorie_id');
    }
}
