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

//prioridad
* priority MS
* priority ^short = "Clasificación de Triage."
* priority ^definition = "Clasificación de Triage del encuentro de urgencia."
* priority from NivelTriageVS

// fecha de realizacion del triage
* statusHistory 0..1 MS
* statusHistory ^short = "Contiene la información asociada al Triage. El valor de statusHistory.status debe ser 'triage' y la fecha debe ser indicada en period.start"
* statusHistory.status = #triage

* statusHistory.period.start MS
* statusHistory.period.start ^short = "Fecha y hora de realización del triage."

// -------inicio y fin de la hospitalización
* period MS
* period.start MS
* period.end MS 
* period.start ^short = "Fecha y hora de inicio de la atención."
* period.end ^short = "Fecha y hora de finalización de la atención."

* reasonCode MS
* reasonCode from CausaExternaVS 
* reasonCode ^short = "Causa que motiva la atención del paciente en el encuentro de urgencia."

* hospitalization MS
* hospitalization ^short = "Información sobre la hospitalización del paciente."
* hospitalization ^comment = "Comentario adicional sobre la hospitalización del paciente."


* hospitalization.admitSource MS
* hospitalization.admitSource ^short = "Fuente de admisión del paciente al encuentro."
* hospitalization.admitSource ^definition = "Fuente de admisión del paciente al encuentro."

* hospitalization.admitSource from FuenteAdmisionVS


/*******************************************************************************************/
* diagnosis MS
* diagnosis.use 1.. MS
* diagnosis.use from DiagnosisUseVS

* diagnosis.use ^short = "Uso del diagnóstico en el contexto del encuentro."
* diagnosis.use ^definition = "Uso del diagnóstico en el contexto del encuentro."
* diagnosis.use ^comment = "Comentario adicional sobre el uso del diagnóstico en el contexto del encuentro."


* diagnosis.condition 1.. MS
* diagnosis.condition.reference 1.. MS
* diagnosis.condition.reference ^short = "Referencia a la condición médica del paciente relacionada con el encuentro."
* diagnosis.condition.reference ^definition = "Referencia a la condición médica del paciente relacionada con el encuentro."
* diagnosis.condition.reference ^comment = "Comentario adicional sobre la condición médica del paciente relacionada con el encuentro."


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

