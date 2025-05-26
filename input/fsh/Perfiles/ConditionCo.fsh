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

* code.coding.code 1..1
* code.coding.code from CIE10VS (preferred) 
* code.coding.code ^short = "Código del diagnóstico principal de egreso"

* code.coding.system 1..1
* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.system ^short = "Sistema de codificación para el diagnóstico principal de egreso"

* code.coding.display 1..1
* code.coding.display ^short = "Descripción del código en sistema de codificación" 


* code.text 1..1 MS
* code.text ^short = "Nombre del diagnóstico principal de egreso."

* clinicalStatus 0..1 MS 
* verificationStatus 0..1 MS

* clinicalStatus ^short = "Estado actual del diagnostico que afecta a un paciente."
* verificationStatus ^short = "Nivel de certeza acerca de la existencia del diagnostico en un paciente."

