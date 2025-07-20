Profile:        ObservationCoOtrosProcedimientos
Parent:         Observation
Title:          "ObservationCoOtrosProcedimientos"
* . ^short = "Perfil de la observación de otros procedimientos realizados al paciente."


//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS
* subject ^short = "Referencia al paciente al que se le ha realizado el informe diagnóstico."
* subject ^definition = "Paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^definition = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."


* effectiveDateTime MS
* effectiveDateTime ^short = "Fecha de emisión del informe diagnóstico."
* effectiveDateTime ^definition = "Fecha de emisión del informe diagnóstico."

// Código del informe diagnóstico
* code MS
* code ^short = "Código que identifica el informe diagnóstico del paciente."
* code ^definition = "Código que identifica el informe diagnóstico del paciente."


//Tipo de tecnología en salud	
* category MS
* category ^short = "Tipo de tecnología en salud."
* category ^definition = "Tipo de tecnología en salud."
* category from TipoTecnologiaOtrasTecnologiasVS


