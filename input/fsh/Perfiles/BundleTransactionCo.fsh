
Profile: BundleTransactionCo
Parent: Bundle
Title: "BundleTransactionCo"
Description: "....."

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
    BundleDOCUMENT 1..1 and 
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
* entry[BundleDOCUMENT] ^short = "BundleDOCUMENT."
* entry[BundleDOCUMENT] ^definition = "BundleDOCUMENT"

* entry[BundleDOCUMENT].resource 1..
* entry[BundleDOCUMENT].resource only BundleDOCUMENT

//metodo POST
* entry[BundleDOCUMENT].request 1..
* entry[BundleDOCUMENT].request.method = #POST



/* --------- PACIENTE ---------*/
* entry[Patient] ^short = "Paciente"
* entry[Patient] ^definition = "Paciente."

* entry[Patient].resource 1..
* entry[Patient].resource only PacienteCo
* entry[Patient].request.method 
* entry[Patient].request.method = #POST



