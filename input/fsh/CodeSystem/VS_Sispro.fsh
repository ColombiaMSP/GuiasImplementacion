
/********************Causa que motiva la atención*******************************************/

ValueSet: CausaExternaVS
Id: CausaExternaVS
Title: "Causa externa de la atención médica"
Description: "Causa externa de la atención médica"
* ^name = "CausaExternaCS"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "COL"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"

* include codes from system https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=RIPSCausaExterna



// Vía de ingreso del usuario al servicio de salud

// https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=ViaIngresoUsuario


/*************************
41	Condición y destino del usuario al egreso	*/

ValueSet: DisposicionEgresoVS
Id: DisposicionEgresoVS
Title: "Disposición de egreso del paciente"
Description: "Disposición de egreso del paciente"
* ^name = "DisposicionEgresoVS"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"

* ^publisher = "COL"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* include codes from system https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=CondicionyDestinoUsuarioEgreso



ValueSet: FinalidadTecnologiaVS
Id: FinalidadTecnologiaVS
Title: "Motivo de solicitud del procedimiento médico"
Description: "Motivo de solicitud del procedimiento médico."

* ^name = "FinalidadTecnologiaVS"
* ^status = #active
* include codes from system https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=RIPSFinalidadConsultaVersion2



// Vía de administración de la medicamento  				
// https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=VAD 				
// Vía de administración de la medicamento  				
// https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=VAD 				



// Vía de administración de la medicamento  				
		
ValueSet: ViaAdministracionMedicamentoVS
Id: ViaAdministracionMedicamentoVS
Title: "Vía de administración del medicamento"
Description: "Vía de administración del medicamento prescripto al paciente."
* ^name = "ViaAdministracionMedicamentoVS"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "COL"
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* include codes from system https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=VAD
