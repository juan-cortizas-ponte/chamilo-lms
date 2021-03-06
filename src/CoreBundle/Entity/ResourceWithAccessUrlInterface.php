<?php

declare(strict_types=1);

/* For licensing terms, see /license.txt */

namespace Chamilo\CoreBundle\Entity;

use Doctrine\Common\Collections\Collection;

interface ResourceWithAccessUrlInterface
{
    public function addAccessUrl(AccessUrl $url);

    /**
     * @return Collection|EntityAccessUrlInterface[]
     */
    public function getUrls();
}
