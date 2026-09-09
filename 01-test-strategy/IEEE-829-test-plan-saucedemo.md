# Plan de Pruebas (Test Plan) - SauceDemo E-Commerce

**Sistema Bajo Prueba:** [SauceDemo Web App] (https://www.saucedemo.com/)
**Versión del Documento:** 1.0
**Estándar:** Basado en IEEE 829 / ISTQB CTFL

----

## 1. Introducción 
El propósito de este documento es definir la estrategia, alcance, recursos y criterios de aceptación para las pruebas funcionales de la aplicación web de comercio electrónico SauceDemo.

## 2. Alcance (Scope)
### 2.1 Dentro del Alcance (In-Scope)
- **Módulo de Autenticación:** Control del acceso con usuarios válidos, bloqueados y con fallos simulados ('standard_user', 'locked_user', 'problem_user').
- **Módulo de Catálogo y Carrito:** Adición, eliminación y persistencia de productos en el carrito. Ordenamiento por precio y nombre.
- **Módulo de Checkout:** Formulario de datos del comprador (´First Name', 'Last Name', 'Zip Code'), validación de campos obligatorios y cálculo de impuestos (Tax 8%).

### 2.2 Fuera del Alcance (Out of Scope)
- Procesamiento de transacciones financieras bancarias reales.
- Pruebas de rendimiento o carga masiva de usuarios en el servidor.

## 3. Estrategia y Técnicas de Pruebas (ISTQB)
|Tipo de Prueba | Técnica ISTQB Aplicada | Objetivo |
|---|---|---|
|**Pruebas Funcionales** | Partición de Equivalencia (EP) | Validar que los campos de texto acepten valores válidos y rechacen inválidos. |
|**Pruebas de Frontera** | Análisis de Valores Límite (BVA) | Verificar el comportamiento del contador del carrito con 0, 1 y N productos. |
|**Pruebas Negativas** | Tabla de Decisión | Probar combinaciones de campos obligatorios vacíos en el checkout. |
|**Pruebas de Estado** | Transición de Estados | Comprobar el cambio de estado del carrito de compras antes y después de confirmar la orden. |

## 4. Criterios de Entrada y Salida
### 4.1 Criterios de Entrada 
- Entorno web de SauceDemo disponible y accesible vía HTTPS.
- Casos de prueba diseñados y revisados.
### 4.2 Criterios de Salida
- 100% de los casos de prueba de prioridad **Alta** y **Crítica** ejecutados.
- Cobertura de requerimientos >= 95%.
- Todos los defectos encontrados documentados con evidencia técnica.
  
