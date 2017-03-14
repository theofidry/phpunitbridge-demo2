<?php

namespace Tests\AppBundle;

use AppBundle\Foo;
use AppKernel;
use PHPUnit_Framework_TestCase;

class FooTest extends PHPUnit_Framework_TestCase
{
    public function testGetDeprecatedPrivateService()
    {
        $kernel = new AppKernel('dev', true);
        $kernel->boot();

        $kernel->getContainer()->get(Foo::class);

        $kernel->shutdown();
    }
}
