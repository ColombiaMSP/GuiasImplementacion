Instance : BundleColombiaCo
InstanceOf : BundleCo
Title : "Bundle Colombiano"
Usage : #example
Description: "Ejemplo de Bundle"

* type = #transaction

//* identifier.system = "https://www.minsalud.gov.co/ihc/documentos"
//* identifier.value = "123456789"

* timestamp = "2022-03-03T10:30:00Z"


//DocReference
//* entry[DocumentRef].fullUrl = "DocumentReference/DocumentReferenceCo"
* entry[DocumentRef].fullUrl = "urn:uuid:852399a9-c9ca-429e-9c8a-e39c23c093f4"
* entry[DocumentRef].resource = DocumentReferenceColombia
* entry[DocumentRef].request.method = #POST
* entry[DocumentRef].request.url = "DocumentReference"


//Composition
* entry[RDA].fullUrl = "Composition/CompositionColombia"
* entry[RDA].resource = CompositionColombia
* entry[RDA].request.method = #POST
* entry[RDA].request.url = "Composition"


//Practitioner
* entry[Profesional].fullUrl = "Practitioner/ProfesionalColombia"
* entry[Profesional].resource = ProfesionalColombia
* entry[Profesional].request.method = #POST
* entry[Profesional].request.url = "Practitioner"

//Condition
* entry[Diagnosticos].fullUrl = "Condition/ConditionColombia"
* entry[Diagnosticos].resource = ConditionColombia
* entry[Diagnosticos].request.method = #POST
* entry[Diagnosticos].request.url = "Condition"


//Alergia-Intolerancia
* entry[Alergias].fullUrl = "AllergyIntolerance/AlergiaColombia"
* entry[Alergias].resource = AlergiaColombia
* entry[Alergias].request.method = #POST
* entry[Alergias].request.url = "AllergyIntolerance"


//Medicaction
* entry[Medicaciones].fullUrl = "MedicationStatement/MedicationStatementColombia" 
* entry[Medicaciones].resource = MedicationStatementColombia
* entry[Medicaciones].request.method = #POST
* entry[Medicaciones].request.url = "MedicationStatement"

//Patient
* entry[Patient].fullUrl = "urn:uuid:9fa12cbc-f37b-11ec-b939-0242ac120002"
* entry[Patient].resource = PacienteColombianoMinimo
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient"