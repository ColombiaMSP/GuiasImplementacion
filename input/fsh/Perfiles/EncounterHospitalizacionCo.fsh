Profile:        EncounterHospitalizacionCo
Parent:         Encounter
Title:          "EncounterHospitalizacion Co"
* . ^short = "Encuentro de hospitalización del paciente en el servicio de salud (Hospitalización)."

//---paciente
* subject only Reference(PacienteCo)

//-- internacion
* type MS
* type = $GrupoServiciosCS#03 "Internación"


// ------- modalidad de Tecnología de Salud
* serviceType MS
* serviceType from ModalidadTecnologiaSaludVS



// -------inicio y fin de la hospitalización
* period MS
* period.start MS
* period.end MS 


* reasonCode MS
* reasonCode.text ^short = "Motivo del encuentro de hospitalización."
* reasonCode.text ^definition = "Motivo del encuentro de hospitalización."
* reasonCode.text MS


* hospitalization MS
* hospitalization ^short = "Información sobre la hospitalización del paciente."
* hospitalization ^definition = "Información sobre la hospitalización del paciente."
* hospitalization ^comment = "Comentario adicional sobre la hospitalización del paciente."


* hospitalization.admitSource MS


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
* diagnosis[PrinciaplEgreso].condition only Reference($canonicaCondition)
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

/***** pendiente modelo completo de lugares ******/
* location MS
* location.location.display MS 
* location.location.display ^short = "UBICACION DONDE SE REALIZO LA ATENCION."
