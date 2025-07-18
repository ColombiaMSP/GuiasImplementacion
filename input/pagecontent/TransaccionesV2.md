### **Introducción**

En esta página, se documento lo que corresponde a la transacción de registro de un RDA.

---

### **Perfiles**

En esta sección se describe la información que se debe enviar al momento de registrar un RDA. Esta conforme al perfil MHD [MHD-iti65](https://profiles.ihe.net/ITI/MHD/ITI-65.html).

Para poder registrar un RDA dentro del sistema, se debe enviar un **Bundle - transaction**, description en el siguiente perfil: [Bundle-Transation](StructureDefinition-BundleCoTransaction.html).

A continuación se describen los recursos que deben ser incluidos en el Bundle de transacción:

| **Entrada** | **Link** | **Descripción** |
| --- | --- | --- |
| ✅ **List** | [List](StructureDefinition-Doc.html) | Recurso ... |
| ✅ **Document Reference** | [Document Reference](StructureDefinition-Doc.html) | Recurso utilizado para realizar el indice de atenciones. |
| ✅ **Bundle Document** | [RDA Internacion](StructureDefinition-BundleDOCUMENTInternacion.html), [RDA Urgencia](StructureDefinition-BundleDOCUrgencia.html), [RDA Consulta Externa](StructureDefinition-BundleDOCUMENTConsultaExterna.html) | Contiene la información especifica clinica, se debe enviar uno de los tres. |
| ✅ **Paciente** | [Paciente Co](StructureDefinition-PacienteCo.html) | Recurso donde se representa la información del paciente. |

---