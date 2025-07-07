
Profile: BundleCoTransaction
Parent: Bundle
Id: BundleCoTransaction
Title: "Bundle Co Transaction"
Description: "Se describe como debe ser el recurso Bundle para transportar Document Reference, Composition -RDA-, Conditions, Alergias, Medicaciones, Antecedentes Familiares y Paciente."

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
    BundleDocument 1..1 and
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
* entry[BundleDocument] ^short = "RDA - Composition."
* entry[BundleDocument] ^definition = "Registro Digital de Atención - Composition"

* entry[BundleDocument].resource 1..
* entry[BundleDocument].resource only BundleDOCConsultaExterna or BundleDOCUrgencia or BundleDOCInternacion


//metodo POST
* entry[BundleDocument].request 1..
* entry[BundleDocument].request.method = #POST


/*   --------- Practitioner ---------*/
* entry[Profesional] ^short = "Profesional."
* entry[Profesional] ^definition = "Profesional"

* entry[Profesional].resource 1..
* entry[Profesional].resource only PractitionerCo

//metodo POST
* entry[Profesional].request 1..
* entry[Profesional].request.method = #POST


/* --------- PACIENTE ---------*/
* entry[Patient] ^short = "Paciente"
* entry[Patient] ^definition = "Paciente."

* entry[Patient].resource 1..
* entry[Patient].resource only PacienteCo
* entry[Patient].request.method 
* entry[Patient].request.method = #POST





