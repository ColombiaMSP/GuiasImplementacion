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
Title: "TipoTecnologiaSaludMedicamentoVS"
Description: "TipoTecnologiaSaludMedicamentoVS."
* ^name = "TipoTecnologiaSaludMedicamentoVS"
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




/*****************************************************************/

// Entorno donde se realiza la atención
CodeSystem: EntornoAtencionCS
Id: EntornoAtencionCS
Title: "Entorno de atención"
Description: "Entorno donde se realiza la atención del paciente."
* ^name = "EntornoAtencionCS"
* ^status = #active
* #01 "Hogar" "Hogar"
* #02 "Comunitario" "Comunitario"
* #03 "Escolar" "Escolar"
* #04 "Laboral" "Laboral"
* #05 "Institucional" "Institucional"


ValueSet: EntornoAtencionVS
Id: EntornoAtencionVS
Title: "Entorno de atención del paciente"
Description: "Entorno donde se realiza la atención del paciente."
* ^name = "EntornoAtencionVS"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "COL"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* include codes from system EntornoAtencionCS




CodeSystem: TipoDiagnosticoEgresoCS
Id: TipoDiagnosticoEgresoCS
Title: "Tipo de diagnóstico principal al egreso"
Description: "Tipo de diagnóstico principal al egreso"
* ^name = "TipoDiagnosticoEgresoCS"
* ^status = #active
* #01 "Impresión diagnóstica" "Impresión diagnóstica"
* #02 "Confirmado nuevo" "Confirmado nuevo"
* #03 "Confirmado repetido" "Confirmado repetido"

ValueSet: TipoDiagnosticoEgresoVS
Id: TipoDiagnosticoEgresoVS
Title: "Tipo de diagnóstico principal al egreso"
Description: "Tipo de diagnóstico principal al egreso"
* ^name = "TipoDiagnosticoEgresoVS"
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "COL"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* include codes from system TipoDiagnosticoEgresoCS
	