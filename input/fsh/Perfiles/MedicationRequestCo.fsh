Profile:        MedicationRequestCo
Parent:         MedicationRequest

Title:          "Medication Request Co"
* . ^short = "Solicitud de medicamento para un paciente."

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
//* medicationCodeableConcept only $CUMSvs
//* medicationCodeableConcept from $absent-or-unknown-medications-uv-ips (extensible)
* medicationCodeableConcept from CUMSVS (extensible)

* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept ^short = "Código que identifica el medicamento prescripto al paciente."
* medicationCodeableConcept ^definition = "Código que identifica el medicamento prescripto al paciente."
* medicationCodeableConcept ^binding.strength = #preferred

* medicationCodeableConcept ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][+].extension[purpose].valueCode = #candidate
* medicationCodeableConcept ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][=].extension[valueSet].valueCanonical = https://www.minsalud.gov.co/ihc/fhir/ValueSet/IUMVS

* note MS

* dosageInstruction.text MS
* dosageInstruction ^short = "Instrucciones de dosificación del medicamento prescripto al paciente."    

//Frecuencia de la administración del medicamento - Código de unidad de tiempo			
* dosageInstruction.timing MS

* dosageInstruction.timing.code from FrecuenciaVS

* dosageInstruction.timing ^short = "Frecuencia de la administración del medicamento prescripto al paciente."
* dosageInstruction.timing ^definition = "Frecuencia de la administración del medicamento prescripto al paciente."
* dosageInstruction.timing ^comment = "Comentario adicional sobre la frecuencia de la administración del medicamento prescripto al paciente."

// Frecuencia de  administración del medicamento - Cantidad			
// * dosageInstruction.timing.repeat.frequency MS
// * dosageInstruction.timing.repeat.frequency ^short = "Cantidad de veces que se debe administrar el medicamento prescripto al paciente."
// * dosageInstruction.timing.repeat.frequency ^definition = "Cantidad de veces que se debe administrar el medicamento prescripto al paciente."
// * dosageInstruction.timing.repeat.frequency ^comment = "Comentario adicional sobre la cantidad de veces que se debe administrar el medicamento prescripto al paciente."
* dosageInstruction.timing.repeat.count MS

// -- via de administración del medicamento

// Vía de administración de la medicamento  				
// https://web.sispro.gov.co/WebPublico/Consultas/ConsultarDetalleReferenciaBasica.aspx?Code=VAD 				

* dosageInstruction.route MS
* dosageInstruction.route ^short = "Vía de administración de la medicamento  ."
* dosageInstruction.route ^definition = "Vía de administración de la medicamento  ."

// Fecha de prescripción del medicamento (Tecnología en salud)			
* authoredOn MS
* authoredOn ^short = "Fecha de prescripción del medicamento al paciente."  
* authoredOn ^definition = "Fecha de prescripción del medicamento al paciente."