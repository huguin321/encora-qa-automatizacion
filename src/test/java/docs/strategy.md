# Estrategia de Automatización

## Enfoque

Se implementó una suite de pruebas automatizadas utilizando Karate DSL para validar el comportamiento de la API de usuarios de ServeRest.

El enfoque se basa en pruebas funcionales orientadas a servicios (API Testing), cubriendo operaciones CRUD completas.

---

## Diseño de pruebas

Se definieron escenarios para:

* Casos positivos: validación de flujos esperados
* Casos negativos: validación de manejo de errores y datos inválidos

---

## Organización

Los tests se estructuran en:

* Features independientes por endpoint
* Separación entre escenarios positivos y negativos
* Flujo end-to-end (`userFlow.feature`)

---

## Manejo de datos

Se utilizan datos dinámicos mediante UUID para evitar colisiones en la creación de usuarios.

---

## Reutilización

Se implementa reutilización de lógica mediante:

* `call read()` para invocar otros feature files
* Centralización de generación de datos en helpers

---

## Validaciones

Se aplican:

* Validaciones de respuesta mediante `match`
* Validaciones de esquema JSON para asegurar estructura

---

## Beneficios

* Tests independientes y mantenibles
* Baja fragilidad ante cambios
* Alta legibilidad
* Cobertura completa del CRUD