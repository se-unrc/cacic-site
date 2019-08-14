// $(document).ready(function() {
// 	$("#regForm").submit(function(e) {
// 		$('#regForm').validate({
// 			debug: true,
// 			rules: {
// 				"registration[last_name]": { required: true },
// 				"registration[first_name]": { required: true, },
// 				"registration[dni]": { required: true},
// 				"registration[email]": { required: true, email: true },
// 				"registration[country]": { required: true },
// 				"registration[province]": { required: true },
// 				"registration[city]": { required: true },
// 				"registration[radio]": { required: true }
// 			},
// 			messages: {
// 				"registration[last_name]": { required: 'Su apellido es requerido.',  },
// 				"registration[first_name]": { required: 'Su nombre es requierido.', },
// 				"registration[dni]": { required: 'Su numero de documento es requerido.' },
// 				"registration[email]": { required: 'Su email es requerido.', email: 'Ingrese una dirección de correo valida.' },
// 				"registration[country]": { required: 'Su pais es requerido.' },
// 				"registration[province]": { required: 'Su provincia es requerido.'},
// 				"registration[city]": { required: 'Su ciudad es requerido.' },
// 				"registration[radio]": { required: 'El curso que va a tomar es requerido.' }
// 			},
// 			groups: { course: "registerRadio" },
// 			errorPlacement: function(error, element){
// 				if (element.attr('name') == "registerRadio") {
// 					error.insertAfter('#errorCourse');
// 				} else {
// 					error.insertAfter(element)
// 				}
// 			},
// 			invalidHandler: function(event, validator) {
// 				console.log("invalidHandler...");
// 				event.preventDefault(); // STOP default action
// 			},
// 			submitHandler: function(form) {
// 				console.log('submitHandler...');
// 				console.log($("#regForm").valid());

// 				if ($("#regForm").valid()) {
					
// 					var postData = $(this).serializeArray();
// 					console.log('triggering my own push...');
// 					console.log(postData);

// 					$.ajax({
// 						url: "http://localhost:3000/registration",
// 						type: "POST",
// 						data: postData,
// 						success: function(data, textStatus, jqXHR) {
// 						  console.log("success... ", data);
// 						},
// 						error: function(jqXHR, textStatus, errorThrown) {
// 						  console.log("error... ", textStatus);
// 						}
// 					});
// 					// e.preventDefault(); // STOP default action
// 					e.unbind(); //unbind. to stop multiple form submit.
// 				}
// 			}
// 		});
// 	});
// });

$(document).ready(function() {
	$("#regForm").submit(function(e) {
		
	})
});
