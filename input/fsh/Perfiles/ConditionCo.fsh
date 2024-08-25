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

/*
//----Code



* code 1..1 MS

* code only $CodeableConcept-uv-ips
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "$this"
* code ^slicing.description = "Discriminated by the bound value set"
* code ^slicing.rules = #open
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code contains
    problemGPSCode 0..1 MS and
    absentOrUnknownProblem 0..1 MS
* code[problemGPSCode] from $core-problem-finding-situation-event-gps-uv-ips (required)
* code[problemGPSCode] ^short = "Code for a problem from the SNOMED CT GPS code set"
* code[problemGPSCode] ^definition = "Code for a clinical problem that is selected from the SNOMED CT GPS code set."
* code[problemGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[problemGPSCode] ^binding.extension.valueString = "problemGPSCode"
* code[problemGPSCode] ^binding.description = "problemGPS"
* code[absentOrUnknownProblem] from $absent-or-unknown-problems-uv-ips (required)
* code[absentOrUnknownProblem] ^short = "Code for absent problem or for unknown problem"
* code[absentOrUnknownProblem] ^definition = "Code representing the statement \"absent problem\" or the statement \"problems unknown\""
* code[absentOrUnknownProblem] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[absentOrUnknownProblem] ^binding.extension.valueString = "absentOrUnknownProblem"
* code[absentOrUnknownProblem] ^binding.description = "Absent problem or unknown problem"


//--- verificationStatus
* verificationStatus only $CodeableConcept-uv-ips
* verificationStatus MS
* verificationStatus ^comment = "This element is labeled as a modifier because the status contains the code refuted and entered-in-error that mark the Condition as not currently valid."



*/