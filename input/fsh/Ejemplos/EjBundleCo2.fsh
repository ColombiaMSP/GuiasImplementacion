Instance : BundleColombiaCo2
InstanceOf : BundleCo
Title : "Bundle Colombiano2"
Usage : #example
Description: "Ejemplo de Bundle"

* type = #transaction

//* identifier.system = "https://www.minsalud.gov.co/ihc/documentos"
//* identifier.value = "123456789"

* timestamp = "2022-03-03T10:30:00Z"


//DocReference
* entry[DocumentRef].fullUrl =  "urn:uuid:391699f0-f37b-11ec-b939-0242ac120002"
* entry[DocumentRef].resource = DocumentReferenceColombia2
* entry[DocumentRef].request.method = #POST
* entry[DocumentRef].request.url = "DocumentReference"


//Composition
* entry[RDA].fullUrl = "urn:uuid:ae5a4562-f379-4e27-b5e6-3c49746812be"
* entry[RDA].resource = CompositionColombia2
* entry[RDA].request.method = #POST
* entry[RDA].request.url = "Composition"


//Practitioner
* entry[Profesional].fullUrl = "uuid:urn:149226c1-efcb-4b86-bb2c-ed8d95c986c3"
* entry[Profesional].resource = ProfesionalColombia2
* entry[Profesional].request.method = #POST
* entry[Profesional].request.url = "Practitioner"

//Condition
* entry[Diagnosticos].fullUrl = "uuid:urn:9d1a0c5e-b128-412b-b26d-77b563875e8f"
* entry[Diagnosticos].resource = ConditionColombia2
* entry[Diagnosticos].request.method = #POST
* entry[Diagnosticos].request.url = "Condition"


//Alergia-Intolerancia
* entry[Alergias].fullUrl = "uuid:urn:39f0ed16-7137-409e-a9f0-22553f6e7b82"
* entry[Alergias].resource = AlergiaColombia2
* entry[Alergias].request.method = #POST
* entry[Alergias].request.url = "AllergyIntolerance"


//Medicaction
* entry[Medicaciones].fullUrl = "uuid:urn:0bb7532e-171a-4a0b-adc3-0a9c0c5cafe2"
* entry[Medicaciones].resource = MedicationStatementColombia2
* entry[Medicaciones].request.method = #POST
* entry[Medicaciones].request.url = "MedicationStatement"

//Patient
* entry[Patient].fullUrl = "urn:uuid:2f8d6332-e339-457d-b5e8-1a140a1f3ea1"
* entry[Patient].resource = PacienteColombianoMinimo2
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient"

//-----------------------------------------------------------------------------------------------------------------------------------

//--------------Ejemplo 3 - paciente resumido

Instance: PacienteColombianoMinimo2
InstanceOf: PacienteCo
Description: "Ejemplo de Paciente Mínimo2."

Usage: #example

* identifier[0].type.coding.system = $cs_identper //* identifier.type.coding.system = $cs_identper
* identifier[0].type.coding.code = #CC //* identifier.type.coding.code = #CC
* identifier[0].type.coding.display = "Cédula ciudadanía"

* identifier[0].value = "98765"
* identifier[0].assigner.display = "Registraduria Nacional"


* identifier[0].type.extension.url = $Pais
* identifier[0].type.extension.valueCodeableConcept.coding.system = "https://www.minsalud.gov.co/ihc/fhir/CodeSystem/PaisesCS"
* identifier[0].type.extension.valueCodeableConcept.coding.code = #170 "Colombia"

* name[0].given = "Luis"
* name[0].given[1] = "Alberto"

* name[0].family = "Sanchez"
* name[0].family.extension[mothers-family].valueString = "Martinez"

* gender = #male

* birthDate = "1974-12-25"


// -------------------------------------------------------------------------------------------------------//

Instance: ConditionColombia2
InstanceOf: ConditionCo
Usage: #example
Description: "Ejemplo de Condición/Antecedente 2 de Paciente."

* subject = Reference(urn:uuid:2f8d6332-e339-457d-b5e8-1a140a1f3ea1)
* meta.profile = $canonicaCondition 

//* code = http://hl7.org/fhir/sid/icd-10#E10.4 "Diabetes mellitus insulinodependiente, con complicaciones oftálmicas"
* code = http://hl7.org/fhir/sid/icd-10#E10.4 "Type 1 diabetes mellitus : With neurological complications"

* code.text = "Diabetes Tipo 1, con complicaciones neurologicas"
* code.coding.code = #E10.4 
* code.coding.system = "http://hl7.org/fhir/sid/icd-10"
* code.coding.display = "Type 1 diabetes mellitus : With neurological complications"

// -------------------------------------------------------------------------------------------------------//

Instance: MedicationStatementColombia2
InstanceOf: MedicationStatementCo
Usage: #example
Description: "Ejemplo de MedicationStatement/MedicaciónPaciente 2."

* meta.profile = $canonicaMedication

* subject = Reference(urn:uuid:2f8d6332-e339-457d-b5e8-1a140a1f3ea1)
* status = #active

* medicationCodeableConcept = https://www.minsalud.gov.co/CodeSystem/CUMS#20038383 "10.4 MG DE MONTELUKAST SODICO EQUIVALENTE A MONTELUKAST"

// -------------------------------------------------------------------------------------------------------//



Instance: AlergiaColombia2
InstanceOf: AlergiaCo
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
//* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies "No known allergies"
//* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies "No known allergies"
* code.text = "alergia a nueces"
//* code.coding.system = "http://hl7.org/fhir/sid/icd-10"

//* patient = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"

* patient =  Reference(urn:uuid:2f8d6332-e339-457d-b5e8-1a140a1f3ea1) "Paciente Colombiano"

* extension[TipoAlergia].url = "https://www.minsalud.gov.co/ihc/fhir/StructureDefinition/co-AllergyIntolerance-tipo"
* extension[TipoAlergia].valueCodeableConcept.coding.code = #03
* extension[TipoAlergia].valueCodeableConcept.coding.system = "https://www.minsalud.gov.co/ihc/fhir/CodeSystem/AlergiasCS"




//-------------------------------------------------------------------------------------------------
Instance: CompositionColombia2
InstanceOf: CompositionCo
Usage: #example
Description: "Ejemplo de Documento RDA Colombiano."

* type = $loinc#60591-5 "Patient Summary Document"

* subject = Reference(urn:uuid:2f8d6332-e339-457d-b5e8-1a140a1f3ea1)
* date = "2022-03-05T18:30:00+01:00"
* status = #final

/* otra forma de referencial al profesional, solo con la identificacion.
* author.identifier.type.coding.system = $cs_identper#CC
* author.identifier.value = "12345"
*/

* author = Reference(uuid:urn:149226c1-efcb-4b86-bb2c-ed8d95c986c3)
* title = "Resumen de Paciente Colombia"

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

// ------- seccion de condition, problemas activos.
* section[sectionDiagnosticos].title = "Condiciones del Paciente"

* section[sectionDiagnosticos].code = http://loinc.org#11450-4 "Problem list Reported"
* section[sectionDiagnosticos].text.status = #generated
* section[sectionDiagnosticos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CONDICIONES</div>"
* section[sectionDiagnosticos].entry = Reference(uuid:urn:9d1a0c5e-b128-412b-b26d-77b563875e8f)



// ------- seccion de medicamentos
* section[sectionMedicacion].title = "Medicamentos"

* section[sectionMedicacion].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[sectionMedicacion].text.status = #generated
* section[sectionMedicacion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MEDICAMENTOS</div>"
* section[sectionMedicacion].entry = Reference(uuid:urn:0bb7532e-171a-4a0b-adc3-0a9c0c5cafe2)


// ------- seccion de Alergias
* section[sectionAlergias].title = "Alergias"

* section[sectionAlergias].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ALERGIAS</div>"
* section[sectionAlergias].entry = Reference(uuid:urn:39f0ed16-7137-409e-a9f0-22553f6e7b82)


//--------------------------------------------------------------------------

Instance: DocumentReferenceColombia2
InstanceOf: DocumentReferenceCo 
Usage: #example



* status = #current 
* date = "2022-03-03T10:30:00Z"

//* type = http://loinc.org#60591-5
* type.coding.system = "http://loinc.org"
* type.coding.code = #60591-5

* subject = Reference(urn:uuid:2f8d6332-e339-457d-b5e8-1a140a1f3ea1)

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

* author = Reference(Organization/OrganizacionPrestadorEjemplo)

* content.attachment.contentType = #application/fhir+json
// ANTES: * content.attachment.url = "https://www.minsalud.gov.co/ihc/Bogota/Composition/3213131"

* content.attachment.url = "urn:uuid:ae5a4562-f379-4e27-b5e6-3c49746812be"


Instance: ProfesionalColombia2
InstanceOf: PractitionerCo
Usage: #example
Description: "Ejemplo de Profesional Colombiano."


* identifier[0].type.coding.system = $cs_identper //* identifier.type.coding.system = $cs_identper
* identifier[0].type.coding.code = #CC //* identifier.type.coding.code = #CC
* identifier[0].type.coding.display = "Cédula ciudadanía"


* identifier[0].value = "12345"
* identifier[0].assigner.display = "Registraduria Nacional"

* identifier[0].type.extension.url = $Pais
* identifier[0].type.extension.valueCodeableConcept.coding.system = "https://www.minsalud.gov.co/ihc/fhir/CodeSystem/PaisesCS"
* identifier[0].type.extension.valueCodeableConcept.coding.code = #170 "Colombia"
	