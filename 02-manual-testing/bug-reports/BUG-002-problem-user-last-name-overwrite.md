# [BUG-002] El campo 'Last Name' en el Checkout sobreescribe automáticamente su valor y bloquea el avance

**Estado:** Abierto
**Severidad:** Alta
**Prioridad:** Alta
**Componente:** Frontend / Formulario de Checkout
**Entorno:** Google Chrome (última versión) / Staging
**URL Afectada:** 'https://www.saucedemo.com/checkout-step-one.html'

---

## 1. Resumen
Durante el flujo de checkout con el usuario 'problem_user', al ingresar texto en el campo 'Last Name', el sistema borra la entrada del usuario y sobreescribe el valor con texto aleatorio o lo vacía al perder el foco (evento 'onBlur'). Esto impide completar el formulario y bloquea la transición a la pantalla de confirmación.

## 2. Pasos para Reproducir
1. Iniciar sesión con 'problem_user' / 'secret_sauce'.
2. Agregar cualquier producto al carrito e ir a '/cart.html'.
3. Hacer clic en **Checkout**.
4. Ingresar 'Carlos' en el campo **First Name**.
5. Ingresar 'Mendoza' en el campo **Last Name**.
6. Cambiar el foco al campo **Zip/Postal Code**.

## 3. Comportamiento Esperado
El campo 'Last Name' debe conservar la cadena '"Mendoza"' ingresada por el usuario.

## 4. Comportamiento Obtenido
El campo 'Last Name' borra el contenido o modifica los caracteres automáticamente, impidiendo enviar el formulario y generando la alerta de validación *"Error: Last Name is required"*.

## 5. Evidencia Técnica 
- **Análisis de Eventos (Chrome Devtools Console):**
  ```javascript
  // Disparo no controlado de evento onChange/onBlur en el input #last-name
  document.getElementById('last-name').addEventListener('blur', (e) => {
      e.target.value = ""; // Mutación directa del estado del input
  });
