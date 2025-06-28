### Introducción


[......................................................]

[......................................................]

[......................................................]

[......................................................]

-----

### Perfiles

1️⃣ Perfil de **Bundle** de RDA Consulta Externa: [PENDIENTE](StructureDefinition-BundleDOCUMENTConsultaExterna.html).

2️⃣ Perfil de **Composition** Documento de RDA Consulta Externa: [PENDIENTE](StructureDefinition-CompositionConsultaExternaCo.html).

----

#### Detalle de Secciones: 

En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Seccion que contiene todos los antecedentes de salud del paciente:

✅ **Antecedentes Diagnósiticos**: [Condition Co](StructureDefinition-Conditionco.html).

✅ **Medicación Actual**: [Medication Statement](StructureDefinition-BundleDOCUMENTInternacion.html).

✅ **Alergias Conocidas**: [Alergias](StructureDefinition-AlergiaCo.html).

✅ **Antecedentes Familiares**: [Antecedentes Familiares](StructureDefinition-AntecedentesFamiliaresCo.html).

----

2️⃣ Seccion que contiene información especpifica de la atencion:

✅ **Encounter Consulta Externa** - Representa toda la informacion de la atención.
[Encounter -Consulta Externa-](StructureDefinition-EncounterAmbulatorioCo.html).

✅ **Diagnóstico Principal** - representa el diagnostico princial de la atención, los demas diagnósticos, se encuentran en Encounter --Encounter Consulta Externa--.
[Condition Co](StructureDefinition-ConditioncoPrincipal.html).


---

3️⃣ Sección con detalle de las órdenes realizadas durante la atención:

✅ **Medicamentos Ordenados** -  [Medication Request Co](StructureDefinition-MedicationRequestCo.html).

✅ **Procedimientos Indicados** - [Service Request ProcedureCo](StructureDefinition-ServiceRequestProcedureCo.html).

✅ **Otras solicitudes Indicados** - [Service Request Co](StructureDefinition-ServiceRequestCo.html).

----

4️⃣ Sección soporte para la Atención: 

✅ Perfil de **Document Reference PDF** - Incluir documento PDF leible (capa de texto) sin clave del documento pdf de la epicrisis de atención por Consulta Exteran. La epicrisis debe cumplir con los contenidos establecidos en el  Decreto 780 de 2016  Artículo 2.6.1.4.3.5 . [DocumentoPDF]
(StructureDefinition-DocumentReferencePDF.html)

-----

5️⃣ **Datos de Incapacidad**: Contiene la información asociada a la incapacidad.

✅ **Observation Incapacidad** - [Observation Incapacidad](StructureDefinition-ObservationCoIncapacidad.html).

-----


### Documento de Referencia

✅ Archivo Referencia: [RDA_Consulta_Externa.xlsx](RDA_Consulta_Externa.xlsx)

✅ Diagrama de Estructura de Documento RDA Consulta Externa: [Ambulatorio.png](ambulatorio.png)

