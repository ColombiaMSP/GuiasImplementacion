Instance: AlergiaColombia
InstanceOf: AlergiaCo
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
//* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies "No known allergies"
//* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies "No known allergies"
* code.text = "alergia a nueces"
//* code.coding.system = "http://hl7.org/fhir/sid/icd-10"

//* patient = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"

* patient =  Reference(PacienteColombiano) "Paciente Colombiano"

* extension[TipoAlergia].url = "https://www.minsalud.gov.co/ihc/fhir/StructureDefinition/co-AllergyIntolerance-tipo"
* extension[TipoAlergia].valueCodeableConcept.coding.code = #03
* extension[TipoAlergia].valueCodeableConcept.coding.system = "https://www.minsalud.gov.co/ihc/fhir/CodeSystem/AlergiasCS"


