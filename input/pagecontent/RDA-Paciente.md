### Introducción

[......................................................]

[......................................................]

[......................................................]

[......................................................]

### Perfiles

1️⃣ Perfil de Documento **Composition** de RDA Paciente: [RDA Paciente](StructureDefinition-CompositionCo.html).


### Documento de Referencia

✅ Archivo Referencia: [Resumen_Digital_Basico_de_Atención_en_Salud_Paciente.xlsx](Resumen_Digital_Basico_de_Atención_en_Salud_Paciente.xlsx)

### Detalles de campos nuevos, V:0.5

A continuación se detallan los cambios contenidos en la versión 0.5. 

1. Agregado de variable 18 : _Grupo de servicios_.
CodeSystem y ValueSet : ModalidadTecnologiaSaludCS y ModalidadTecnologiaSaludVS 

2. Modificación de *DocumentReferece* para incluir las variables 18.1 y 18.2 , se incluyen :
GrupoServiciosVS. 

3. Modificación en *Document Reference*: Tipo de documento: ConjuntoDocumentosVS (codigos LOINC)

4. Agregado en *Composition*:
- Datos del asegurador : _Composition.attester_
- Fecha-hora inicio y fin de atención: _event.period.start_ y _event.period.end_.
- Antecedentes Familiares: Seccion composition [antecedentesFamiliares]

5. Agregado de *Condition* codigos CIE11 para code.

6. Nuevo perfil *AntecedentesFamiliaresCo* para representar los antecedentes familiares. Se agrego conjunto lo valores: _ParentescoCS_.
