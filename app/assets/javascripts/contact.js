	/*MAPS*/
var map;
function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
	center: {lat: -33.110619, lng: -64.299910},
	zoom: 15
	});
}


$(document).ready(function(){

	/*VALIDATIONS*/ 

	$('#formSend').on('click', function(){
		$('#formContact').validate
		({

			rules:
			{
				formName:
				{
					required: true
				},
				formSurname:
				{
					required: true
				},
				formEmail:
				{
					required: true,
					email: true
				},
				formMessage:
				{
					required: true,
					
				}
			},
			messages:
			{
				formName:
				{
					required: 'Su nombre es requerido.'
				},
				formSurname:
				{
					required: 'Su apellido es requerido.'
				},
				formEmail:
				{
					required: 'Su Email es requerido.',
					email: 'Ingrese una direccion de Email.'
				},
				formMessage:
				{
					required: 'Su mensaje es requerido.'
				}
			}

		});
	});
});