Profile:        DiagnosticReportCo
Parent:         DiagnosticReport
Title:          "Diagnostic Report Co"
* . ^short = "Informe diagnóstico del paciente."
* . ^definition = "Informe diagnóstico del paciente."

* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS
* subject ^short = "Referencia al paciente al que se le ha realizado el informe diagnóstico."
* subject ^definition = "Paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^definition = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."

// Fecha de emisión del informe diagnóstico
* issued MS
* issued ^short = "Fecha de emisión del informe diagnóstico."
* issued ^definition = "Fecha de emisión del informe diagnóstico."

// Código del informe diagnóstico
* code MS
* code ^short = "Código que identifica el informe diagnóstico del paciente."
* code ^definition = "Código que identifica el informe diagnóstico del paciente."

// Código del tipo de informe diagnóstico
* category MS
* category ^short = "Código que identifica el tipo de informe diagnóstico."
* category ^definition = "Código que identifica el tipo de informe diagnóstico."
// category from TipoInformeDiagnosticoVS

