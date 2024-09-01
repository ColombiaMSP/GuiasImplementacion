Alias: $Base = http://hl7.org/fhir/StructureDefinition/Base


// -------------------------------------------------------------------------------- ###

Logical: DocRef05
Parent: $Base
Id: DocRef05
Title: "DocRef05"
Description: "Modelo de DocRef0.5"



* . ^short = "Representacion de modelo DocRef 0.5"
* . ^definition = "..."
* status 1..1 
    code
    "current"
    "xxxx"

* type 1..1 
    code 
    "representacion de tipo de documento que indexa" ""
* date 1..1 date "Sex" "Sex"
* subject 1..1 string "Nationality" "Nationality"
* author 0..1 string "National Identification Document" "National Identification Document"
* custodian 0..1 string "Parent/Guardian" "Name of Parent or Guardian"
* content 0..1 string "Parent/Guardian" "Name of Parent or Guardian"

// -------------------------------------------------------------------------------- ###


Logical: Encounter05
Parent: $Base
Id: Encounter05
Title: "Encounter0.5"
Description: "Encounter0.5"



* . ^short = "Representacion de modelo Encounter 0.5"
* . ^definition = "..."


* actualPeriod 1..1 Period "VAR: 17 y 43" "FechaHora Inicio Atención - FechaHora Fin Atención"
* class 1..1 date "VAR: 18b - Modalidad" "Identificador para determinar la forma en el cual se realiza o entrega la tecnología de salud al usuario en relación con un grupo de servicios - VAR 18b"
* serviceType 1..1 code "VAR: 18b - Grupo de servicios" "NatioVAR: 18b - Grupo de serviciosnality"
* location 0..1 string "VAR: 19- Lugar donde se realiza la atencion" "VAR: 19- Lugar donde se realiza la atencion"
* ingreso 0..1 string "VAR: 20 - Via de ingreso" "VAR: 20 - Via de ingreso"
* destino 0..1 string "Var: 41 - Condición y destino del usuario al egreso"

* class 1..1 "Identificador para determinar la forma en el cual se realiza o
 entrega la tecnología de salud al usuario en relación con un grupo de servicios"

