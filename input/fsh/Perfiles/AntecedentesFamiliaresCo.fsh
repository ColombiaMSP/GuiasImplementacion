Profile:        AntecedentesFamiliaresCo
Parent:         FamilyMemberHistory
Title:          "Antecedentes Familiares Co"    

* . ^short = "Antecedentes familiares de salud relevantes para el paciente."
* . ^definition = "Antecedentes familiares de salud relevantes para el paciente."        
     

* patient only Reference(PacienteCo)
* patient MS 
* patient.reference 1.. MS
* patient ^short = "Referencia al paciente al que corresponde el antecedente familiar de salud."
* patient ^definition = "Referencia al paciente al que corresponde el antecedente familiar de salud."        
* patient.reference ^short = "Cadena de referencia específica al paciente al que corresponde el antecedente familiar de salud."
* patient.reference ^definition = "Cadena de referencia específica al paciente al que corresponde el antecedente familiar de salud."

* status MS
* status ^short = "Estado actual del antecedente familiar de salud."
* status ^definition = "Estado actual del antecedente familiar de salud."


* condition.code.coding 1..*
* condition.code.coding ^slicing.discriminator.type = #value
* condition.code.coding ^slicing.discriminator.path = "system"
* condition.code.coding ^slicing.rules = #open

* condition.code.coding contains cie10 0..1 and cie11 0..1

* condition.code.coding[cie10].system = "http://hl7.org/fhir/sid/icd-10"
* condition.code.coding[cie10].code from CIE10VS (preferred)
* condition.code.coding[cie10].display 1..1
* condition.code.coding[cie10].code 1..1
* condition.code.coding[cie10].system 1..1

* condition.code.coding[cie11].system = "http://hl7.org/fhir/sid/icd-11"
* condition.code.coding[cie11].code from CIE11VS (preferred)
* condition.code.coding[cie11].display 1..1
* condition.code.coding[cie11].code 1..1
* condition.code.coding[cie11].system 1..1

* condition.code.text 1..1 MS
* condition.code.text ^short = "Nombre del antecedente familiar de salud."
* condition.code.text ^definition = "Nombre del antecedente familiar de salud."
* condition.code.text ^comment = "Comentario adicional sobre el antecedente familiar de salud."







* note MS
* note ^short = "Notas adicionales sobre el antecedente familiar de salud."
* note ^definition = "Notas adicionales sobre el antecedente familiar de salud."
* note.text 1..1 MS
* note.text ^short = "Texto de la nota adicional sobre el antecedente familiar de salud."
* note.text ^definition = "Texto de la nota adicional sobre el antecedente familiar de salud."



* relationship 1..1 MS
* relationship from ParentescoVS
