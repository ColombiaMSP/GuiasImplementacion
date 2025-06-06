/*********************************************************
FrecuenciaCs
*********************************************************/

CodeSystem: FrecuenciaCS
Id: FrecuenciaCS
Title: "Frecuencia de la tecnología de salud"
Description: "Frecuencia de la tecnología de salud"

* ^name = "FrecuenciaCS"
* ^status = #active 

* #1 "Minutos" "Minutos"
* #2 "Horas" "Horas"
* #3 "Día" "Día"
* #4 "Semanas" "Semanas"
* #5 "Mes" "Mes"
* #6 "Año" "Año"
* #7 "Según respuesta al tratamiento" "Según respuesta al tratamiento"

ValueSet: FrecuenciaVS
Id: FrecuenciaVS
Title: "Frecuencia Value Set"
Description: "Frecuencia Value Set."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"   
* ^publisher = "COL"
* include codes from system FrecuenciaCS









//MotivoSolicitudProcedimientoVS - finalidad de la tecnología en salud
//https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=RIPSFinalidadConsultaVersion2


// tipo de tecnología en salud
CodeSystem: TipoTecnologiaSaludCS
Id: TipoTecnologiaSaludCS
Title: "Tipo de tecnología en salud"
Description: "Tipo de tecnología en salud"
* ^name = "TipoTecnologiaSaludCS"
* ^status = #active

* #01 "Procedimiento en salud" "Procedimiento en salud"
* #02 "Medicamento con registo sanitario" "Medicamento con registo sanitario"
* #03 "Medicamento vital no disponible" "Medicamento vital no disponible"
* #04 "Preparación magistral" "Preparación magistral"
* #05 "Medicamento UNIRS" "Medicamento UNIRS"
* #06 "Dispositivo médico" "Dispositivo médico"
* #07 "Componentes sanguíneos" "Componentes sanguíneos"
* #08 "Fluidos orgánicos" "Fluidos orgánicos"
* #09 "Órganos" "Órganos"
* #10 "Tejidos" "Tejidos"

/*****************************************************************/
ValueSet: TipoTecnologiaSaludProcedimientoVS
Id: TipoTecnologiaSaludProcedimientoVS
Title: "TipoTecnologiaSaludProcedimientoVS"
Description: "TipoTecnologiaSaludProcedimientoVS."
* ^name = "TipoTecnologiaSaludProcedimientoVS"
* ^experimental = false
* ^version = "1.0.0"

* include #01 "Procedimiento en salud" from system TipoTecnologiaSaludCS

/*************************************/
ValueSet: TipoTecnologiaSaludMedicamentoVS
Id: TipoTecnologiaSaludMedicamentoVS
Title: "TipoTecnologiaSaludProcedimientoVS"
Description: "TipoTecnologiaSaludProcedimientoVS."
* ^name = "TipoTecnologiaSaludProcedimientoVS"
* ^experimental = false
* ^version = "1.0.0"

* include  #02 "Medicamento con registo sanitario" from system TipoTecnologiaSaludCS
* include  #03 "Medicamento vital no disponible" from system TipoTecnologiaSaludCS
* include  #04 "Preparación magistral" from system TipoTecnologiaSaludCS
* include  #05 "Medicamento UNIRS" from system TipoTecnologiaSaludCS

/***************************************/
ValueSet: TipoTecnologiaOtrasTecnologiasVS
Id: TipoTecnologiaOtrasTecnologiasVS
Title: "TipoTecnologiaOtrasTecnologiasVS"
Description: "TipoTecnologiaOtrasTecnologiasVS."

* ^name = "TipoTecnologiaOtrasTecnologiasVS"
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "COL"

* include  #06 "Dispositivo médico" from system TipoTecnologiaSaludCS
* include  #07 "Componentes sanguíneos" from system TipoTecnologiaSaludCS
* include  #08 "Fluidos orgánicos" from system TipoTecnologiaSaludCS
* include  #09 "Órganos" from system TipoTecnologiaSaludCS
* include  #10 "Tejidos" from system TipoTecnologiaSaludCS

/*********************************************************/


// tipo de tecnología en salud
CodeSystem: MotivoSolicitudProcedimientoCS
Id: MotivoSolicitudProcedimientoCS
Title: "Motivo de solicitud"

Description: "Motivo de solicitud del procedimiento médico."

* ^name = "MotivoSolicitudProcedimientoCS"
* ^status = #active 

// https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=RIPSFinalidadConsultaVersion2


ValueSet: MotivoSolicitudProcedimientoVS
Id: MotivoSolicitudProcedimientoVS
Title: "Motivo de solicitud del procedimiento médico"
Description: "Motivo de solicitud del procedimiento médico."

* ^name = "MotivoSolicitudProcedimientoVS"
* ^experimental = false

* include codes from system MotivoSolicitudProcedimientoCS


/*****************************************************************/