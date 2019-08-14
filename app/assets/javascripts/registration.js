$(document).ready(function() {
	$('#registerSend').on('click', function(){
		console.log("ACAAAA...");
		$('#regForm').validate({
			rules: {
				last_name: { required: true },
				first_name: { required: true, },
				dni: { required: true},
				email: { required: true, email: true },
				country: { required: true },
				province: { required: true },
				city: { required: true },
				Radio: { required: true }
			},
			messages: {
				last_name: { required: 'Su apellido es requerido.',  },
				first_name: { required: 'Su nombre es requierido.', },
				dni: { required: 'Su numero de documento es requerido.' },
				email: { required: 'Su email es requerido.', email: 'Ingrese una dirección de correo valida.' },
				country: { required: 'Su pais es necesario.' },
				province: { required: 'Su provincia es necesario.'},
				city: { required: 'Su ciudad es necesario.' },
				Radio: { required: 'El curso que va a tomar es necesario.' }
			},
			groups: { course: "registerRadio" },
			errorPlacement: function(error, element){
				if (element.attr('name') == "registerRadio") {
					error.insertAfter('#errorCourse');
				} else {
					error.insertAfter(element)
				}
			},
			submitHandler: function(form) {
				console.log('submitHandler...');
				$("#regForm").submit(function(e) {
					var postData = $(this).serializeArray();
					console.log('triggering my own push...');
					console.log(postData);

					$.ajax({
						url: "http://localhost:3000/registration",
						type: "POST",
						data: postData,
						success: function(data, textStatus, jqXHR) {
						  console.log("success... ", data);
						},
						error: function(jqXHR, textStatus, errorThrown) {
						  console.log("error... ", textStatus);
						}
					});

					e.preventDefault(); // STOP default action
					e.unbind(); //unbind. to stop multiple form submit.
				});
			}
		});
	});
});
