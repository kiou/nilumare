<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250105172825 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE planteimage (id INT AUTO_INCREMENT NOT NULL, plante_id INT NOT NULL, url VARCHAR(255) NOT NULL, created DATETIME NOT NULL, INDEX IDX_9306B91C177B16E8 (plante_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE planteimage ADD CONSTRAINT FK_9306B91C177B16E8 FOREIGN KEY (plante_id) REFERENCES plantes (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE planteimage DROP FOREIGN KEY FK_9306B91C177B16E8');
        $this->addSql('DROP TABLE planteimage');
    }
}
