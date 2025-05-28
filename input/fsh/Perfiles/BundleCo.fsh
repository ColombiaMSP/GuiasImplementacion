
Profile: BundleCo
Parent: Bundle
Id: BundleCo
Title: "Bundle Co"
Description: "Se describe como debe ser el recurso Bundle para transportar Document Reference, Composition -RDA-, Conditions."

* type = #transaction

//------Entradas
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.description = "Corresponde a cada una de las entradas del Bundle."
* entry ^slicing.rules = #closed
* entry.resource MS


* entry contains
    DocumentRef 1..1 and
    Profesional 1..1 and
    RDA 1..1 and
    Diagnosticos 1..* and    
    Alergias 0..* and
    Medicaciones 0..* and    
    Patient 1..1
  

/*   --------- Document REF ---------*/
* entry[DocumentRef] ^short = "Document Reference."
* entry[DocumentRef] ^definition = "Indica los documentos de referencia."

* entry[DocumentRef].resource 1..
* entry[DocumentRef].resource only DocumentReferenceCo

//metodo POST
* entry[DocumentRef].request 1..
* entry[DocumentRef].request.method = #POST


/*   --------- Compostion ---------*/
* entry[RDA] ^short = "RDA - Composition."
* entry[RDA] ^definition = "Registro Digital de Atención - Composition"

* entry[RDA].resource 1..
* entry[RDA].resource only CompositionCo

//metodo POST
* entry[RDA].request 1..
* entry[RDA].request.method = #POST


/*   --------- Practitioner ---------*/
* entry[Profesional] ^short = "Profesional."
* entry[Profesional] ^definition = "Profesional"

* entry[Profesional].resource 1..
* entry[Profesional].resource only PractitionerCo

//metodo POST
* entry[Profesional].request 1..
* entry[Profesional].request.method = #POST

/* --------- Condition ---------*/
* entry[Diagnosticos] ^short = "Condiciones."
* entry[Diagnosticos] ^definition = "Corresponden a los diagnosticos."

* entry[Diagnosticos].resource 1..
* entry[Diagnosticos].resource only ConditionCo

//metodo POST
* entry[Diagnosticos].request 1..
* entry[Diagnosticos].request.method = #POST



/* --------- Alergias ---------*/
* entry[Alergias] ^short = "Alergias/Intolerancias"
* entry[Alergias] ^definition = "Alergias/Intolerancias."

* entry[Alergias].resource 1..
* entry[Alergias].resource only AlergiaCo
* entry[Alergias].request.method = #POST



/* --------- Medicamentos ---------*/
* entry[Medicaciones] ^short = "Medicamentos"
* entry[Medicaciones] ^definition = "Medicamentos"

* entry[Medicaciones].resource 1..
* entry[Medicaciones].resource only MedicationStatementCo 
* entry[Medicaciones].request.method = #POST


/* --------- PACIENTE ---------*/
* entry[Patient] ^short = "Paciente"
* entry[Patient] ^definition = "Paciente."

* entry[Patient].resource 1..
* entry[Patient].resource only PacienteCo
* entry[Patient].request.method 
* entry[Patient].request.method = #POST





