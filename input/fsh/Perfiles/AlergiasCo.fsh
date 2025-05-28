Profile:        AlergiaCo
Parent:         AllergyIntolerance
Title:          "Alergias Co"
* . ^short = "Alergia o Intolerancia (generalmente: Riesgo de reacción adversa a una sustancia)."

* patient only Reference(PacienteCo)
* patient MS
* patient.reference 1.. MS

* patient ^short = "Referencia al paciente que presenta la alergia." 
* patient ^definition = "Referencia al paciente que presenta la alergia." 

* patient.reference ^short = "Cadena de referencia específica al paciente que presenta la alérgia." 
* patient.reference ^definition = "Cadena de referencia específica al paciente que presenta la alergia." 


* extension contains co-AllergyIntolerance-tipo named TipoAlergia 1..1 MS
//* TipoAlergia ^short = "Clasificación que identifica el origen específico de la alergia que afecta a un paciente"

* code.text 1..1 MS
* code.text ^short  = "Nombre del alérgeno que desencadena una reacción alérgica en el paciente."	

* clinicalStatus 0..1 MS 
* verificationStatus 0..1 MS

* clinicalStatus ^short = "Estado actual de la alergia o intolerancia que afecta a un paciente."
* verificationStatus ^short = "Nivel de certeza acerca de la existencia de la alergia o intolerancia en un paciente."


//*------------Alergias 866------------------------------------------*/
Extension: TipoAlergia
Id: co-AllergyIntolerance-tipo
Description: "Extensión utilizada para representar el tipo de la alergía."
* . ^short = "Clasificación que identifica el origen específico de la alergia que afecta a un paciente"

* value[x] only CodeableConcept
* value[x] ^short = "Tipo Alergía"
* url 1..1 MS

* valueCodeableConcept from AlergiasVS
* valueCodeableConcept.coding 1..1 MS
  * code 1..1 MS
  * system 0..1 MS
  * display 0..1 MS
* valueCodeableConcept.text 0..1 MS
* valueCodeableConcept 1..1

