<?php
/**
 * Created by PhpStorm.
 * User: felix
 * Date: 30/10/18
 * Time: 17:11
 */

namespace Controller;

use Model\QuestionManager;


class QuestionController extends AbstractController
{
    public function question()
    {
        $questionManager = new QuestionManager($this->getPdo());
        $questions = $questionManager->selectAll();
        //var_dump($adresses);

        header("Access-Control-Allow-Origin: *");


        header('Content-type: application/json');
        return json_encode($questions);
        //return $this->twig->render('Item/index.html.twig', ['items' => $items]);
    }
}