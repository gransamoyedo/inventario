<?php
require_once ("./config/db.php");//Contiene las variables de configuracion para conectar a la base de datos
require_once ("./config/conexion.php");//Contiene funcion que conecta a la base de datos

	header('Content-type:application/xls');
	header('Content-Disposition: attachment; filename=products.xls');



	 $query="SELECT * FROM `products` inner JOIN categorias on products.id_categoria = categorias.id_categoria";
	$result=mysqli_query($con, $query);

?>

<table border="1">
	<tr >
		<th style="background-color:red;">ID</th>
		<th style="background-color:red;">Codigo</th>
		<th style="background-color:red;" >Nombre</th>
		<th style="background-color:red;">Stock minimo</th>
		<th style="background-color:red;">Stock Pico Truncado</th>
		<th style="background-color:red;">Stock Las Heras </th>
		<th style="background-color:red;">Caleta Olivia </th>
    <th style="background-color:red;">categoria</th>
	</tr>
	<?php
		while ($row=mysqli_fetch_assoc($result)) {
			?>
				<tr>
					<td><?php echo $row['id_producto']; ?></td>
					<td><?php echo $row['codigo_producto']; ?></td>
					<td><?php echo $row['nombre_producto']; ?></td>
					<td><?php echo $row['minimo']; ?></td>
					<td><?php echo $row['sttruncado']; ?></td>
					<td><?php echo $row['stheras']; ?></td>
					<td><?php echo $row['stcaleta']; ?></td>
					<td><?php echo $row['nombre_categoria']; ?></td>
				</tr>


			<?php
		}

	?>
</table>
