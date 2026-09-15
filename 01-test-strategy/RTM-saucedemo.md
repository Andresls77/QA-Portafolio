# Matriz de Trazabilidad de Requerimientos (RTM) - SauceDemo

**Proyecto:** SauceDemo E-Comerce
**Objetivo:** Mapear los requerimientos funcionales del sistema con sus respectivos casos de prueba y su estado de ejecución.

---

|ID Requerimiento | Descripción del Requerimiento | ID Caso de Prueba | Tipo de Prueba | Estado de Ejecución | Defecto Asociado |
|---|---|---|---|---|---|
| **REQ-AUTH-01** | El sistema debe permitir el acceso solo a usuarios con credenciales válidas. | 'TC-SAUCE-001' | Funcional (EP) | **PASSED** | N/A |
| **REQ-AUTH-02** | El sistema debe bloquear el acceso a usuarios con estado 'locked_out'. | 'TC-SAUCE-002' | Negativa | **PASSED** | N/A |
| **REQ-CART-01** | El contador del carrito debe incrementarse dinámicamente al agregar productos. | 'TC-SAUCE-003' | Límite (BVA) | **PASSED** | N/A |
| **REQ-CHK-01** | Los campos First Name, Last Name y Zip Code son obligatorios en el checkout. | 'TC-SAUCE-004' | Validación (EP) | **PASSED** | N/A |
| **REQ-CHK-02** | El sistema debe calcular el impuesto (Tax) exacto del 8% sobre el Subtotal. | 'TC-SAUCE-005' | Financiero | **PASSED** | N/A |
| **REQ-UI-01** | El catálogo de productos debe renderizar correctamente las imágenes de cada artículo. | 'TC-SAUCE-006' | Visual / UI | **FAILED** | 'BUG-001' | 
| **REQ-CHK-03** | El formulario de checkout debe permitir la edición limpia del campo Last Name. | 'TC-SAUCE-007' | Funcional | **FAILED** | 'BUG-002' |
