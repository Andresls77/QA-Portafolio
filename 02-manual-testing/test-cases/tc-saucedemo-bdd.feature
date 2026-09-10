Característica: Flujo de Compras y Checkout en SuceDemo
  Como usuario cliente de SauceDemo
  Quiero seleccionar productos y completar el formulario de compra
  Para adquirir los artículos de forma correcta 

  @smoke @login
  Escenario: Inicio de sesión exitoso con usuario estándar
    Dado que el usuario navega a la página de inicio "https://www.saucedemo.com/"
    Cuando ingresa el usuario "standard_user" y la contraseña "secret_sauce"
    Y presiona el botón "Login"
    Entonces debe ser redirigido al catálogo de productos "/inventory.html"
    Y debe visualizar el título de sección "Products"

    @checkout @negative
    Escenario: Intento de checkout sin ingresar el Código Postal
      Dado que el usuario "standard_user" ha agregado un producto al carrito
      Y se encuentra en la pantalla de información de checkout "/checkout-step-on.html"
      Cuando ingresa "Carlos" en el campo First Name
      Y ingresa "Mendoza" en el campo Last Name
      Y deja en el campo Zip/Postal Code vacío
      Y presiona el botón "Continue"
      Entonces el sistema debe permanecer en la mima página
      Y debe mostrar el mensaje de error "Error: Postal Code is required"
      
