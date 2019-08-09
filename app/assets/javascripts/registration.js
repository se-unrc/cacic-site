$( document ).ready(function() {
	$('#registerSend').on('click', function(){
		$('#regForm').validate
		({
			rules:
			{
				registerSurname:
				{
				 required: true,
				},
				registerName:
				{
					required: true,
				},
				registerDni:
				{
					required: true
				},
				registerEmail:
				{
					required: true,
					email: true
				},
				registerPais:
				{
					required: true
				},
				registerProvincia:
				{
					required: true
				},
				registerCiudad:
				{
					required: true
				},
				registerRadio:
				{
					required: true
				}
			},
			messages:
			{
				registerSurname:
				{
					required: 'Su apellido es requerido.', 
				},
				registerName: {
					required: 'Su nombre es requierido.',
				},
				registerDni:
				{
					required: 'Su numero de documento es requerido.'
				},
				registerEmail:
				{
					required: 'Su email es requerido.',
					email: 'Ingrese una dirección de correo valida.'
				},
				registerPais:
				{
					required: 'Su pais es necesario.'
				},
				registerProvincia:
				{
					required: 'Su provincia es necesario.'
				},
				registerCiudad:
				{
					required: 'Su ciudad es necesario.'
				},
				registerRadio:
				{
					required: 'El curso que va a tomar es necesario.'
				}
			},
			groups:
			{
				course: "registerRadio"
			},
			errorPlacement: function(error, element){
				if (element.attr('name') == "registerRadio") {
				error.insertAfter('#errorCourse');
				}
				else{
					error.insertAfter(element)
				}

			}
		});
	});
});