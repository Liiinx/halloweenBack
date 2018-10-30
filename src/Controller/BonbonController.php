<?php
/**
 * Created by PhpStorm.
 * User: felix
 * Date: 30/10/18
 * Time: 16:42
 */

namespace Controller;

//use Model\Adress;
use Model\BonbonManager;


class BonbonController extends AbstractController
{

    public function allBonbon()
    {
        $bonbonManager = new BonbonManager($this->getPdo());
        $bonbons = $bonbonManager->selectAll();
        //var_dump($adresses);

        header("Access-Control-Allow-Origin: *");
        header('Content-type: application/json');
        return json_encode($bonbons);
        //return $this->twig->render('Item/index.html.twig', ['items' => $items]);
    }

}