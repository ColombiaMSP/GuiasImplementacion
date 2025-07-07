/*-------------------------------------------------------------------------------------------------------------------   
----------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------*/

Profile: BundleDOCConsultaExterna
Parent: Bundle
Title: "Bundle Documento Consulta Externa"
Description: "Representa un documento de consulta externa del paciente."


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
    Patient 1..1 and  
    Antecedentes 0..* MS and
    AlergiasConocidas 0..* MS and
    MedicacionActual 0..* MS and
    //detalles de la atencion:
    InformacionAtencion 0..* MS and
    Ordenes 0..* MS and
    SoporteDocumental 0..* MS and
    DatosIncapacidad 0..* MS


 
  
* entry[Composition] ^short = "Documento Consulta Externa"
* entry[Composition] ^definition = "Representa un documento de consulta externa del paciente."

* entry[Composition].resource 1..1
* entry[Composition].resource only CompositionConsultaExternaCo

* entry[Antecedentes] ^short = "Antecedentes clínicos del paciente"
* entry[Antecedentes] ^definition = "Antecedentes clínicos del paciente, incluyendo diagnósticos y antecedentes familiares."
* entry[Antecedentes].resource 1..
* entry[Antecedentes].resource only ConditionCo

* entry[AlergiasConocidas] ^short = "Alergias conocidas del paciente"
* entry[AlergiasConocidas] ^definition = "Alergias conocidas del paciente."
* entry[AlergiasConocidas].resource 1..
* entry[AlergiasConocidas].resource only AlergiaCo

* entry[MedicacionActual] ^short = "Medicamentos actuales del paciente"
* entry[MedicacionActual] ^definition = "Medicamentos actuales del paciente."
* entry[MedicacionActual].resource 1..
* entry[MedicacionActual].resource only MedicationStatementCo

* entry[InformacionAtencion] ^short = "Información de la atención del paciente"
* entry[InformacionAtencion] ^definition = "Información de la atención del paciente, incluyendo detalles de la atención, diagnósticos, medicamentos suministrados, procedimientos realizados y laboratorios realizados."
* entry[InformacionAtencion].resource 1..
* entry[InformacionAtencion].resource only EncounterAmbulatorioCo


* entry[Ordenes] ^short = "Órdenes de tratamiento del paciente"
* entry[Ordenes] ^definition = "Órdenes de tratamiento del paciente, incluyendo medicamentos ordenados y otras indicaciones."
* entry[Ordenes].resource 1..

* entry[Ordenes].resource only ServiceRequestCo or MedicationRequestCo or ServiceRequestProcedureCo

* entry[SoporteDocumental] ^short = "Soporte documental del paciente"
* entry[SoporteDocumental] ^definition = "Soporte documental del paciente, incluyendo referencias a documentos relevantes."
* entry[SoporteDocumental].resource 1..
* entry[SoporteDocumental].resource only DocumentReferencePDF

* entry[DatosIncapacidad] ^short = "Datos de incapacidad del paciente"  
* entry[DatosIncapacidad] ^definition = "Datos de incapacidad del paciente, incluyendo observaciones relacionadas con la incapacidad."
* entry[DatosIncapacidad].resource 1..
* entry[DatosIncapacidad].resource only ObservationCoIncapacidad




/*-------------------------------------------------------------------------------------------------------------------   
----------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------*/

Profile: CompositionConsultaExternaCo
Parent: Composition
Title: "Documento Consulta Externa"
Description: "Documento para representar la consulta externa del paciente."

* status = #final
* type = $loinc#34105-7 "Nota de consulta"


//* --- Author : referencia a un practitioner----
* author 1..1 
* author only Reference(PractitionerCo) 
* author MS
* author ^short = "Quien Ha creado el documento"
* author ^definition = "Identifica al responsable de los datos ingresados al documento."

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
    Riesgo 0..1 MS and
    //detalles de la atencion:
    InformacionAtencion 0..1 MS and
    Ordenes 0..1 MS and
    SoporteDocumental 0..1 MS and    
    DatosIncapacidad 0..1 MS	


//**************************informacion antecendetes ******************************************/  


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
* section[Antecedentes].section[antecedentesFamiliares].entry only Reference(AntecedentesFamiliaresCo)

// Sección: Alergias
* section[AlergiasConocidas].code = $loinc#48765-2 "Historial de alergias"
* section[AlergiasConocidas].title = "Alergias conocidas"
* section[AlergiasConocidas].entry only Reference(AlergiaCo)

// Sección: Medicación actual
* section[MedicacionActual].code = $loinc#10160-0 "Medicación actual"
* section[MedicacionActual].title = "Medicamentos que el paciente toma actualmente"
* section[MedicacionActual].entry only Reference(MedicationStatementCo)


// Sección: Riesgo
* section[Riesgo].code = $loinc#29762-2 "Riesgo del paciente"
* section[Riesgo].title = "Riesgo del paciente"
* section[Riesgo].entry only Reference(ObservationCoRiesgo)


   
//**************************informacion de la atencion  *******************************************/    

// Slicing para subsecciones dentro de Antecedentes
* section[InformacionAtencion].section ^slicing.discriminator[0].type = #pattern
* section[InformacionAtencion].section ^slicing.discriminator[=].path = "code"
* section[InformacionAtencion].section ^slicing.ordered = false
* section[InformacionAtencion].section ^slicing.rules = #open

* section[InformacionAtencion].section contains
    Detalles 0..1 and
    Diagnosticos 0..1


* section[InformacionAtencion].section[Detalles].entry only Reference(EncounterAmbulatorioCo)
* section[InformacionAtencion].section[Diagnosticos].entry only Reference(ConditionCo)

//*************************ordeneres***************************************************************/ 




// Slicing para subsecciones ORDENES
* section[Ordenes].section ^slicing.discriminator[0].type = #pattern
* section[Ordenes].section ^slicing.discriminator[=].path = "code"
* section[Ordenes].section ^slicing.ordered = false
* section[Ordenes].section ^slicing.rules = #open

* section[Ordenes].section contains
    MedicamentosOrdenados 0..1 and
    ProcedimientosOrdenados 0..1 and
    OtrasIndicaciones 0..1 

* section[Ordenes].section[MedicamentosOrdenados].entry only Reference(MedicationRequestCo)
* section[Ordenes].section[MedicamentosOrdenados].title = "Medicamentos Ordenados"
//* section[Ordenes].section[MedicamentosOrdenados].code = $loinc#10160-0 "Medicamentos ordenados"

* section[Ordenes].section[ProcedimientosOrdenados].entry only Reference(ServiceRequestProcedureCo)
* section[Ordenes].section[ProcedimientosOrdenados].title = "Procedimientos Ordenados"
//* section[Ordenes].section[MedicamentosOrdenados].code = $loinc#10160-0 "Medicamentos ordenados"

* section[Ordenes].section[OtrasIndicaciones].entry only Reference(ServiceRequestCo)
* section[Ordenes].section[OtrasIndicaciones].title = "Otras Indicaciones"

   
//*************************soporte documental******************************************************/   

// Sección: SoporteDocumental
* section[SoporteDocumental].entry.reference 1..1
* section[SoporteDocumental].entry only Reference(DocumentReferencePDF) 

* section[SoporteDocumental].entry ^short = "Referencia a documento"
* section[SoporteDocumental].entry ^definition = "Referencia a un documento que soporta la información del documento de hospitalización."



//*************************datos incapacidad******************************************************/
// Sección: DatosIncapacidad

* section[DatosIncapacidad].title = "Datos de incapacidad del paciente"
* section[DatosIncapacidad].entry only Reference(ObservationCoIncapacidad)


/*-------------------------------------------------------------------------------------------------------------------   
----------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------*/
/*

Instance: CompositionConsultaExternaCo-example
InstanceOf: CompositionConsultaExternaCo
Title: "Ejemplo de Documento de Hospitalización"
Description: "Instancia de ejemplo de hospitalización con secciones anidadas"
Usage: #example

* status = #final
* type = $loinc#34133-9 "Resumen de Alta"
* date = "2024-12-10T14:30:00Z"
* subject = Reference(PacienteCo-example)
* title = "Resumen de Alta - Hospitalización"
* confidentiality = #N
* author = Reference(Practitioner/ProfesionalColombia)
* custodian = Reference(Organization/OrganizacionRegionEjemplo)

// Sección: Antecedentes
* section[+].code = $loinc#11348-0 "Historia médica del paciente"
* section[=].title = "Antecedentes clínicos"

// Sub-sección: Diagnósticos anteriores
* section[=].section[+].code = $loinc#29308-4 "Diagnóstico"
* section[=].section[=].title = "Diagnósticos anteriores"
* section[=].section[=].entry[0] = Reference(ConditionCo-example)

// Sub-sección: Antecedentes familiares
* section[=].section[+].code = $loinc#10157-6 "Historia familiar"
* section[=].section[=].title = "Antecedentes familiares"
* section[=].section[=].entry[0] = Reference(FamilyMemberHistory-example)

// Sección: Alergias conocidas
* section[+].code = $loinc#48765-2 "Historial de alergias"
* section[=].title = "Alergias conocidas"
* section[=].entry[0] = Reference(AlergiaCo-example)

// Sección: Medicación actual
* section[+].code = $loinc#10160-0 "Medicación actual"
* section[=].title = "Medicamentos que el paciente toma actualmente"
* section[=].entry[0] = Reference(MedicationStatementCo-example)

// Sección: Información de la atención
* section[+].title = "Información de la atención"
* section[=].section[+].title = "Detalles de la atención"
* section[=].section[=].code.text = "Detalles"
* section[=].section[=].entry[0] = Reference(Encounter-example)

* section[=].section[+].title = "Diagnósticos"
* section[=].section[=].code.text = "Diagnósticos"
* section[=].section[=].entry[0] = Reference(ConditionCo-example)

* section[=].section[+].title = "Medicamentos suministrados"
* section[=].section[=].code.text = "MedicaciónSuministrada"
* section[=].section[=].entry[0] = Reference(MedicationAdministration-example)

// Sección: Órdenes
* section[+].title = "Órdenes de tratamiento"
* section[=].section[+].title = "Medicamentos ordenados"
* section[=].section[=].code.text = "MedicamentosOrdenados"
* section[=].section[=].entry[0] = Reference(MedicationRequest-example)

* section[=].section[+].title = "Otras indicaciones"
* section[=].section[=].code.text = "OtrasIndicaciones"
* section[=].section[=].entry[0] = Reference(ServiceRequest-example)

// Sección: Soporte PDF
* section[+].title = "Soporte documental"
* section[=].entry[0] = Reference(DocumentReference-example)



/*-------------------------------------------------------------------------------------------------------------------   
----------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------*/


