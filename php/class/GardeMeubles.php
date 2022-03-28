<?php

    class GardeMeuble {
        // Connection
        private $conn;
        // Table
        private $db_table = "gardes_meubles";

        //Columns
        public $id;
        public $Nom;
        public $Rue;
        public $CodePostale;
        public $Ville;
        public $ComplementAdresse;
        public $Telephone;
        public $Horaires;

        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }

        // GET ALL
        public function getGardes(){
            $sql = "SELECT * FROM " . $this->db_table . "";
            $resultat = $this->conn->prepare($sql);
            $resultat->execute();
            return $resultat;
        }
    }


?>