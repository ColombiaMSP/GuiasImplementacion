### Introducción

El **Resumen Digital de Atención - Paciente (RDA Paciente)** es un documento digital que hace referencia a la información clínica más importante al finalizar una atención en salud por parte de un profesional de salud e incluye la información sociodemográfica del paciente, este documento es accesible de forma electrónica para garantizar la continuidad asistencial, este permite tener la información .

### Perfiles

1️⃣ Perfil de Documento **Composition** de RDA Paciente: [RDA Paciente](StructureDefinition-CompositionCo.html).


### Documento de Referencia

✅ Archivo Referencia: [Resumen_Digital_Basico_de_Atención_en_Salud_Paciente.xlsx](Resumen_Digital_Basico_de_Atención_en_Salud_Paciente.xlsx)

### Detalles de campos nuevos, V:0.5

A continuación se detallan los cambios contenidos en la versión 0.5. 

1. Modificación de **DocumentReferece** para incluir las variables 18.1 y 18.2 , se incluyen :
GrupoServiciosVS.  y Tipo de documento: ConjuntoDocumentosVS (codigos LOINC)

2. Agregado en **Composition**:
- Datos del asegurador : _Composition.attester_
- Fecha-hora inicio y fin de atención: _event.period.start_ y _event.period.end_.
- Antecedentes Familiares: Seccion composition [antecedentesFamiliares]

3. Agregado de **ConditionCo** codigos CIE11 para code.

4. Nuevo perfil **AntecedentesFamiliaresCo** para representar los antecedentes familiares. Se agrego conjunto lo valores: _ParentescoCS_.
