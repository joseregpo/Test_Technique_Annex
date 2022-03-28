<?php 
    class Database {
        private $dbhost = '127.0.0.1:3306';
        private $dbuser = 'root';
        private $dbpass = '';
        private $dbname = 'test_technique_annexx';
        public $conn;

        public function getConnection(){
            $this->conn = null;
            try{
                $this->conn = new PDO("mysql:host=" . $this->dbhost . ";dbname=" . $this->dbname, $this->dbuser, $this->dbpass);
                $this->conn->exec("set names utf8");
            }catch(PDOException $exception){
                echo "Database could not be connected: " . $exception->getMessage();
            }
            return $this->conn;
        }
    }  
?>


