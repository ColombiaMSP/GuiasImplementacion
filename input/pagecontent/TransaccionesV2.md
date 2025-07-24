### **Introducción**

En esta página, se documento lo que corresponde a la transacción de registro de un RDA.

---

### **Perfiles**

En esta sección se describe la información que se debe enviar al momento de registrar un RDA. Esta conforme al perfil MHD [MHD-iti65](https://profiles.ihe.net/ITI/MHD/ITI-65.html).

Para poder registrar un RDA dentro del sistema, se debe enviar un **Bundle - transaction**, description en el siguiente perfil: [Bundle-Transation](StructureDefinition-BundleCoTransaction.html).

A continuación se describen los recursos que deben ser incluidos en el Bundle de transacción:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **List** | [List](https://www.hl7.org/fhir/R4/list.html) | Recurso List |
| ✅ **Document Reference** | [Document Reference](StructureDefinition-DocumentReferenceCo.html) | Recurso utilizado para realizar el índice de atenciones. |
| ✅ **Bundle Document** | [RDA Internacion](StructureDefinition-BundleDOCInternacion.html), [RDA Urgencia](StructureDefinition-BundleDOCUrgencia.html), [RDA Consulta Externa](StructureDefinition-BundleDOCConsultaExterna.html) | Contiene la información especifica clinica, se debe enviar uno de los tres. |
| ✅ **Paciente** | [Paciente Co](StructureDefinition-PacienteCo.html) | Recurso donde se representa la información del paciente. |

---