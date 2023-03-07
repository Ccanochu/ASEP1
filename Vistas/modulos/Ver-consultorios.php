<?php

if($_SESSION["rol"] != "Paciente"){

	echo '<script>

	window.location = "inicio";
	</script>';

	return;

}


?>

<div class="content-wrapper">
	
	<section class="content-header">
		
		<h1>Elija un Consultorio:</h1>

	</section>

	<section class="content">
		
		<div class="box">
			
            <div class="box-body">

                <?php

                    $columna = null;
                    $valor = null;

                    $resultado = ConsultoriosC::VerConsultoriosC($columna, $valor);

                    foreach ($resultado as $key => $value){

                        echo '<div class="col-lg-3 col-xs-6">
                                <div class="small-box bg-aqua">
                                    <div class="inner">
                                        <h3>'.$value["nombre"].'</h3>';

                                        $columna = "id_consultorio";
                                        $valor = $value["id"];
                                        '<p>'.$valor.' </P>';

                                        $doctores = DoctoresC::VerDoctoresC($columna, $valor);
                                        

                                        foreach ($doctores as $key => $value){
                                            

                                            echo '<a href="#" onclick="verConsultorio('.$value["id"].')" style="color: black;"><p>'.$value["id"].$value["apellido"].' '.$value["nombre"].'</p></a>';
                                        
                                        }

    
            
                                    echo '</div>
                                </div>
                            </div>';

                    }


                ?>
			
                

            </div>

		</div>

	</section>

</div>

<script>
 function verConsultorio(iddcotor){
    window.location.href = 'Doctor?'+iddcotor;
 }
</script>