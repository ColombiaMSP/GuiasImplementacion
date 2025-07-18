Profile:        EncounterAmbulatorioCo
Parent:         Encounter
Title:          "EncounterAmbulatorio Co"

//---paciente
* subject only Reference(PacienteCo)

//-- internacion
* type MS
* type = $GrupoServiciosCS#01 "Encuentro Ambulatorio" (exactly)
* type ^short = "Grupo de servicios."

// ------- modalidad de Tecnología de Salud
* serviceType MS
* serviceType from ModalidadTecnologiaSaludVS
* serviceType ^short = "Modalidad de realización de la tecnología de salud."

// -------inicio y fin de la hospitalización
* period MS
* period.start MS
* period.end MS 
* period.start ^short = "Fecha y hora de inicio de la atención."
* period.end ^short = "Fecha y hora de finalización de la atención."


* reasonCode MS
* reasonCode from CausaExternaVS 
* reasonCode ^short = "Causa que motiva la atención del paciente en el encuentro"



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
    Principal 1.. MS and
    Relacionado 0.. MS
 
* diagnosis[Principal].id = "Principal"
* diagnosis[Principal].condition only Reference($canonicaCondition)
* diagnosis[Principal].use 1.. MS
* diagnosis[Principal].use = $DiagnosisUseCS#01 "Principal Ingreso" (exactly)


* diagnosis[Relacionado].id = "Relacionado"
* diagnosis[Relacionado].condition only Reference($canonicaCondition)
* diagnosis[Relacionado].use 1.. MS
* diagnosis[Relacionado].use = $DiagnosisUseCS#03 "Relacionado" (exactly)


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
* hospitalization.destination ^short = "Destino del paciente al egreso del encuentro."
* hospitalization.destination ^definition = "Destino del paciente al egreso del encuentro"
* hospitalization.destination.display MS
* hospitalization.destination.display ^short = "Descripción del destino del paciente al egreso del encuentro."
