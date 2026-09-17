# Pruebas de API REST - Restful Booker

**API Bajo Prueba:** [Restful Booker API] (https://restful-booker.herokuapp.com/apidoc/index.html)
**Herramientas Utilizadas:** Postman, Newman CLI, JavaScript (Aserciones), JSON Schema Validation
**Autor:** Ing. TIC

---

## 1. Alcance de las Pruebas 

Se diseñó una colección completa de Postman para evaluar el ciclo de vida CRUD y la seguridad del servicio web de reservas:

1. **Autenticación ('POST /auth'):** Envío de credenciales, recepción del token y almacenamiento automático en variables de entorno.
2. **Creación ('POST /booking'):** Inserción de nuevas reservas y validación de la estructura del objeto devuelto mediante JSON Schema.
3. **Consulta ('GET /booking/{id}'):** Lectura de reservas existentes y comprobación de tipos de datos.
4. **Actualización Completa ('PUT /booking/{id}'):** Modificación de campos requiriendo cabecera 'Cookie: token={{token}}'.
5. **Eliminación ('Delete /booking/{id}'):** Borrado de la reserva y validación de respuesta 'HTTP 201 Created' y posterior 'HTTP 404 Not Found'.

---

## 2. Variables de Entorno Configuradas

-'{{baseUrl}}': 'https://restful-booker.herokuapp.com'
-'{{token}}': Capturado automáticamente en el login.
-'{{booking_id}}': Guardado dinámicamente tras la creación para usarse en peticiones consecutivas.

---

## 3. Instrucciones de Ejecución Local con Newman

Para ejecutar la colección sin interfaz gráfica y generar un reporte ejecutable:


```bash
# 1. Instalar Newman y el reportero HTML
npm install -g newman newman-reporter-htmlextra

# 2. Ejecutar la colección usando el entorno configurado
newman run collections/RestfulBooker-API-Collection.postman_collection.json \
  -e environments/RestfulBooker-Staging.postman_environment.json \
  -r htmlextra --reporter-htmlextra-export reports/newman-execution-report.html
