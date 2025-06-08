Profile:        ProcedureCo
Parent:         Procedure
Title:          "Procedure Co"
* . ^short = "Procedimiento médico realizado a un paciente."
* . ^definition = "Procedimiento médico realizado a un paciente."

* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS
* subject ^short = "Referencia al paciente al que se le ha realizado el procedimiento médico."
* subject ^definition = "Paciente al que se le ha realizado el procedimiento médico."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha realizado el procedimiento médico."
* subject.reference ^definition = "Cadena de referencia específica del paciente al que se le ha realizado el procedimiento médico."


// Fecha de realización del procedimiento médico
* performed[x] MS
* performed[x] ^short = "Fecha de realización del procedimiento médico."
* performed[x] ^definition = "Fecha de realización del procedimiento médico."

// Código del procedimiento médico
* code MS
* code ^short = "Código que identifica el procedimiento médico realizado al paciente."
* code ^definition = "Código que identifica el procedimiento médico realizado al paciente."

// Código del tipo de procedimiento médico
* category MS
* category ^short = "Código que identifica el tipo de procedimiento médico."
* category ^definition = "Código que identifica el tipo de procedimiento médico."
//* category from TipoProcedimientoVS

// Código del resultado del procedimiento médico
* outcome MS
* outcome ^short = "Código que identifica el resultado del procedimiento médico."
* outcome ^definition = "Código que identifica el resultado del procedimiento médico."

