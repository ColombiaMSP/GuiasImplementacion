Profile:        OrganizacionCo
Parent:         Organization
Title:          "Organizacion Co"
* . ^short = "Una entidad que responde por el plan de beneficios en salud en el SGSSS."

* active 1..
* active 
    ^short = "Estado de la entidad responsable por el plan de beneficios en el SGSSS. Activo (true)|Inactivo (false)"
* active 
    ^definition = "Si el registro de la entidad responsable del plan de beneficios sigue en uso activo. Activo (true)|Inactivo (false)"


* identifier and identifier.system and identifier.value MS
* identifier 1..*

* identifier 
    ^short = "Identificación de la entidad responsable por el plan de beneficios en el SGSSS."
* identifier 
    ^definition = "Identificación de la entidad responsable por el plan de beneficios en el SGSSS."

* identifier.system 
    ^short = "Indicador del sistema de identificación usado pora determinar el value."
* identifier.system 
    ^definition = "Establece el espacio de nombres para el valor, es decir, una dirección URL que describe el conjunto de valores que son únicos para la entidad responsable por el plan de beneficios en el SGSSS."

* identifier.value 
    ^short = "Código asignado al administrador del plan de beneficios en el SGSSS"
* identifier.value 
    ^definition = "Código asignado a la entidad responsable por el plan de beneficios en el SGSSS."

* name MS
* name 
    ^short = "Nombre (Razón Social) asignado a la entidad responsable por el plan de beneficios en el SGSSS." 
* name 
    ^definition = "Nombre (Razón Social) asignado a la entidad responsable por el plan de beneficios en el SGSSS."

* type MS
* type 
    ^short = "Tipo de la entidad." 
* type 
    ^definition = "Tipo de entidad responsable por el plan de beneficios en el SGSSS."

