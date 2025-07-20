Alias: $sistema_codificacion_riesgo_observation = https://www.minsalud.gov.co/ihc/fhir/CodeSystem/discrimicion-riesgoCS

Profile:        ObservationCoRiesgo
Parent:         Observation
Title:          "ObservationCoRiesgo"
Description:   "Perfil de la observación de la condición de riesgo del paciente."


//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

// code
* code MS
* code = $loinc#46467-7 "Factores de riesgo" (exactly)
	
* status = #final
* status MS
* status ^short = "Estado de la observación de riesgo del paciente."
* status ^definition = "Estado de la observación de riesgo del paciente."

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Restricción de componentes
* component 2..2
* component contains
    tipoRiesgo 1..1 and
    factorRiesgo 1..1

* component[tipoRiesgo].code = $sistema_codificacion_riesgo_observation#01 "TipoRiesgo" 
* component[tipoRiesgo] ^short = "Clasificación del tipo de riesgo."

* component[tipoRiesgo].valueCodeableConcept from CodigoTipoRiesgoVS


* component[factorRiesgo].code = $sistema_codificacion_riesgo_observation#02 "FactorRiesgo" 
* component[factorRiesgo] ^short = "Descripción del factor de riesgo"
* component[factorRiesgo].valueString MS

* component[factorRiesgo].valueString ^short = "Descripción del factor de riesgo"
* component[factorRiesgo].valueString ^definition = "Descripción del factor de riesgo"


/*************************************************************************/

CodeSystem: CodigoTipoRiesgoCS
Id: CodigoTipoRiesgoCS
Title: "Código Tipo Riesgo Code System"
Description: "Código Tipo Riesgo Code System."
* ^status = #active 


* #01 "Químicos" "Químicos"
* #02 "Físicos" "Físicos"
* #03 "Biomecánicos" "Biomecánicos"
* #04 "Psicosociales" "Psicosociales"
* #05 "Biológicos" "Biológicos"
* #06 "Otro" "Otro"

ValueSet: CodigoTipoRiesgoVS
Id: CodigoTipoRiesgoVS
Title: "Código Tipo Riesgo Value Set"
Description: "Código Tipo Riesgo Value Set."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"   
* ^publisher = "COL"
* include codes from system CodigoTipoRiesgoCS


/***********************************************************************/

Instance: ObservationCoRiesgoExample
InstanceOf: ObservationCoRiesgo
* id = "EjemploObservationCoRiesgo"

* subject.reference = "PacienteCo/12345"
* status = #final
* code = $loinc#46467-7 "Factores de riesgo"
* component[0].valueCodeableConcept = #01 "Químicos"
* component[1].valueString = "Exposición a sustancias químicas en el lugar de trabajo"
