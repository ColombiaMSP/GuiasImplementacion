Alias: $loinc = http://loinc.org

Profile: CompositionCo
Parent: Composition
Title: "Documento Co"
Description: "Definición de un documento clínico para las necesidades de interoperabilidad en Colombia."



* status MS
* status ^short = "Estado valor fijo: -final-"
* status ^definition = "Corresponde al estado del documento."

//--- loinc que representa el tipo de documento ----
//* type from http://hl7.org/fhir/ValueSet/doc-typecodes (preferred)
* type MS
* type ^short = "Tipo de Documento"
* type ^definition = "Especifica el tipo de documento que se ha generado"
* type.coding.code 1..1
* type.coding.code from ConjuntoDocumentosVS (preferred) 

//* ---- Paciente ----- 
* subject 1..1 
* subject only Reference(PacienteCo)
* subject MS
* subject ^definition = "Paciente sobre el cual se ha generado este documento. Este debe ser el Perfil de paciente Colombiano."
* subject ^short = "Paciente sobre el cual se ha generado este documento. Este debe ser el Perfil de paciente Colombiano."
* subject.reference 1..1 MS
* subject.reference ^short = "Corresponde al paciente"



//* --- Author : referencia a un practitioner----
* author 1..1 
* author only Reference(PractitionerCo) 
* author MS
* author ^short = "Quien Ha creado el documento"
* author ^definition = "Identifica al responsable de los datos ingresados al documento."

//* --- Custodio : referencia a una organización----
* custodian 1..1
* custodian only Reference(OrganizacionCo) 
* custodian MS
* custodian ^short = "Indica la región que será custodio del documento."
* custodian ^definition = "Indica la región que será custodio del documento."

//* --- Fecha -----
* date MS
* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"

//* --- Titulo de documento -----
* title MS
* title ^short = "Título del documento generado"
* title ^definition = "Título oficial del documento para que pueda ser legible."


* section 1..3 MS

//----- division de secciones -------
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* section.code 1.. MS
* section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)


//--------- Secciones 
* section contains
    sectionDiagnosticos 1..1 MS and
    sectionMedicacion 0..1 MS and
    sectionAlergias 0..1 MS

  
//------ 1. Diagnosticos------------

* section[sectionDiagnosticos] ^short = "Sección Diagnósticos"
* section[sectionDiagnosticos] ^definition = "Descripción de lista de diagnósticos determinados en el paciente."

* section[sectionDiagnosticos].code MS 
* section[sectionDiagnosticos].code = $loinc#11450-4

* section[sectionDiagnosticos].title 1.. MS

* section[sectionDiagnosticos].entry 1.. MS
* section[sectionDiagnosticos].entry only Reference(ConditionCo)

* section[sectionDiagnosticos].entry ^slicing.discriminator[0].type = #profile
* section[sectionDiagnosticos].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDiagnosticos].entry ^slicing.rules = #open
* section[sectionDiagnosticos].entry ^short = "Diagnósticos conocidos actualmente de relevancia para determinaciones clínicas en el paciente."
//* section[sectionDiagnosticos].entry contains problem 1..* MS



//------ 2. Medicacion------------

* section[sectionMedicacion] ^short = "Sección Medicacion"
* section[sectionMedicacion] ^definition = "Descripción de lista de medicacion del paciente."

* section[sectionMedicacion].code MS 
* section[sectionMedicacion].code = $loinc#10160-0
* section[sectionMedicacion].title 1.. MS
* section[sectionMedicacion].entry 1.. MS
* section[sectionMedicacion].entry only Reference(MedicationStatementCo)

* section[sectionMedicacion].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicacion].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionMedicacion].entry ^slicing.rules = #open
* section[sectionMedicacion].entry ^short = "Medicación del paciente."


//------ 3. Alergias------------

* section[sectionAlergias] ^short = "Sección Alergias"
* section[sectionAlergias] ^definition = "Descripción de lista de alergias conocidas del paciente."

* section[sectionAlergias].code MS 
* section[sectionAlergias].code = $loinc#48765-2
* section[sectionAlergias].title 1.. MS
* section[sectionAlergias].entry 1.. MS
* section[sectionAlergias].entry only Reference(AlergiaCo)

* section[sectionAlergias].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlergias].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionAlergias].entry ^slicing.rules = #open
* section[sectionAlergias].entry ^short = "Alergias del paciente."






