<?php 
require_once('../database/Database.php');


class Logs extends Database  {

    public function addLog($data,$quantity,$item){
        date_default_timezone_set('Asia/Manila');
        $userName = $_SESSION['user'];
        $date = date("Y-m-d");
        $desciption = $data;

        $sql = "INSERT INTO logs(name,date,item,quantity,activity) VALUES(?,?,?,?,?);";
        $result = $this->insertRow($sql,[$userName,$date,$item,$quantity,$data]);
        return $result;
    }

    public function getAllLogs(){
        $sql = "SELECT * FROM logs";
        return $this->getRows($sql);
    }

   public function sort($f,$t){
    $sql = "SELECT * FROM logs WHERE date >= '$f' AND date <= '$t';";
    return $this->getRows($sql);
   }
}

$log = new Logs();