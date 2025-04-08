### Introducción

A continuación, se describen ejemplos de como será la estructura de transaccion a realizar con la plataforma, cuando se quiera registrar documentos generados por la aplicacion de PAIWEB, para el registro de Vacunas de un paciente y desde APS ...
Es importante aclarar, que ambos registros, contendran parte de información estructurada, asi como el detalle del documento clinico, en formato PDF.

---

### Recursos FHIR que contiene:

- ✅ **Document Reference**: documento indice.

- ✅ **Bundle-document** contiene toda la información clinica, asi como la referecencia al PDF.

- ✅ **Patient**: recurso para representar paciente.

---

### JSON

A continuación se despliegan ejemplos de JSON:

_1- PAIWEB:_

- ℹ️ Formato con comentarios (jsonc): [Descargar RDV.jsonc](D:\2.COLOMBIA\2025_IG_CO\GuiasImplementacion\input\pagecontent\RDVpdfC.jsonc) 

- ℹ️ Formato json: [Descargar RDV.json](D:\2.COLOMBIA\2025_IG_CO\GuiasImplementacion\input\pagecontent\RDVpdf.json) 


_2- APS:_ 

- ℹ️- Formato con comentarios (jsonc): [Descargar RDV.jsonc](D:\2.COLOMBIA\2025_IG_CO\GuiasImplementacion\input\pagecontent\RDVpdfC.jsonc) 

- ℹ️- Formato json: [Descargar RDV.json](D:\2.COLOMBIA\2025_IG_CO\GuiasImplementacion\input\pagecontent\RDVpdf.json) 

---

### Diagrama de Arquitectura general.

Diagrama de recursos involucrados:

<div align="left" >
  <img  style="border: 1px solid; color: black; width: 50%; height: 50%;" src="DiagramaPDF.png"> 
</div>
