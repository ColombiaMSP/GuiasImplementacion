Profile:        ConditionCo
Parent:         Condition
Title:          "Condition Co"
* . ^short = "Diagnóstico principal confirmado o presuntivo con el que egresa el paciente del servicio de salud (Ambulatorio, Urgencias o Hospitalización)."


//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

* subject ^short = "Referencia al paciente al que corresponde el diagnóstico principal de egreso." 
* subject ^definition = "Referencia al paciente al que corresponde el diagnóstico principal de egreso" 

* subject.reference ^short = "Cadena de referencia específica al paciente al que corresponde el diagnóstico principal de egreso." 
* subject.reference ^definition = "Cadena de referencia específica al paciente al que corresponde el diagnóstico principal de egreso." 


* code ^short = "Identificación del diagnóstico principal confirmado o presuntivo con el que egresa el paciente."

/********************************/
* code.coding 1..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains cie10 0..1 and cie11 0..1

* code.coding[cie10].system = "http://hl7.org/fhir/sid/icd-10"
* code.coding[cie10].code from CIE10VS (preferred)
* code.coding[cie10].display 1..1
* code.coding[cie10].code 1..1
* code.coding[cie10].system 1..1

* code.coding[cie11].system = "http://hl7.org/fhir/sid/icd-11"
* code.coding[cie11].code from CIE11VS (preferred)
* code.coding[cie11].display 1..1
* code.coding[cie11].code 1..1
* code.coding[cie11].system 1..1

* code.text 1..1 MS
* code.text ^short = "Nombre del diagnóstico principal de egreso."

* clinicalStatus 0..1 MS 
* verificationStatus 0..1 MS

* clinicalStatus ^short = "Estado actual del diagnostico que afecta a un paciente."
* verificationStatus ^short = "Nivel de certeza acerca de la existencia del diagnostico en un paciente."

