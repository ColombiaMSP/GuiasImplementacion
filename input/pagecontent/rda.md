### Definición del RDA

El Resumen Digital de Atención en Salud - RDA es la expresión en medios digitales de los contenidos de la Epicrisis o resumen de atención utilizados en el Sistema de Salud Colombiano y definidos en el Decreto 780 de 2016. 

La epicrisis es un documento médico legal en el que se registra el resumen de la historia clínica originado por el ingreso de un paciente a una institución prestadora de servicios de salud. Debe ser completo, detallado y debe brindar información acerca del proceso de atención desde el inicio de la enfermedad hasta su resolución.

De acuerdo con dicho decreto la Epicrisis es utilizada en el caso de hospitalización y urgencias según lo establecido en el Artículo 2.6.1.4.3.5 que define el contenido de dicha epicrisis como soporte de las reclamaciones por servicios de salud, indemnizaciones y gastos y el Resumen Clínico de la Atención según lo establecido en el Artículo 2.6.1.4.3.6 que define el contenido para servicios de salud ambulatorios.

### El RDA y la IHC
El Resumen Digital de Atención es un estándar para compartir los datos relacionados con la epicrisis y el resumen clínico de la atención en salud de una forma integrada. Dicho estándar incorpora los elementos de datos relacionados con la identificación, contacto con el servicio de salud, uso de tecnologías en salud y la medición de resultados de valoración clínica y de laboratorio. De acuerdo con el Decreto 780 de 2016, el Resumen Digital de Atención-RDA se organiza tal como está definida la Epicrisis y el resumen clínico de atención. 

El RDA es un documento digital generado por el prestador al final de la atención en salud de cada paciente, este resumen digital de atención deberá ser enviado a la plataforma de interoperabilidad usando los servicios dispuestos para ello.  El RDA está basado en las variables de la resolución 866 de 2021 y estructura su información en diferentes secciones.  


### RDA y HL7 FHIR

Se ha definido HL7 FHIR como Lenguaje Comun de Intercambio, y dentro del estandar se han identificado los recursos para su modelamiento.

El modelo del RDA está basado en los siguientes recursos del estándar:

* DocumentRefence, indice del Documento RDA.
* Composition, contexto del RDA: Fecha, organización,
* PatientCo, información demográfica del paciente
* Practitioner, Profesional de salud
* Organization, Prestador donde se realiza la atención
* Encounter, información general del evento
* MedicationStatment, medicamentos que le son administrados al paciente
* Procedure, procedimientos que han sido realizados
* Observation, resultados
* AlergyIntolerance, tipos de alergia
* FamilyMemberHistory, antecedentes famjiliares
* Condition, diagnósticos y condición del paciente

### RDA PACIENTE-HL7 FHIR
* Identificación del Prestador de Servicios de Salud
* Entidad responsable por el plan de beneficios en salud Resumen Digital Básico de Atención en Salud - Paciente
* Identificación del Paciente
* Datos Resumen Digital Básico de Atención en Salud - Paciente
* Antecedentes de salud
* Listado de Medicamentos ordenados durante la atención
* Diagnósticos
* Profesional de salud que dió el alta de Internación / Hospitalización




### RDA HOSPITALIZACION-HL7 FHIR

* Identificación del Prestador de Servicios de Salud Entidad responsable por el plan de beneficios en salud (Internación / Hospitalización)
* Identificación del Paciente
* Datos de la Internacion / Hospitalizacion Antecedentes de salud
* Listado de Procedimientos realizados durante la atención en Salud Internación / Hospitalización (Tecnologías en Salud)
* Listado de Medicamentos administrados durante la atención en internación / hospitalización (Tecnologías en Salud)
* Listado de Otras tecnologías en salud administrados durante la internación / hospitalización
* Diagnósticos
* Formula de Medicamentos ordenados al egreso de la Internación / Hospitalización (Tecnologías en Salud)
* Ordenes médicas - procedimientos ordenados al egreso de la Internación / Hospitalización
* Ordenes médicas - Otras tecnologias en salud ordenadas al egreso de la Internación / Hospitalización
* Datos incapacidad
* Profesional de salud que dió el alta de Internación / Hospitalización
* Documento de soporte de la Internación / Hospitalizacion



### RDA URGENCIAS-HL7 FHIR

* Identificación del Prestador de Servicios de Salud
* Entidad responsable por el plan de beneficios en salud (Atención inmediata / Urgencias)
* Identificación del Paciente
* Datos de la Atención inmediata / Urgencias
* Antecedentes de salud
* Listado de Procedimientos realizados durante la atención en Salud Atención inmediata / Urgencias (Tecnologías en Salud)
* Listado de Medicamentos administrados durante la Atención inmediata / Urgencias (Tecnologías en Salud)
* Listado de Otras tecnologías en salud administrados durante la Atención inmediata / Urgencias
* Diagnósticos
* Formula de Medicamentos ordenados al egreso de la Atención inmediata / Urgencias (Tecnologías en Salud)
* Ordenes médicas - procedimientos ordenados al egreso de la Atención inmediata / Urgencias
* Ordenes médicas - Otras tecnologias en salud ordenadas al egreso de la Atención inmediata / Urgencias
* Datos incapacidad
* Profesional de salud que dió el alta de la Atención inmediata / Urgencias
* Documento de soporte de la Atención inmediata / Urgencias


### RDA CONSULTA EXTERNA-HL7 FHIR

* Identificación del Prestador de Servicios de Salud
* Entidad responsable por el plan de beneficios en salud (Consulta Externa)
* Identificación del Paciente
* Datos de la Consulta Externa
* Antecedentes de salud
* Diagnósticos
* Formula de Medicamentos ordenados en Consulta Externa (Tecnologías en Salud)
* Ordenes médicas - procedimientos ordenados en Consulta Externa
* Ordenes médicas - Otras tecnologias en salud ordenadas en Consulta Externa
* Datos incapacidad
* Profesional de salud que realizó la atención por Consulta Externa
* Documento de soporte de la Internación / Hospitalizacion