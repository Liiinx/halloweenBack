<?php
/**
 * Created by PhpStorm.
 * User: felix
 * Date: 30/10/18
 * Time: 16:42
 */

namespace Controller;

use Model\Adress;
use Model\AdressManager;


class AdressController extends AbstractController
{

    public function index()
    {
        $adressManager = new AdressManager($this->getPdo());
        $adresses = $adressManager->selectAll();
        //var_dump($adresses);

        header("Access-Control-Allow-Origin: *");

        header('Content-type: application/json');
        return json_encode($adresses);
        //return $this->twig->render('Item/index.html.twig', ['items' => $items]);
    }

}