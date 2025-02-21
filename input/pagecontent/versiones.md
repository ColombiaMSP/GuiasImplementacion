#### Versión: 0.4.3 , _2025 Febrero_ (EN DESARROLLO)

 **PACIENTE CO:**
 - [OK] Agregado de extension de comunidades étnicas, sin catálogo definido.
 - [OK] Actualizacion de ejemplo de PacienteColombianoCompleto para contener nueva extensión: comunidades étnicas.
 - [PENDIENTE] Modificación de tipos de id persona (aplicado a paciente co) de acuerdo a valores de que contempla tabla evolución.  
 - [PENDIENTE] Agregado de aclaraciones de sexo de acuerdo a informacion de 866, campo 01: Hombre, 02: Mujer, 03: Indeterminado/ Intersexual. 
 - [PENDIENTE] En campo Address - dirección, modficación de ciudad para poner de acuerdo a catálogo DIVIPOLA.

 **ORGANIZATION CO:**
  - [OK] Mejoras en Descripciones de campos.
  - [IDEA] Agregado de explicación de tipos de organización y como se debe referenciar dentro de debe incluir.

 **PROFESIONAL:**
  - [OK] Mejoras en Descripciones de campos.
  - [PENDIENTE] DEtallar que se busca en tabla de RETUS.

 **Condition-MedicationStatement-AllergyIntolerance:**
  - [OK] Mejoras en Descripciones de campos.


 **EJEMPLOS:**
 - [OK] Nuevo ejemplo de Bundle -transaction-, con indentificadores uuid para cada entrada. 
 

**--------------------------------------------------------------------------------------------------------**


#### Versión: 0.4.2 , _2023-08-23_
  - Se agrega Actualización a perfil de Alergias
  - Se agrega Valueset de Tipos de Alergias según resolución 866
  - Se corrigien ejemplos de alergias

--------------------------------------------------------------------------------------------------------
#### Versión: 0.4.1 , _2023-07-19_
  - Se agrega practitioner a Bundle
  - Se modifica cardinalidad en Composition.section
  - Se modifica cardinalidad en Composition.section:sectionDiagnosticos
  - Actualización de Ejemplos


--------------------------------------------------------------------------------------------------------
#### Versión: 0.4 , _2023-04-01_ :
  - Agregado de recursos Alergias y medicamentos.
  - Actualización de recurso - Composition RDA: se agregan nuevas referencias a recursos : alergias y medicamentos.
  - Agregado de terminología.

--------------------------------------------------------------------------------------------------------
#### Versión: 0.3 , _2022-06-17_ :
  - Actualización de recurso - DocumentRefence, author, indica el prestador.
  - Actualización de recurso - Composition RDA: se agrega Custodian representando a la región.
  - Agregado de ejemplos de Organización.
  - Modificación de cardinalidad de Condition.code.
  - Modificación de ejemplo de Document Reference (indicando content asociado a Composition).
  - Agregado de SearchParamenter de paciente: identifier-type y identifier-country

--------------------------------------------------------------------------------------------------------
#### Versión: 0.2 , _2022-06-01_ : 
  - Agregado de perfil Document Reference.
  - Cambios en Bundle para que incluya DocumentReference y cardinalidades de recursos.
  - Actualización de página con transacciones.
  - Modificación de códigos de Discapacidad, de acuerdo a la norma 866.
  - Identificadores de persona: agreagado de código DE.
  - Modificación de nombre de las extensiones de paciente.

--------------------------------------------------------------------------------------------------------

####  Versión: 0.1 , _2022-04-01_ : 
  - Version incial de guía.

