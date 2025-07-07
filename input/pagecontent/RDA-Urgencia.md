### Introducción


[......................................................]



---

### Perfiles

En esta sección se describen los perfiles especpificos realizados para este contexto de atención. 

1️⃣ Perfil de **Bundle Document** de RDA Consulta Externa: [Bundle Document Urgencia](StructureDefinition-BundleDOCUMENTInternacion.html).

2️⃣ Perfil de **Composition** Documento de RDA Consulta Externa: [Composition Urgencia](StructureDefinition-CompositionConsultaExternaCo.html).


----

#### Detalle de Secciones: 

En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Sección que contiene todos los antecedentes de salud del paciente:

✅ **Antecedentes Diagnósiticos**: [Condition Co](StructureDefinition-Conditionco.html).

✅ **Medicación Actual**: [Medication Statement](StructureDefinition-BundleDOCUMENTInternacion.html).

✅ **Alergias Conocidas**: [Alergias](StructureDefinition-AlergiaCo.html).

✅ **Antecedentes Familiares**: [Antecedentes Familiares](StructureDefinition-AntecedentesFamiliaresCo.html).

✅ **Riesgos**: [Riesgos](StructureDefinition-ObservationCoRiesgo.html).
----


2️⃣ Seccion que contiene información especpifica de la atencion:

✅ **Encounter Urgencia** - Representa toda la información de la atención.
[Encounter Urgencia](StructureDefinition-EncounterUrgenciaCo.html).

✅ **Diagnóstico Principal** - Representa el diagnóstico princial de la atención, los demas diagnósticos, se encuentran en Encounter.
[Condition Co](StructureDefinition-ConditioncoPrincipal.html).

✅ **Procedimientos Realizados**-  [Procedure Co](StructureDefinition-ProcedureCo.html).

✅ **Medicación suministrada** -  [Medication AdminstrationCo](StructureDefinition-MedicationAdministrationCo.html).


✅ **Otras tecnologías** -  [ObservationCO Otros Procedimientos](StructureDefinition-ObservationCoOtrosProcedimientos.html).


---

3️⃣ Sección con detalle de las órdenes realizadas durante la atención:

✅ **Medicamentos Ordenados** -  [Medication Request Co](StructureDefinition-MedicationRequestCo.html).

✅ **Procedimientos Indicados** - [Service Request ProcedureCo](StructureDefinition-ServiceRequestProcedureCo.html).

✅ **Otras solicitudes Indicados** - [Service Request Co](StructureDefinition-ServiceRequestCo.html).

----

4️⃣ Sección soporte para la Urgencia: 

✅ Perfil de **Document Reference PDF** - Incluir documento PDF leible (capa de texto) sin clave del documento pdf de la epicrisis de la la hospitalización. La epicrisis debe cumplir con los contenidos establecidos en el  Decreto 780 de 2016  Artículo 2.6.1.4.3.5 [ver detalle](StructureDefinition-DocumentReferencePDF.html)

-----

5️⃣ **Datos de Incapacidad**: Contiene la información asociada a la incapacidad.

✅ **Observation Incapacidad** - [Observation Incapacidad](StructureDefinition-ObservationCoIncapacidad.html).


-----


### Documento de Referencia

✅ Archivo Referencia: [RDAAtencióninmediata_Urgencias.xlsx](RDAAtencióninmediata_Urgencias.xlsx)

✅ Diagrama de Estructura de Documento RDA Urgencia: [Urgencias.png](Urgencias.png)

---