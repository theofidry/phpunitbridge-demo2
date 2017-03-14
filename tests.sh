#!/usr/bin/env bash

PHPUNIT=$PWD/vendor/bin/phpunit
#PHPUNIT=$PWD/vendor/bin/simple-phpunit

export SYMFONY_DEPRECATIONS_HELPER="weak_vendors"

$PHPUNIT tests/AppBundle/FooTest.php

export SYMFONY_DEPRECATIONS_HELPER="0"

$PHPUNIT tests/AppBundle/FooTest.php

unset SYMFONY_DEPRECATIONS_HELPER