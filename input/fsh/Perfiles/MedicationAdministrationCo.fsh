Profile:        MedicationAdministrationCo
Parent:         MedicationAdministration
Title:          "Medication Administration Co"       
* . ^short = "Listado de Medicamentos administrados durante la atención en internación / hospitalización (Tecnologías en Salud)."

//---paciente
* subject only Reference(PacienteCo)
* subject MS
* subject.reference 1.. MS

* subject ^short = "Referencia al paciente al que se le ha prescrito el medicamento." 
* subject ^definition = "Paciente al que se le ha prescrito el medicamento." 
* subject.reference ^short = "Cadena de referencia específica del paciente al que se le ha prescrito el medicamento." 

* status MS 
* status ^short =  "Estado actual del uso del medicamento por parte del paciente."
* subject ^definition = "Estado actual del uso del medicamento por parte del paciente."

//pendiente
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept from CUMSVS (preferred)

* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept ^short = "Código que identifica el medicamento prescripto al paciente."
* medicationCodeableConcept ^definition = "Código que identifica el medicamento prescripto al paciente."
* medicationCodeableConcept ^binding.strength = #preferred

* medicationCodeableConcept ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][+].extension[purpose].valueCode = #candidate
* medicationCodeableConcept ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][=].extension[valueSet].valueCanonical = https://www.minsalud.gov.co/ihc/fhir/ValueSet/IUMVS


//Tipo de tecnología en salud	
* category MS
* category ^short = "Tipo de tecnología en salud."
* category ^definition = "Tipo de tecnología en salud."
* category from TipoTecnologiaSaludMedicamentoVS

// "Finalidad de la tecnología en Salud."
* reasonCode MS
* reasonCode ^short = "Finalidad de la tecnología en Salud."
* reasonCode ^definition = "Finalidad de la tecnología en Salud."
* reasonCode.text MS
* reasonCode from FinalidadTecnologiaVS


//profesional de la salud que administra el medicamento
* performer MS
* performer ^short = "Información del profesional de la salud que administra el medicamento al paciente."
* performer ^definition = "Información del profesional de la salud que administra el medicamento al paciente."
* performer.function MS
* performer.function ^short = "Función del profesional de la salud que administra el medicamento al paciente."
* performer.function ^definition = "Función del profesional de la salud que administra el medicamento al paciente."
* performer.actor MS
* performer.actor ^short = "Referencia al profesional de la salud que administra el medicamento al paciente."
* performer.actor.display ^short = "Nombre del profesional de la salud que administra el medicamento al paciente."
* performer.actor.display ^definition = "Nombre del profesional de la salud que administra el medicamento al paciente."


//
* note MS
* dosage.dose MS
* dosage.dose ^short = "Dosis del medicamento administrado al paciente."
* dosage.dose ^definition = "Dosis del medicamento administrado al paciente."

//fecha de administración del medicamento
* effective[x] MS
* effective[x] ^short = "Fecha de administración del medicamento al paciente."
* effective[x] ^definition = "Fecha de administración del medicamento al paciente."
