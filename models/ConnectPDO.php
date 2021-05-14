<?php
class Conexion
{
	static public function conectar()
	{
		$link = new PDO(
			"mysql:host=localhost;dbname=apsi-web",
			"apsi-admin",
			"d_&Eu()VD#b74!("
		);
		$link->exec("set names utf8");
		return $link;
	}
}
