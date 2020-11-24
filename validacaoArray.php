<?php 

$variavel = 
[
	"nome" 		=> "Pedro Luiz",
	"endereco"	=> "Av Taquare",
	"telefone"	=> "(51)5151-5151"
];

if(is_array($variavel))
	if(array_key_exists('endereco', $variavel))
		echo "È um array ea key endereço existe";

 ?>
