Profile: DocumentReferencePDF
Parent: DocumentReference
Title: "Utilozación de PDF para Documentos de Referencia"
* . ^short = "Referencia de Documentos PDF"
* . ^definition = "Docuento utilizado para guardar referencias en formato PDF."
* . ^comment = "Este perfil se utiliza para documentos de referencia que se almacenan en formato PDF."

//* --- Fecha -----
* date 1..1 MS
* date ^short = "Fecha de creación del documento"
* date ^definition = "Fecha de creación del documento"


//-----------PACIENTE --------- 
* subject 1..1 MS
* subject ^short = "Representa al paciente."

* subject.reference 1..
* subject.reference ^short = "URL que referencia al recurso paciente."


* subject only Reference(PacienteCo)


//-----------Contenido : PDF ---------
* content.attachment MS
* content.attachment.url 1..1 MS
* content.attachment.url ^short = "URL que apunta al documento PDF."
* content.attachment.url ^definition = "URL que apunta al documento PDF asociado a la referencia."

