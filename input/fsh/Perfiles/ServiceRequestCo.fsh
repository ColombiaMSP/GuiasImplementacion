Profile:        ServiceRequestCo
Parent:         ServiceRequest

Title:          "Service Request Co"
* . ^short = "Solicitud de servicio de salud para un paciente."
//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

* subject ^short = "Referencia al paciente al que se le ha solicitado el servicio de salud."
* subject ^definition = "Paciente al que se le ha solicitado el servicio de salud."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha solicitado el servicio de salud."


* code MS
* code ^short = "Código que identifica el servicio de salud solicitado para el paciente."
* code ^definition = "Código que identifica el servicio de salud solicitado para el paciente."
* code from CUPSVS (preferred)

* authoredOn MS

//Fecha de prescripción de las otras tecnologías (Tecnología en salud)	
* authoredOn ^short = "Fecha de prescripción de las otras tecnologías (Tecnología en salud)."

//Tipo de tecnología en salud	
* category MS
* category ^short = "Tipo de tecnología en salud."
* category ^definition = "Tipo de tecnología en salud."
* category from TipoTecnologiaOtrasTecnologiasVS



//Codigo de las otras tecnologías en salud  (código de la tecnología en salud)
* code MS
* code ^short = "Código de las otras tecnologías en salud (código de la tecnología en salud)."

* code ^definition = "Código de las otras tecnologías en salud (código de la tecnología en salud)."


// finalidad de la tecnología en salud	
* reasonCode MS
* reasonCode ^short = "Finalidad de la tecnología en Salud."
* reasonCode ^definition = "Finalidad de la tecnología en Salud."
* reasonCode.text MS
* reasonCode from FinalidadTecnologiaVS



/**************************************************************************************/

Profile:        ServiceRequestProcedureCo
Parent:         ServiceRequest

Title:          "Service Request ProcedureCo"
* . ^short = "Solicitud de procedimiento médico para un paciente."


//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

* subject ^short = "Referencia al paciente al que se le ha solicitado el servicio de salud."
* subject ^definition = "Paciente al que se le ha solicitado el servicio de salud."
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha solicitado el servicio de salud."


* code MS
* code ^short = "Código que identifica el servicio de salud solicitado para el paciente."
* code ^definition = "Código que identifica el servicio de salud solicitado para el paciente."
* code from CUPSVS (preferred)


//Fecha de prescripción de las otras tecnologías (Tecnología en salud)	
* authoredOn ^short = "Fecha de prescripción de las otras tecnologías (Tecnología en salud)."
* authoredOn MS

//Tipo de tecnología en salud	
* category MS
* category ^short = "Tipo de tecnología en salud."
* category ^definition = "Tipo de tecnología en salud."

* category from TipoTecnologiaSaludProcedimientoVS
// VALOR FIJO --- * category.coding.code = "01. Procedimiento en salud"


//Codigo de las otras tecnologías en salud  (código de la tecnología en salud)
* code MS
* code ^short = "Código de las otras tecnologías en salud (código de la tecnología en salud)."
* code ^definition = "Código de las otras tecnologías en salud (código de la tecnología en salud)."
* code from CUPSVS (preferred)



//Finalidad de la tecnología en Salud	
* reasonCode MS
* reasonCode ^short = "Finalidad de la tecnología en Salud"
* reasonCode ^definition = "Finalidad de la tecnología en Salud."
* reasonCode.text MS
* reasonCode from FinalidadTecnologiaVS


* authoredOn MS
//Fecha de prescripción de las otras tecnologías (Tecnología en salud)	
* authoredOn ^short = "Fecha de prescripción de las otras tecnologías (Tecnología en salud)."

