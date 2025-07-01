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
* code ^short = "Código de la observación de riesgo del paciente."
* code ^definition = "Código de la observación de riesgo del paciente."
//* code from CodigoObservacionRiesgoVS


