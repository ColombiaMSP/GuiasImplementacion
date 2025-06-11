Profile:        ObservationCoIncapacidad
Parent:         Observation
Title:          "ObservationCoIncapacidad"
Description:   "Perfil de la observación de la condición de incapacidad del paciente."



//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS
* subject ^short = "Referencia al paciente al que se le ha realizado el informe diagnóstico."
* subject ^definition = "Paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."
* subject.reference ^definition = "Cadena de referencia específica del paciente al que se le ha realizado el informe diagnóstico."


