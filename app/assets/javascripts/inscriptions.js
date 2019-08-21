$(document).ready(function() {
	$("#regForm").submit(function(e) { 
	  if ($("#first_name").val() === "") {
	    alert("Su nombre es requerido.");
			e.preventDefault();
			return false
	  }

	  if ($("#last_name").val() === "") {
	    alert("Su apellido es requerido");
			e.preventDefault();
			return false
	  }

	  if ($("#dni").val() === "") {
	    alert("Su numero de documento es requerido");
			e.preventDefault();
			return false
	  }

	  if ($("#email").val() === "") {
	    alert("Su email es requerido. Ingrese una dirección de correo valida.");
			e.preventDefault();
			return false
	  }

	  if ($('input[type=radio]:checked').length === 0) {
	  	alert("Tiene que elegir un curso");
			e.unbind();
			e.preventDefault();
			return false	
	  }

	  // send data to our server
		$.ajax({
			url: "https://cacic2019.exa.unrc.edu.ar/registration",
			type: "POST",
			data: $(this).serializeArray(),
			success: function(data, textStatus, jqXHR) {
			  console.log("success... ", data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
			  console.log("error... ", textStatus);
			}
		});
	})
});
