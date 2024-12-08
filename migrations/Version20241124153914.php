<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20241124153914 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE marescategorie (id INT AUTO_INCREMENT NOT NULL, created DATETIME NOT NULL, changed DATETIME DEFAULT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE mares ADD marescategorie_id INT NOT NULL');
        $this->addSql('ALTER TABLE mares ADD CONSTRAINT FK_A2E9D7DD5927A2C6 FOREIGN KEY (marescategorie_id) REFERENCES marescategorie (id)');
        $this->addSql('CREATE INDEX IDX_A2E9D7DD5927A2C6 ON mares (marescategorie_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE mares DROP FOREIGN KEY FK_A2E9D7DD5927A2C6');
        $this->addSql('DROP TABLE marescategorie');
        $this->addSql('DROP INDEX IDX_A2E9D7DD5927A2C6 ON mares');
        $this->addSql('ALTER TABLE mares DROP marescategorie_id');
    }
}
