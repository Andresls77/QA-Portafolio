Feature: Registro de Usuario en el Sistema

  Escenario: Registro exitoso con datos validos obligatorios
    Given que el usuario no autenticado se encuentre en la página de registro.
    When ingresa "Carlos" en el campo Nombre
    And ingresa "Mendoza" en el campo Apellido
    And ingresa un correo único y válido 
    And hace clic en "Registrar"
    Then el sistema debe guardar el usuario en la base de datos
    And redirigir al panel principal con el mensaje "Bienvenido"
    
