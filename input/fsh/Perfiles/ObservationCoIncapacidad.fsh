Alias: $sistema_codificacion_incapacidad_observation = https://www.minsalud.gov.co/ihc/fhir/CodeSystem/discrimicion-incapacidadCS


Profile:        ObservationCoIncapacidad
Parent:         Observation
Title:          "ObservationCoIncapacidad"
Description:   "Perfil de la observación de la condición de incapacidad del paciente."


//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

* code MS
* code = $sistema_codificacion_incapacidad_observation#COD_INCAPACIDAD "Detalle Incapacidad" (exactly)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Restricción de componentes
* component 2..3
* component contains
    incapacidadAlcance 1..1 and
    diasIncapacidad 1..1 and
    diasMaternal 1..1

* component[incapacidadAlcance].code = $sistema_codificacion_incapacidad_observation#01 "TipoIncapacidad" 
* component[incapacidadAlcance] ^short = "Tipo Incapacidad"

* component[incapacidadAlcance].valueCodeableConcept from CodigoTipoIncapacidadVS

* component[diasIncapacidad].code = $sistema_codificacion_incapacidad_observation#02 "DiasIncapacidad" 
* component[diasIncapacidad] ^short = "Dias de incapacidad"
* component[diasIncapacidad].valueInteger MS

* component[diasMaternal].code = $sistema_codificacion_incapacidad_observation#03 "DiasLicenciaMMaternal" 
* component[diasMaternal].valueInteger ^short = "Dias de licencia maternal"
* component[diasMaternal].valueInteger MS



/************************************************************************

Instance: ObservationCoIncapacidad
InstanceOf: ObservationCoIncapacidad

/*************************************************************/

CodeSystem: CodigoTipoIncapacidadCS
Id: CodigoTipoIncapacidadCS
Title: "Código Tipo Incapacidad Code System"
Description: "Código Tipo Incapacidad Code System."

* ^status = #active
* #01 "Nueva" "Nueva"
* #02 "Prórroga" "Prórroga"

ValueSet: CodigoTipoIncapacidadVS
Id: CodigoTipoIncapacidadVS
Title: "Código Tipo Incapacidad ValueSet"
Description: "Código Tipo Incapacidad ValueSet"
* include codes from system CodigoTipoIncapacidadCS
