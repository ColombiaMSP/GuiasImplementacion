Profile:        ObservationCo
Parent:         Observation
Title:          "Observation Co"
* . ^short = "Observación clínica del paciente."
* . ^definition = "Observación clínica del paciente."

//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS
* subject ^short = "Referencia al paciente al que se le ha realizado el informe diagnóstico."
* subject ^definition = "Paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^definition = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."

//tipo de tecnología en salud
* category MS
* category ^short = "Tipo de tecnología en salud."
* category ^definition = "Tipo de tecnología en salud."
* category from TipoTecnologiaSaludProcedimientoVS


// Fecha de emisión del informe diagnóstico
* issued MS
* issued ^short = "Fecha de administración o aplicación de las otras tecnologías en salud"
* issued ^definition = "Fecha de administración o aplicación de las otras tecnologías en salud."

// Código del informe diagnóstico
* code MS
* code ^short = "Código que identifica el informe diagnóstico del paciente."
* code ^definition = "Código que identifica el informe diagnóstico del paciente."


// Código del tipo de informe diagnóstico
* category MS
* category ^short = "Codigo de las otras tecnologías en salud  (código de la tecnología en salud)."
* category ^definition = "Código que identifica el tipo de informe diagnósticoCodigo de las otras tecnologías en salud  (código de la tecnología en salud)."
// category from TipoInformeDiagnosticoVS

// Código del resultado del informe diagnóstico
/** valueCodeableConcept 1.. MS
* valueCodeableConcept only CodeableConcept
//* valueCodeableConcept from  
* valueCodeableConcept ^short = "codificación del resultado del informe diagnóstico."*/

