Feature: Crear cuenta

	Para crear una cuenta el usuario debe registrarse en la aplicación, lo cual consiste en llenar los campos de nombre, apellido, correo, contraseña y confirmación de contraseña y un botón de envio. Después del registro el usuario es logueado en la app y se adjudicará una cuenta sobre la cual podrá realizar operaciones.

	Scenario: El usuario se registra exitosamente desde el formulario de registro
      Given  Soy un invitado
      When  Lleno el formulario de registro con información válida
      Then  Deberia estar registrado en la aplicación
      And Deberia estar logueado
