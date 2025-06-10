Profile:        ProcedureCo
Parent:         Procedure
Title:          "Procedure Co"
* . ^short = "Procedimientos realizados durante la atención en Salud Internación."
* . ^definition = "Procedimientos realizados durante la atención en Salud Internación."

* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS
* subject ^short = "Referencia al paciente al que se le ha realizado el procedimiento médico."
* subject ^definition = "Paciente al que se le ha realizado el procedimiento médico."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha realizado el procedimiento médico."
* subject.reference ^definition = "Cadena de referencia específica del paciente al que se le ha realizado el procedimiento médico."


// Fecha de realización del procedimiento médico
* performed[x] MS
* performed[x] ^short = "Fecha de realización del procedimiento (Fecha de entrega de la tecnología)"
* performed[x] ^definition = "Fecha de realización del procedimiento (Fecha de entrega de la tecnología)"

// Código del procedimiento médico
* code MS
* code ^short = "Código que identifica el procedimiento médico realizado al paciente."
* code ^definition = "Código que identifica el procedimiento médico realizado al paciente."
* code from CUPSVS (preferred)


// Código del tipo de procedimiento médico
* category MS
* category ^short = "Tipo de tecnologia en salud."
* category ^definition = "Tipo de tecnologia en salud."
* category from TipoTecnologiaSaludProcedimientoVS


* performer MS
* performer ^short = "Información del profesional de la salud que realiza el procedimiento médico al paciente."
* performer ^definition = "Información del profesional de la salud que realiza el procedimiento médico al paciente."

// Resultado del procedimiento médico
// Código del resultado del procedimiento médico
* outcome MS
* outcome ^short = "Código que identifica el resultado del procedimiento médico."
* outcome ^definition = "Código que identifica el resultado del procedimiento médico."

