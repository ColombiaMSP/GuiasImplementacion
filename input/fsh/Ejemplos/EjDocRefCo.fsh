/*
* $loinc#34105-7 "Nota de consulta"
* $loinc#34133-9 "Resumen de alta"
* $loinc#34115-6 "Nota de consulta de emergencia"
*/


/*--------------------------------------------------------------------------------------
    1. Document Reference Egreso
--------------------------------------------------------------------------------------*/

Instance: DocumentReferenceEgreso
InstanceOf: DocumentReferenceCo 
Usage: #example
Title : "DocumentReference de Egreso"
Description: "Ejemplo de Document Reference de Egreso."


* status = #current 
* date = "2022-03-03T10:30:00Z"


* type.coding.system = "http://loinc.org"
* type.coding.code = #34133-9
* type.coding.display = "Resumen de alta"

* subject = Reference(Patient/PacienteColombianoMinimo)
* custodian = Reference(Organization/OrganizacionRegionEjemplo)
* author = Reference(Organization/OrganizacionPrestadorEjemplo)
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "Composition/CompositionColombiaEgreso"

/*--------------------------------------------------------------------------------------
    2. Document Reference Ambulatorio
--------------------------------------------------------------------------------------*/

Instance: DocumentReferenceAmbulatorio
InstanceOf: DocumentReferenceCo 
Usage: #example
Title : "DocumentReference de Ambulatorio"
Description: "Ejemplo de Document Reference de Ambulatorio."

* status = #current 
* date = "2022-03-03T10:30:00Z"


* type.coding.system = "http://loinc.org"
* type.coding.code = #34105-7
* type.coding.display = "Nota de consulta"

* subject = Reference(Patient/PacienteColombianoMinimo)
* custodian = Reference(Organization/OrganizacionRegionEjemplo)
* author = Reference(Organization/OrganizacionPrestadorEjemplo)
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "Composition/CompositionColombiaAmbulatorio"


/*--------------------------------------------------------------------------------------
    3. Document Reference Emergencia
--------------------------------------------------------------------------------------*/


Instance: DocumentReferenceEmergencia
InstanceOf: DocumentReferenceCo 
Usage: #example
Title : "DocumentReference de Emergencia"
Description: "Ejemplo de Document Reference de Emergencia."

* status = #current 
* date = "2022-03-03T10:30:00Z"


* type.coding.system = "http://loinc.org"
* type.coding.code = #34115-6

* subject = Reference(Patient/PacienteColombianoMinimo)
* custodian = Reference(Organization/OrganizacionRegionEjemplo)
* author = Reference(Organization/OrganizacionPrestadorEjemplo)
* content.attachment.contentType = #application/fhir+json
* content.attachment.url = "Composition/CompositionColombiaEmergencia"

