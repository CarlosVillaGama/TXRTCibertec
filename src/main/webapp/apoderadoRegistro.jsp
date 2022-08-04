
<button type="button" class="btn btn-primary" data-bs-toggle="modal"
	data-bs-target="#miModal">Activar Modal</button>



<div class="modal fade" tabindex="-1" id="miModal">
	<div class="modal-dialog ">
		<div class="modal-content ">
			<div class="modal-header  ">
				<h5 class="modal-title ">Registro Apoderado</h5>

				<span aria-hidden="true"></span>
				
			</div>
			<div class="modal-body p-4">

				<form action="ApoCrud" method="post">

<%--




					<div class="form-group mt-3">
						<label for="inputDescripcion">CÓDIGO</label> <input type="text"
							class="form-control" id="inputDescripcion"
							placeholder="Ingrese Codigo " name="codApo" required>
					</div>
					
	 --%>				
					<div class="form-group mt-3">
						<label for="inputDescripcion">DESCRIPCIÓN</label> <input type="text"
							class="form-control" id="inputDescripcion"
							placeholder="Ingrese una descripción " name="desApo" required>
					</div>
					
					
					
					<div class="form-group mt-3 ">
						<label for="inputDescripcion">NOMBRES</label> <input type="text"
							class="form-control" id="inputDescripcion"
							placeholder="Ingrese nombre " name="nomApo" required>
					</div>

					<div class="form-group mt-3">
						<label for="inputDescripcion">APELLIDOS</label> <input type="text"
							class="form-control" id="inputDescripcion"
							placeholder="Ingrese apellido" name="apeApo" required>
					</div>


					<div class="form-group mt-3">
						<label for="inputDescripcion">DNI</label> <input type="number"
							class="form-control" id="inputDescripcion"
							placeholder="Ingrese el dni" name="dniApo" required>
					</div>

					<div class="form-group mt-3">
						<label for="inputDescripcion">TELEFONO</label> <input
							type="number" class="form-control" id="inputDescripcion"
							placeholder="ingrese el telefono" name="telApo" required>
					</div>

					<div class="form-group mt-3">
						<label for="inputDescripcion">DOMICILIO</label> <input type="text"
							class="form-control" id="inputDescripcion" placeholder="Ingrese un domicilio"
							name="domApo" required>
					</div>

					<div class="d-grid gap-2">
						<button type="submit" class="btn btn-primary mt-3 btn-lg"
							name="btnAction" value="regApo">Registrar</button>
					</div>

				</form>
				
			</div>

		</div>
	</div>
</div>














