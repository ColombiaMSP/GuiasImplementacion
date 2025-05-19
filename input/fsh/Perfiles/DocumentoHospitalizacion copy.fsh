Profile: BundleDOCUMENT
Parent: Bundle
Title: "Bundle Documento Hospitalización"
Description: "---- Pendiente de definir el Bundle para el documento."

* type = #document (exactly)
* timestamp 1..1 MS // La fecha de creación es obligatoria


//------Entradas
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.description = "Corresponde a cada una de las entradas del Bundle-Document."
* entry ^slicing.rules = #closed
* entry.resource MS


* entry contains
    Composition 1..1 and
    Patient 1..1

    // recursos diferentes para cada tipo de documento:
    //Profesional 1..1 and
    //Diagnosticos 1..* and    
    //Alergias 0..* and
    //Medicaciones 0..* and    
 
  
* entry[Composition] ^short = "...."
* entry[Composition] ^definition = "...."

* entry[Composition].resource 1..
* entry[Composition].resource only CompositionHospitalizacionCo



/**************************************************************************************************************/


// Profile: CompositionHospitalizacionCo
// Parent: Composition
// Title: "Documento Hospitalización"
// Description: "---- Pendiente ----"

// * status = #final
// * type = $loinc#34133-9 "Resumen de Alta" //34133-9 - Resumen de alta
	
//     //03:     Internación  	01:    Intramural


// //----- division de secciones -------
// * section ^slicing.discriminator[0].type = #pattern
// * section ^slicing.discriminator[=].path = "code"
// * section ^slicing.ordered = false
// * section ^slicing.rules = #open

// * section ^short = "Sección del documento"
// * section ^definition = "Sección de notificación de datos clínicos."

// * section.code 1.. MS
// * section.code from http://hl7.org/fhir/ValueSet/doc-section-codes (example)


// //--------- Secciones 
// * section contains

//     //-----
//     sectionAntecedentes 0..1 MS and
//     //secciones HOSPITALIZACION


//     //secciones INDICACIONES

// // Slicing para subsecciones dentro de Antecedentes
// * section[sectionAntecedentes].section ^slicing.discriminator[0].type = #pattern
// * section[sectionAntecedentes].section ^slicing.discriminator[=].path = "code"
// * section[sectionAntecedentes].section ^slicing.ordered = false
// * section[sectionAntecedentes].section ^slicing.rules = #open

// * section[sectionAntecedentes].section contains
//     antecedentesDiagnosticos 0..1 and
//     antecedentesFamiliares 0..1


// //-----------------------------------

// * section[sectionAntecedentes] contains 
//     sectionAntecendetesDiagnosticosAnteriores 0..1 MS and
//     sectionAntecedentesFamiliares 0..1 MS and


// * section[sectionAntecedentes].section[sectionAntecendetesDiagnosticosAnteriores].title="NUEVO -- Antecendetes Diagnosticos"



Profile: CompositionHospitalizacionCo
Parent: Composition
Title: "Documento Hospitalización"
Description: "Documento para representar la hospitalización del paciente."

* status = #final
* type = $loinc#34133-9 "Resumen de Alta"

// Slicing de la sección principal
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section ^short = "Sección del documento"
* section ^definition = "Sección de notificación de datos clínicos."

* subject only Reference(PacienteCo)

// Secciones principales
* section contains
    Antecedentes 0..1 MS and
    AlergiasConocidas 0..1 MS and
    MedicacionActual 0..1 MS and
    //detalles de la atencion:
    InformacionAtencion 0..1 MS and
    Ordenes 0..1 MS and
    SoportePDF 0..1 MS




//*************************************************************************************************/   
//*************************************************************************************************/    
//*************************************************************************************************/  
* section[Antecedentes].code = $loinc#11348-0 "Historia médica del paciente"
* section[Antecedentes].title = "Antecedentes clínicos"

// Slicing para subsecciones dentro de Antecedentes
* section[Antecedentes].section ^slicing.discriminator[0].type = #pattern
* section[Antecedentes].section ^slicing.discriminator[=].path = "code"
* section[Antecedentes].section ^slicing.ordered = false
* section[Antecedentes].section ^slicing.rules = #open

* section[Antecedentes].section contains
    antecedentesDiagnosticos 0..1 and
    antecedentesFamiliares 0..1

* section[Antecedentes].section[antecedentesDiagnosticos].code = $loinc#29308-4 "Diagnóstico"
* section[Antecedentes].section[antecedentesDiagnosticos].title = "Diagnósticos anteriores"
* section[Antecedentes].section[antecedentesDiagnosticos].entry only Reference(ConditionCo)

* section[Antecedentes].section[antecedentesFamiliares].code = $loinc#10157-6 "Historia familiar"
* section[Antecedentes].section[antecedentesFamiliares].title = "Antecedentes familiares"
* section[Antecedentes].section[antecedentesFamiliares].entry only Reference(FamilyMemberHistory)

// Sección: Alergias
* section[AlergiasConocidas].code = $loinc#48765-2 "Historial de alergias"
* section[AlergiasConocidas].title = "Alergias conocidas"
* section[AlergiasConocidas].entry only Reference(AlergiaCo)

// Sección: Medicación actual
* section[MedicacionActual].code = $loinc#10160-0 "Medicación actual"
* section[MedicacionActual].title = "Medicamentos que el paciente toma actualmente"
* section[MedicacionActual].entry only Reference(MedicationStatementCo)

//*************************************************************************************************/   
//*************************************************************************************************/    
//*************************************************************************************************/  

// Slicing para subsecciones dentro de Antecedentes
* section[InformacionAtencion].section ^slicing.discriminator[0].type = #pattern
* section[InformacionAtencion].section ^slicing.discriminator[=].path = "code"
* section[InformacionAtencion].section ^slicing.ordered = false
* section[InformacionAtencion].section ^slicing.rules = #open

* section[InformacionAtencion].section contains
    Detalles 0..1 and
    Diagnosticos 0..1 and
    MedicacionSuministrada 0..1 and                    
    ProcedimientosRealizados 0..1 and
    LaboratoriosRealizados 0..1


* section[InformacionAtencion].section[Detalles].entry only Reference(Encounter)

* section[InformacionAtencion].section[Diagnosticos].entry only Reference(ConditionCo)

* section[InformacionAtencion].section[MedicacionSuministrada].entry only Reference(MedicationAdministration)

* section[InformacionAtencion].section[ProcedimientosRealizados].entry only Reference(Procedure)

* section[InformacionAtencion].section[LaboratoriosRealizados].entry only Reference(Observation)
 
//*************************************************************************************************/   
//*************************************************************************************************/    
//*************************************************************************************************/    



// Slicing para subsecciones ORDENES
* section[Ordenes].section ^slicing.discriminator[0].type = #pattern
* section[Ordenes].section ^slicing.discriminator[=].path = "code"
* section[Ordenes].section ^slicing.ordered = false
* section[Ordenes].section ^slicing.rules = #open

* section[Ordenes].section contains
    MedicamentosOrdenados 0..1 and
    OtrasIndicaciones 0..1 

* section[Ordenes].section[MedicamentosOrdenados].entry only Reference(MedicationRequest)
* section[Ordenes].section[OtrasIndicaciones].entry only Reference(ServiceRequest)

/****************************************************************************************************************/

// Sección: Soporte PDF
* section[SoportePDF].entry.reference 1..1
* section[SoportePDF].entry only Reference(Binary)
