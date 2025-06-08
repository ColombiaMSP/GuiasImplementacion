### Introducción

[......................................................]

----

### Perfiles
En esta sección se describen los perfiles especpigicos realizados para este contexto de atención. 

----

#### Generales: 

1️⃣ Perfil de **Bundle Document** Document de RDA Internación Hospitalización:
[Bundle Document Hospitalización](StructureDefinition-BundleDOCUMENTInternacion.html).

2️⃣ Perfil de **Composition** Documento de RDA Internación Hospitalización:
[Composition Hospitalización](StructureDefinition-CompositionInternacionCo.html).

----

#### Detalle de Secciones: 

En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Seccion que contiene todos los antecedentes de salud del paciente:

✅ **Antecedentes Diagnósiticos**: [Condition Co](StructureDefinition-BundleDOCUMENTInternacion.html).

✅ **Medicación Actual**: [Medication Statement](StructureDefinition-BundleDOCUMENTInternacion.html).

✅ **Alergias Conocidas**: [Alergias](StructureDefinition-AlergiaCo.html).

✅ **Antecedentes Familiares**: [Antecedentes Familiares](StructureDefinition-AntecedentesFamiliaresCo.html).

----

2️⃣ Seccion que contiene información especpifica de la atencion:

✅ **Encounter Hospitalizacion** - representa toda la informacion de la atención.
[Encounter Hospitalización](StructureDefinition-EncounterHospitalizacionCo.html).

✅ **Diagnóstico Principal** - representa el diagnostico princial de la atención, los demas diagnósticos, se encuentran en Encounter.
[Condition Co](StructureDefinition-Conditionco.html).

✅ **Procedimientos Realizados**- En proceso [Procedure Co](StructureDefinition-ProcedureCo.html).

✅ **Medicación suministrada** - En proceso [Medication AdminstrationCo](StructureDefinition-MedicationAdministrationCo.html).

✅ **Laboratorios Realizados** - En proceso [Diagnostic ReportCo](StructureDefinition-DiagnosticReportCo.html).


---

3️⃣ Sección con detalle de las órdenes realizadas durante la atención:

✅ **Medicamentos Ordenados** -  [Medication Request Co](StructureDefinition-MedicationRequestCo.html).

✅ **Procedimientos Indicados** - [Service Request ProcedureCo](StructureDefinition-ServiceRequestProcedureCo.html).

✅ **Otras solicitudes Indicados** - [Service Request Co](StructureDefinition-ServiceRequestCo.html).

----

4️⃣ Sección soporte para la hospitalización: 

✅ Perfil de **Document Reference PDF** - Incluir documento PDF leible (capa de texto) sin clave del documento pdf de la epicrisis de la la hospitalización. La epicrisis debe cumplir con los contenidos establecidos en el  Decreto 780 de 2016  Artículo 2.6.1.4.3.5 [ver detalle](StructureDefinition-DocumentReferencePDF.html)


-----
-----

### Documento de Referencia

✅ Archivo Referencia: [RDAInternacion_Hospitalizacion.xlsx](RDAInternacion_Hospitalizacion.xlsx)
