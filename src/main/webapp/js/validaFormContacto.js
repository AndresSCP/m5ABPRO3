/**
 * Creado: José Zamora
 * Fecha: 28/03/2023
 * Descripción: Archivo js que contiene las validaciones en la pagina de Contactos
 */

$("#formContacto").validate({
  rules: {
    nombre: {
      required: true,
      minlength: 10,
      maxlength: 50
    },
    email: {
      required: true,
      minlength: 6,
      maxlength: 50,
      email: true
    },
    asunto: {
      required: true,
      minlength: 15,
      maxlength: 50
    },
    mensaje: {
      required: true,
      minlength: 20,
      maxlength: 300
    }
  },
  messages: {
    nombre: {
			required:"Por favor, ingresa su nombre de Contacto.",
			minlength:"Por favor, completa este campo con un mínimo de 10 caracteres.",
			maxlength: "Por favor, completa este campo con un máximo de 50 caracteres."
     }, 
    email: {
		    required: "Por favor, ingresa tu correo electrónico.",
		    email: "Por favor, ingresa un correo electrónico válido.",
		    minlength:"Por favor, completa este campo con un mínimo de 6 caracteres.",
		    maxlength: "Por favor, ingresa un correo electrónico con un máximo de 100 caracteres."
    },
    asunto: {
			required:"Por favor, ingresa un asunto con un máximo de 50 caracteres.",
			minlength:"Por favor, completa este campo con un mínimo de 15 caracteres.",
            maxlength: "Por favor, ingresa un asunto con un máximo de 50 caracteres."
    		},
    mensaje:{
			required:"Por favor, ingresa un mensaje con un máximo de 300 caracteres.",
			minlength:"Por favor, completa este campo con un mínimo de 20 caracteres.",
            maxlength: "Por favor, ingresa un asunto con un máximo de 300 caracteres."
	}
  }
});

