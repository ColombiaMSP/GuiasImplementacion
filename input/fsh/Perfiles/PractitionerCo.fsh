Profile:        PractitionerCo
Parent:         Practitioner
Title:          "Profesional Co"
* ^name = "MedicoColombiano"
* . ^short = "Una persona con responsabilidad formal en la prestación de servicios de salud o servicios relacionados."


//------------Identificadores, campo 36 de la norma
* identifier ^short = "Identificación del profesional de la salud."
* identifier ^definition = "Identificación del profesional de la salud."

* identifier 1.. MS

* identifier.type 1.. MS

* identifier.type ^short = "Descripción del tipo de identificación del profesional de la salud."
* identifier.type ^definition = "Descripción del tipo de identificación del profesional de la salud"

* identifier.type.coding.code from IdentificadoresProfesionalVS
* identifier.type.coding.code ^short = "Tipo de identificación del documento del profesional del profesional de la salud."
* identifier.type.coding.code ^definition = "Codificación del tipo de identificación del documento del profesional del profesional de la salud."

* identifier.type.extension ^short = "Extensión para representar país del documento de identificación del profesional de la salud."
* identifier.type.extension ^definition = "Extensión para representar país del documento de identificación del profesional de la salud." 
* identifier.type.extension contains Pais named pais_origen 1..1  

* identifier.value 1.. MS
* identifier.value ^short = "Número de documento de identificación del profesional de la salud."
* identifier.value ^definition = "Número de documento de identificación del profesional de la salud."


//------------------------------------------------------------------------------------------

/*
* ^purpose = """
    * This profile is intended to support workflows where:
      * this happens; or
      * that happens
    * This profile is not intended to support workflows where:
      * nothing happens
  """
*/