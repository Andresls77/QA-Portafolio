# Matriz de Casos de Prueba - SauceDemo

**Aplicación:** https://www.saucedemo.com/
**Módulo:** Autenticación, Carrito, Checkout

---

| ID Caso | Módulo | Técnica ISTQB | Descripción | Pasos / Datos Entrada | Resultado Esperado | Prioridad|
|---|---|---|---|---|---|---|
| **TC-SAUCE-001** | Autenticación | Partición de Equivalencia | Login exitoso con credenciales válidas | 1. Ir a saucedemo.com<br>2. Usuario: 'standard_user'<br>3. Password: 'secret_sauce'<br>4. Clic en login | Redirección exitosa a la pagina '/inventory.html'. | Crítica |
| **TC-SAUCE-002** | Autenticación | Pruebas Negativas | Intentar login con usuario bloqueado | 1. Usuario: 'Locked_out_user'<br>2. Password:. 'secret_sauce'<br>3. Clic en Login | Acceso Denegado. Mensaje de error: "Epic sadface: Sorry, this user has been locked out." | Alta |
| **TC-SAUCE-003** | Carrito | Valores Límite (BVA) | Agregar el primer producto al carrito (Límite 0 a 1) | 1. Iniciar Sesión<br>2. Hacer clic en "Add to cart" en "Sauce Labs Backpack" | El boton cambia a "Remove" y el badge del carrito muestra "1" | Alta |
| **TC-SAUCE-004** | Checkout | Partición de Equivalencia | Validar campo First Name obligatorio | 1. Ir al Carrito<br>2. Dejar First Name vacío<br>3. Llenar Last Name: "Perez", Zip: "070150"<br>4. Clic en continue | Se bloquea el avance. Alerta: "Error: First Name is required". | Alta |
| **TC-SAUCE-005** | Checkout | Cálculo Financiero | Cálculo exacto de total e impuestos (Tax 8%) | 1. Agregar producto de $29.99<br>2. Completar datos de checkout<br>3. Ver resumen en '/checkout-step-two.html' | Item total: $29.99<br>Tax (8%): $2.40<br>Total final: $32.39. | Crítica |
