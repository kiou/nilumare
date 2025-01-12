<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20250112160628 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE mares_plantes (mares_id INT NOT NULL, plantes_id INT NOT NULL, INDEX IDX_4F7F5896F4BF6AF5 (mares_id), INDEX IDX_4F7F589649B7AC79 (plantes_id), PRIMARY KEY(mares_id, plantes_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE mares_plantes ADD CONSTRAINT FK_4F7F5896F4BF6AF5 FOREIGN KEY (mares_id) REFERENCES mares (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE mares_plantes ADD CONSTRAINT FK_4F7F589649B7AC79 FOREIGN KEY (plantes_id) REFERENCES plantes (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE mares_plantes DROP FOREIGN KEY FK_4F7F5896F4BF6AF5');
        $this->addSql('ALTER TABLE mares_plantes DROP FOREIGN KEY FK_4F7F589649B7AC79');
        $this->addSql('DROP TABLE mares_plantes');
    }
}
