<?php
/**
 * Created by PhpStorm.
 * User: felix
 * Date: 30/10/18
 * Time: 17:14
 */

namespace Model;


class QuestionManager extends AbstractManager
{


    const TABLE = 'questions';

    /**
     *  Initializes this class.
     */
    public function __construct(\PDO $pdo)
    {
        parent::__construct(self::TABLE, $pdo);
    }
}