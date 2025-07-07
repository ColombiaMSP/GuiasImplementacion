Profile:        ObservationCoIncapacidad
Parent:         Observation
Title:          "ObservationCoIncapacidad"
Description:   "Perfil de la observación de la condición de incapacidad del paciente."



//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

* code MS
* code = $loinc#99999 "Detalle Incapacidad" (exactly)


* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Restricción de componentes
* component 2..3
* component contains
    incapacidadAlcance 1..1 and
    diasIncapacidad 1..1 and
    diasMaternal 1..1

* component[incapacidadAlcance].code = $loinc#99998 "TipoIncapacidad" 
* component[incapacidadAlcance] ^short = "Tipo Incapacidad"

* component[incapacidadAlcance].valueCodeableConcept from CodigoTipoIncapacidadVS

* component[diasIncapacidad].code = $loinc#99997 "DiasIncapacidad" 
* component[diasIncapacidad] ^short = "Dias de incapacidad"
* component[diasIncapacidad].valueInteger MS

* component[diasMaternal].code = $loinc#99996 "DiasLicenciaMMaternal" 
* component[diasMaternal].valueString ^short = "Dias de licencia maternal"
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
