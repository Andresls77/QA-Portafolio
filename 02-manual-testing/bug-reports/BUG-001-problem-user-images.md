# [BUG-001] Las imágenes de los productos muestras rutas rotas al iniciar sesión con 'problem_user'

**Estado:** Abierto
**Severidad:** Media
**Prioridad:** Media
**Componente:** Frontend/Catálogo de Productos
**Entorno:** Google Chrome (última versión)/windows & macOS
**URL Afectada:** 'https://www.saucedemo.com/inventory.html'

---

## 1. Resumen
Al iniciar sesión con las credenciales de prueba 'problem_user', todas las imágenes del catálogo de productos apuntan a una ruta estática de error ('/static/media/sl-404.168b1cce.jpg'), imposibilitando la visualización correcta de los artículos.

## 2. Pasos para Reproducir
1. Ir a 'https://www.saucedemo.com/'.
2. 2. Ingresar las credenciales:
   - **Username:** 'problem_user'
   - **Password:** 'secret_sauce'
3. Hacer clic en **Login**.
4. Inspeccionar las imágenes del catálogo en '/inventory.html'.

## 3. Comportamiento Esperado
Cada producto debe renderizar su imagen correspondiente (ej. la mochila de Sauce Labs debe mostrar la imagen del producto real).
## 4. Comportamiento obtenido
Todos los elementos de imagen ('<img>') del catálogo muestran la imagen por defecto con código de error 404.
## 5. Evidencia Técnica 
- **Elemento HTML inspeccionado en Chrome DevTools:**
  ```html
  <img alt="Sauce Labs Backpack" class="inventory_item_img" src="/static/media/sl-404.168b1cce.jpg">
