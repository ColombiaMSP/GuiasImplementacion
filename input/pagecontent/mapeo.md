
# Mapeo de 17 variables.


| Nro variable | Descripción                                                                 | Elemento del RDA                     |
|-------------|---------------------------------------------------------------------------|--------------------------------------|
| **ENTIDADES INVOLUCRADAS EN LA ATENCIÓN DEL PACIENTE** | | |
| 16          | Identificación del prestador                                             | DocRef.author                        |
| **IDENTIFICACIÓN DEL PACIENTE** | | |
| 2           | Documento de identificación: Tipo y Número                              | Patient.identifier                   |
| 3           | Nombres y apellidos                                                    | Patient.name                         |
| 4           | Fecha y hora de nacimiento (para el cálculo de edad. Hora opcional)    | Patient.birthdate                    |
| 5           | Sexo biológico                                                         | Patient.gender                        |
| 10          | Categoría de discapacidad                                              | Patient.extension.discapacidad       |
| 6           | Identidad de género                                                    | Patient.extension.identidadgenero    |
| 1           | Nacionalidad                                                           | Patient.extension.nacionalidad       |
| 11          | País de residencia habitual                                           | Patient.address.country              |
| 12          | Municipio de residencia habitual                                      | Patient.address.city                 |
| 13          | Pertenencia étnica. Comunidad como campo de texto abierto             | Patient.extension.etnica             |
| 14          | Zona territorial de residencia                                        |                                      |
| **CARACTERIZACIÓN DE LA ATENCIÓN** | | |
| 47          | Alergias y antecedentes familiares                                     | Allergyintolerance.code              |
| **PROCEDIMIENTOS Y TRATAMIENTOS** | | |
| **MEDICAMENTOS** | | |
| 26          | Descripción común del medicamento                                     | Medicationstatement.code             |
| 36          | Identificación del talento humano en salud que realiza, entrega o aplica la tecnología de salud | Practitioner |
| **DESCRIPCIÓN DE LA ATENCIÓN** | | |
| 37          | Diagnóstico principal de egreso                                      | Condition.code                        |
| 17          | Fecha y Hora de inicio de la atención                                | Composition.date                      |
