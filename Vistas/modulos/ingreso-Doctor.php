<?php
error_reporting(0);
?>
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Clínica Médica</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Ingresar como Doctor</p>

    <form method="post">

      <div class="form-group has-feedback">

        <input type="text" class="form-control" name="usuario-Ing" placeholder="Usuario" autocomplete="off">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>

      </div>

      <div class="form-group has-feedback">

        <input type="password" class="form-control" name="clave-Ing" placeholder="Contraseña" autocomplete="off">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>

      </div>

      <div class="row">
       
         <!-- /.col -->
         <div class="row">
          <div class="col-xs-12">
            <div class="col-xs-6">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Ingresar</button>
            </div>
            <div class="col-xs-6">
              <button type="button" class="btn btn-primary btn-block btn-flat" id="btnregresar">Regresar</button>
            </div>
          </div>
        </div>
        <!-- /.col -->
      </div>

      <?php

      $ingreso = new DoctoresC();
      $ingreso -> IngresarDoctorC();

      ?>
    </form>

  </div>
  <!-- /.login-box-body -->
</div>
<script>
  const btnregresar = document.querySelector('#btnregresar')
  btnregresar.addEventListener('click', async (e) => {

    window.location.href = "seleccionar";
  })
</script>