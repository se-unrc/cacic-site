$( document ).ready(function() {
	$('#register-send').on('click', function(){
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
				}
			}
		});
	});
});

