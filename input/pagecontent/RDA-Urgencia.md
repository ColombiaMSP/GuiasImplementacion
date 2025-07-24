### **Introducción**

En esta página, se documenta todos los recursos involucrados para representar la información de un consulta urgencia.

---

### **Perfiles**

En esta sección se describen los perfiles especpificos realizados para este contexto de atención.

1️⃣ Perfil de **Bundle Document** de RDA Consulta Externa: [Bundle Document Urgencia](StructureDefinition-BundleDOCUrgencia.html).

2️⃣ Perfil de **Composition** Documento de RDA Consulta Externa: [Composition Urgencia](StructureDefinition-CompositionUrgenciaCo.html).

---

### **Detalle de Secciones:**

En este apartado se describen las diferentes secciones incluidas en el documento **Compostion** para poder representar tanto de antecedendentes del paciente, asi como detalles de la atención:

1️⃣ Sección que contiene todos los antecedentes de salud del paciente:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Antecedentes Diagnósiticos** | [Condition Co](StructureDefinition-Conditionco.html) | Representa los antecedentedes diagnósticos del paciente. |
| ✅ **Medicación Actual** | [Medication Statement](StructureDefinition-MedicationStatementCo.html). | Representa la información de la medicación actual que toma el paciente. |
| ✅ **Alergias Conocidas** | [Alergias](StructureDefinition-AlergiaCo.html). | Representa las alergias que tiene el paciente. |
| ✅ **Antecedentes Familiares** | [Antecedentes Familiares](StructureDefinition-AntecedentesFamiliaresCo.html) | Representa los antecedentes familiares. |
| ✅ **Riesgos** | [Riesgos](StructureDefinition-ObservationCoRiesgo.html) | Representa los riesgos de salud del paciente. |

---

2️⃣ Seccion que contiene información especifica de la atencion:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Consulta Urgencia** | [Encounter Urgencia](StructureDefinition-EncounterUrgenciaCo.html) | Representa toda la información de la atención. |
| ✅ **Diagnóstico Principal** | [Condition Co](StructureDefinition-ConditioncoPrincipal.html) | Representa el diagnóstico princial de la atención, los demas diagnósticos, se encuentran en Encounter. |
| ✅ **Procedimientos Realizados** | [Procedure Co](StructureDefinition-ProcedureCo.html) | Listado de Procedimientos realizados durante la atención en Salud Atención inmediata / Urgencias (Tecnologías en Salud)|
| ✅ **Medicación suministrada** | [Medication AdminstrationCo](StructureDefinition-MedicationAdministrationCo.html) | Listado de Medicamentos administrados durante la Atención inmediata / Urgencias (Tecnologías en Salud)|
| ✅**Otras tecnologías** | [ObservationCO Otros Procedimientos](StructureDefinition-ObservationCoOtrosProcedimientos.html) | Listado de Otras tecnologías en salud administrados durante la Atención inmediata / Urgencias|

---

3️⃣ Sección con detalle de las órdenes realizadas durante la atención:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Medicamentos Ordenados** | [Medication Request Co](StructureDefinition-MedicationRequestCo.html) | Formula de Medicamentos ordenados al egreso de la Atención inmediata / Urgencias (Tecnologías en Salud) |
| ✅ **Procedimientos Indicados** | [Service Request ProcedureCo](StructureDefinition-ServiceRequestProcedureCo.html). | Ordenes médicas - procedimientos ordenados al egreso de la Atención inmediata / Urgencias|
| ✅ **Otras solicitudes Indicados** | [Service Request Co](StructureDefinition-ServiceRequestCo.html). | Ordenes médicas - Otras tecnologias en salud ordenadas al egreso de la Atención inmediata / Urgencias |

---

4️⃣ Otras Secciones:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **Doc Ref PDF** | [DocumentoPDF](StructureDefinition-DocumentReferencePDF.html) | Incluir documento PDF leible (capa de texto) sin clave del documento pdf de la epicrisis de atención por Consulta Exteran. La epicrisis debe cumplir con los contenidos establecidos en el Decreto 780 de 2016 Artículo 2.6.1.4.3.5 |
| ✅**Datos Incapacidad** | [Observation Incapacidad](StructureDefinition-ObservationCoIncapacidad.html) | Representa la información asociada a la incapacidad de la persona. |

---

### Documento de Referencia

✅ Archivo Referencia: [RDAAtencióninmediata\_Urgencias.xlsx](RDAAtenci%C3%B3ninmediata_Urgencias.xlsx)

✅ Diagrama de Estructura de Documento RDA Urgencia: [Urgencias.png](Urgencias.png)

---