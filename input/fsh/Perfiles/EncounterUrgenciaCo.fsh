Profile:        EncounterUrgenciaCo
Parent:         Encounter
Title:          "EncounterUrgencia Co"

//---paciente
* subject only Reference(PacienteCo)

//-- internacion
* type MS
* type = $GrupoServiciosCS#02 "Encuentro de Urgencia" (exactly)

// ------- modalidad de Tecnología de Salud
* serviceType MS
* serviceType from ModalidadTecnologiaSaludVS



// -------inicio y fin de la hospitalización
* period MS
* period.start MS
* period.end MS 


* reasonCode MS
* reasonCode.text ^short = "Causa que motiva la atención."
* reasonCode.text ^definition = "Causa que motiva la atención."
* reasonCode.text MS
* reasonCode from CausaExternaVS

* hospitalization MS
* hospitalization ^short = "Información sobre la hospitalización del paciente."
* hospitalization ^comment = "Comentario adicional sobre la hospitalización del paciente."


* hospitalization.admitSource MS
* hospitalization.admitSource ^short = "PENDIENTE - Fuente de admisión del paciente al encuentro de hospitalización."
* hospitalization.admitSource ^definition = "Fuente de admisión del paciente al encuentro de hospitalización."

//* hospitalization.admitSource from FuenteAdmisiónVS


/*******************************************************************************************/
* diagnosis MS
* diagnosis.use 1.. MS
* diagnosis.use from DiagnosisUseVS

* diagnosis.use ^short = "Uso del diagnóstico en el contexto del encuentro de hospitalización."
* diagnosis.use ^definition = "Uso del diagnóstico en el contexto del encuentro de hospitalización."    
* diagnosis.use ^comment = "Comentario adicional sobre el uso del diagnóstico en el contexto del encuentro de hospitalización."


* diagnosis.condition 1.. MS
* diagnosis.condition.reference 1.. MS
* diagnosis.condition.reference ^short = "Referencia a la condición médica del paciente relacionada con el encuentro de hospitalización."
* diagnosis.condition.reference ^definition = "Referencia a la condición médica del paciente relacionada con el encuentro de hospitalización."
* diagnosis.condition.reference ^comment = "Comentario adicional sobre la condición médica del paciente relacionada con el encuentro de hospitalización."


* diagnosis ^slicing.discriminator.type = #value
* diagnosis ^slicing.rules = #open
* diagnosis ^slicing.discriminator.path = "use"

* diagnosis contains
    PrincipalIngreso 1.. MS and
    PrinciaplEgreso 0..1 MS and
    Relacionado 0..1 MS and
    CausaMuerte 0..1 MS


* diagnosis[PrincipalIngreso].id = "PrincipalIngreso"
* diagnosis[PrincipalIngreso].condition only Reference($canonicaCondition)
* diagnosis[PrincipalIngreso].use 1.. MS
* diagnosis[PrincipalIngreso].use = $DiagnosisUseCS#01 "Principal Ingreso" (exactly)

* diagnosis[PrinciaplEgreso].id = "PrinciaplEgreso"
* diagnosis[PrinciaplEgreso].condition only Reference($canonicaConditionPrincipal)
* diagnosis[PrinciaplEgreso].use 1.. MS
* diagnosis[PrinciaplEgreso].use = $DiagnosisUseCS#02 "Principal Egreso" (exactly)


* diagnosis[Relacionado].id = "Relacionado"
* diagnosis[Relacionado].condition only Reference($canonicaCondition)
* diagnosis[Relacionado].use 1.. MS
* diagnosis[Relacionado].use = $DiagnosisUseCS#03 "Relacionado" (exactly)

* diagnosis[CausaMuerte].id = "CausaMuerte"
* diagnosis[CausaMuerte].condition only Reference($canonicaCondition)
* diagnosis[CausaMuerte].use 1.. MS
* diagnosis[CausaMuerte].use = $DiagnosisUseCS#04 "Causa Muerte" (exactly)

/*****************************************************************************************************/

* location MS
* location.location.display MS 
* location.location.display ^short = "Ubicación donde se realiza la atención."
* location.location.type MS
* location.location.type ^short = "Tipo de ubicación donde se realizó la atención al paciente."
* location.location.type ^definition = "Tipo de ubicación donde se realizó la atención al paciente."
* location.location.type from EntornoAtencionVS


* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition ^short = "Condición y destino del usuario al egreso."
* hospitalization.dischargeDisposition ^definition = "Condición y destino del usuario al egreso."
* hospitalization.dischargeDisposition from DisposicionEgresoVS

* hospitalization.destination MS
* hospitalization.destination ^short = "Destino del paciente al egreso del encuentro de hospitalización."
* hospitalization.destination ^definition = "Destino del paciente al egreso del encuentro de hospitalización."
* hospitalization.destination.display MS
* hospitalization.destination.display ^short = "Descripción del destino del paciente al egreso del encuentro de hospitalización."



/*******************************************************/

* extension contains $canonicaClasifTriage named clasiftriage 0..1 MS
* extension[clasiftriage].valueCodeableConcept from NivelTriageVS

// ------------ Comunidad Etnica
* extension contains $canonicaTriageFecha named TriageFecha 0..1 MS
* extension[TriageFecha].valueDateTime 1..1

/**********************************************************/
//* extension contains TriageInfoExtension named TriageInfo 1..1 MS
// * extension contains co-AllergyIntolerance-tipo named TipoAlergia 1..1 MS

/*

* extension contains
    triageClasificacion 1..1 MS and
    fechaTriage 1..1 MS


* extension[triageClasificacion].value[x] only Coding
//* extension[triageClasificacion].value[x] from http://hl7.org/fhir/us/core/ValueSet/omb-race-category (required)
* extension[triageClasificacion].valueCodeableConcept from NivelTriageVS
* extension[triageClasificacion] ^short = "Clasificación del triage del paciente"
* extension[fechaTriage].value[x] only dateTime


/*
* extension contains $canonicaEtnia named etnia 0..1 MS
* extension[etnia] ^short = "Pertenencia étnica del individuo."
* extension[etnia] ^definition = "Identificador para determinar la pertenencia étnica de la persona."
* extension[etnia].valueCodeableConcept from EtniaVS
 

Extension: TriageInfoExtension
Id: co-triage-info
Title: "Información de Triage"
Description: "Extensión para capturar el nivel de triage y la fecha/hora de realización."
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Encounter"


// Nivel de triage (CodeableConcept)
* extension contains nivelTriage 1..1 MS
* extension[nivelTriage].valueCodeableConcept from NivelTriageVS (required)

// Fecha y hora del triage (dateTime)
* extension contains fechaTriage 1..1 MS
* extension[fechaTriage].valueDateTime

*/

/*****************************************************************************/
ValueSet: NivelTriageVS
Id: nivel-triage-vs
Title: "Nivel de Triage"
Description: "Conjunto de niveles de triage"
* include codes from system NivelTriageCS


CodeSystem: NivelTriageCS
Id: nivel-triage-cs
Title: "Triage - Clasificación"
Description: "Triage - Clasificación"
* ^status = #active

* #01 "Triage I" "Triage I"
* #02 "Triage II" "Triage II"
* #03 "Triage III" "Triage III"
* #04 "Triage IV" "Triage IV"
* #05 "Triage V" "Triage V"

/*------------Clasif TTriage------------------------------------------*/
Extension: ClasifTriage
Id: co-encounter-clasiftriage
Description: "para representar la clasificación de triage de una persona."

* value[x] only CodeableConcept
* valueCodeableConcept from NivelTriageVS


/*------------COMUNIDAD ETNICA-----------------------------------------*/
Extension: fechaTriage
Id: co-encounter-fechatriage
Description: "para representar la fecha y hora de realización del triage."

* valueDateTime 1..1