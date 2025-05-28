/*********************************************************
Modalidad Tecnología Salud - V18.1
*********************************************************/

CodeSystem: ModalidadTecnologiaSaludCS
Id: ModalidadTecnologiaSaludCS
Title: "Modalidad de realización de la tecnología de salud"
Description: "Modalidad de realización de la tecnología de salud" 

* ^name = "ModalidadTecnologiaSaludCS"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #01 "Intramural" "Intramural"
* #02 "Extramural unidad móvil" "Extramural unidad móvil"
* #03 "Extramural domiciliaria" "Extramural domiciliaria"
* #04 "Extramural jornada de salud" "Extramural jornada de salud"
* #05 "Extramural (atención pre hospitalaria o transporte asistencial)" "Extramural (atención pre hospitalaria o transporte asistencial)"
* #06 "Telemedicina interactiva" "Telemedicina interactiva"
* #07 "Telemedicina no interactiva" "Telemedicina no interactiva" 
* #08 "Telemedicina - Telexperticia" "Telemedicina - Telexperticia"
* #09 "Telemedicina - Telemonitoreo" "Telemedicina - Telemonitoreo"


ValueSet: ModalidadTecnologiaSaludVS
Title: "Modalidad Tecnologia Salud Value Set"
Id: ModalidadTecnologiaSaludVS
Description:  "Modalidad Tecnologia Salud Value Set."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system ModalidadTecnologiaSaludCS




/*********************************************************
GRUPO DE SERVICIOS - V18.2
*********************************************************/

CodeSystem: GrupoServiciosCS
Id: GrupoServiciosCS
Title: "Grupo de servicios"
Description: "Grupo de servicios" 

* ^name = "GrupoServiciosCS"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #01 "Consulta Externa" "Consulta Externa"
* #02 "Apoyo diagnóstico y complementación terapeútica" "Apoyo diagnóstico y complementación terapeútica"
* #03 "Internación" "Internación"
* #04 "Quirúrgico" "Quirúrgico"
* #05 "Atención inmediata" "Atención inmediata"


ValueSet: GrupoServiciosVS
Title: "Grupo de servicios"
Id: GrupoServiciosVS
Description:  "Grupo de servicios."
* ^experimental = false
* ^version = "1.0.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#COL "Colombia"
* ^publisher = "COL"

* include codes from system GrupoServiciosCS



/******************************************************************/
/*****************************************************************/



CodeSystem: ParentescoCS
Id: ParentescoCS
Title: "Parentesco familiar"
Description: "Parentesco familiar del paciente con el responsable de la atención médica."

* ^name = "ParentescoCS"
* ^status = #active

* #01 "Padres" "Padres"
* #02 "Hermanos" "Hermanos"
* #03 "Tios" "Tios"
* #04 "Abuelos" "Abuelos"


ValueSet: ParentescoVS
Id: ParentescoVS
Description:  "ParentescoVS"
* ^status = #active

* include codes from system ParentescoCS

