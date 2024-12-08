<?php

namespace App\Twig;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;

class CustomTwigExtension extends AbstractExtension
{
    public function getFilters(): array
    {
        return [
            new TwigFilter('truncate', [$this, 'truncate']),
        ];
    }

    public function truncate(string $value, int $length, string $suffix = '...'): string
    {
        return mb_strlen($value) > $length ? mb_substr($value, 0, $length) . $suffix : $value;
    }
}
