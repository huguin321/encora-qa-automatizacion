# API Automation - ServeRest (Karate DSL)

## Descripción

Suite de pruebas automatizadas para la API de usuarios de ServeRest utilizando Karate DSL.
Se cubren operaciones CRUD completas, incluyendo escenarios positivos y negativos, alineados a los criterios del reto técnico.

### Casos positivos

* Listar usuarios
* Crear usuario
* Obtener usuario por ID
* Actualizar usuario
* Eliminar usuario

### Casos negativos

* Crear usuario con email duplicado
* Obtener usuario inexistente
* Validación de ID inválido

---

## API bajo prueba

https://serverest.dev/

---

## Tecnologías utilizadas

* Karate DSL
* Java
* Maven

---

## Estructura del proyecto

```
src/test/java
│
├── docs/
│   ├── README.md
│   ├── strategy.md
│
├── helpers/
│   ├── dataGenerator.js
│
├── runners/
│   ├── TestRunner.java
│
├── schemas/
│   ├── userSchema.json
│
├── users/
│   ├── flujo/
│   │   ├── userFlow.feature
│
│   ├── negativo/
│   │   ├── createUserNegative.feature
│   │   ├── deleteUserNegative.feature
│   │   ├── getUserNotFound.feature
│
│   ├── positivo/
│   │   ├── createUser.feature
│   │   ├── getUsers.feature
│   │   ├── getUserById.feature
│   │   ├── updateUser.feature
│   │   ├── deleteUser.feature
│
└── karate-config.js
```

---

## Ejecución

```bash
mvn clean test
```

---

## Reporte

Después de la ejecución, el reporte HTML se genera en:

```
target/karate-reports/karate-summary.html
```

---

## Estrategia de automatización

* Uso de datos dinámicos para evitar colisiones mediante UUID
* Tests independientes utilizando `call` entre feature files
* Separación de escenarios positivos y negativos
* Validaciones desacopladas para reducir fragilidad en los tests
* Cobertura de validaciones de negocio y validaciones de entrada
* Reutilización de features mediante `call read()`

---

## Alcance del proyecto

Se implementaron pruebas automatizadas para los siguientes endpoints:

* GET /usuarios
* POST /usuarios
* GET /usuarios/{id}
* PUT /usuarios/{id}
* DELETE /usuarios/{id}

---

## Resultado

Se obtuvo una suite mantenible, con cobertura completa del CRUD, incluyendo validaciones funcionales, negativas y de esquema, alineada a los criterios del reto técnico.