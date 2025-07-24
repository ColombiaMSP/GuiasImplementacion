Profile: DocumentReferenceCo
Parent: DocumentReference
Title: "Referencia de Documentos"
Description: "Docuento utilizado para guardar referencias."


* type 1.. MS
* type ^short = "Tipo de documento: Ambulatorio; Hospitalario; Urgencias"

* type.coding 1..1 MS
* type.coding ^short = "Código del tipo de documento."

* type.coding.code ^short = "Corresponde al tipo de documento que se está enviando"
* type.coding.code 1..1
* type.coding.code from ConjuntoDocumentosVS (required)

* type.coding.system ^short = "Sistema de codificación"
* type.coding.system = "http://loinc.org"



//* --- Fecha -----
* date 1..1 MS
* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"


* status 1..1 MS
* status = #current 
* status ^short = "Estado del Documento. Valor Fijo: current"
* status ^definition = "Indica el estado del documento."

//-----------PACIENTE --------- 
* subject 1..1 MS
* subject ^short = "Representa al paciente."

* subject.reference 1..
* subject.reference ^short = "URL que referencia al recurso paciente."


* subject only Reference(PacienteCo)


//-----------CUSTODIAN ---------
* custodian 1..1 MS
* custodian ^short = "Corresponde a la región encargada de mantener el documento RDA."

* custodian.reference 1..1
* custodian.reference ^short = "URL que indica la Organización."

* custodian only Reference(OrganizacionCo)



//-----------AUTOR ---------
* author 1..1 MS
* author ^short = "Corresponde la institución donde se creó el documento RDA."
* author.reference 1..
* author.reference ^short = "URL que indica el autor."

* author only Reference(OrganizacionCo) 


//-----------Contenido : Composition ---------
* content.attachment MS
* content.attachment ^short = ""
* content.attachment.url 1..1 MS
* content.attachment.url ^short = "Se debe completar URL del recurso RDA, enviado dentro del bundle."

/**************nuevas variables V0.5*********************************************************************/
* category 0..1 MS
* category ^short = "Grupo de servicios al que pertenece el documento."   
* category.coding 1..1 MS
* category.coding ^short = "..."  
* category.coding.code 1..1
* category.coding.code ^short = "...." 
* category.coding.code from GrupoServiciosVS (required)

/**************fin nuevas variables V0.5*****************************************************************/

