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

* authoredOn MS

//Fecha de prescripción de las otras tecnologías (Tecnología en salud)	
* authoredOn ^short = "Fecha de prescripción de las otras tecnologías (Tecnología en salud)."

//Tipo de tecnología en salud	
* category MS
* category ^short = "Tipo de tecnología en salud."
* category ^definition = "Tipo de tecnología en salud."
* category from TipoTecnologiaOtrasTecnologiasVS


// asociar un conjunto de valores estos:
/*
06. Dispositivo médico
07. Componentes sanguíneos
08. Fluidos orgánicos
09. Órganos
10. Tejidos
11. Células
12. Producto Soporte Nutricional
13. Servicio complementario
*/


//Codigo de las otras tecnologías en salud  (código de la tecnología en salud)
* code MS
* code ^short = "Código de las otras tecnologías en salud (código de la tecnología en salud)."

* code ^definition = "Código de las otras tecnologías en salud (código de la tecnología en salud)."


// finalidad de la tecnología en salud	
* reasonCode MS
* reasonCode ^short = "Finalidad de la tecnología en Salud."
* reasonCode ^definition = "Finalidad de la tecnología en Salud."
* reasonCode.text MS
* reasonCode from MotivoSolicitudProcedimientoVS


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


//Finalidad de la tecnología en Salud	
* reasonCode MS
* reasonCode ^short = "Motivo de la solicitud del procedimiento médico."
* reasonCode ^definition = "Motivo de la solicitud del procedimiento médico."
* reasonCode.text MS
* reasonCode from MotivoSolicitudProcedimientoVS




//TipoTecnologiaSaludVS
//
/*
"01. Procedimiento en salud"


06. Dispositivo médico
07. Componentes sanguíneos
08. Fluidos orgánicos
09. Órganos
10. Tejidos

*/

//MotivoSolicitudProcedimientoVS - finalidad de la tecnología en salud:
//https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=RIPSFinalidadConsultaVersion2
