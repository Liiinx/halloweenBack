<?php
/**
 * Created by PhpStorm.
 * User: felix
 * Date: 30/10/18
 * Time: 17:14
 */

namespace Model;


class BonbonManager extends AbstractManager
{


    const TABLE = 'bonbonslist';

    /**
     *  Initializes this class.
     */
    public function __construct(\PDO $pdo)
    {
        parent::__construct(self::TABLE, $pdo);
    }
}