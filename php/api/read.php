<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once '../config/Database.php';
    include_once '../class/GardeMeubles.php';

    $database = new Database();
    $db = $database->getConnection();
    $items = new GardeMeuble($db);

    $url = 'http://test_technique_annexx.test/php/api/read.php?name=Garde%Meubles%Toulouse%Sud';
      
    $name = parse_url($url);

    $resultat = $items->getGardes($name);
    $total = $resultat->rowCount();

    if($total>0){
        $GardesArray = array();
        $GardesArray["body"] = array();
        $GardesArray["itemCount"] = $total;
        while ($row = $resultat->fetch(PDO::FETCH_ASSOC)){
            extract($row);
            $g = array(
                "id" => $id,
                "Nom" => $Nom,
                "Rue" => $Rue,
                "CodePostale" => $CodePostale,
                "Ville" => $Ville,
                "ComplementAdresse" => $ComplementAdresse,
                "Telephone" => $Telephone,
                "Horaires" => $Horaires
            );
            array_push($GardesArray["body"], $g);
        }
        echo json_encode($GardesArray);
    }
    else{
        http_response_code(404);
        echo json_encode(
            array("message" => "No record found.")
        );
    }
?>