
## **Detalle de versión: 0.5:- Modificaciones : RDA Paciente**  

A continuación se detallan los cambios contenidos en la versión 0.5. 

1. Agregado de variable 18 : Modalidad y Grupo de servicios.
CodeSystem y ValueSet : ModalidadTecnologiaSaludCS y ModalidadTecnologiaSaludVS 

2. Modificación de *DocumentReferece* para incluir las variables 18.1 y 18.2 , se incluyen : Category.
GrupoServiciosVS. 

3. Modificación en *Document Reference*: Tipo de documento: ConjuntoDocumentosVS (codigos LOINC)

4. Agregado en *Composition*:
- Datos del asegurador : _Composition.attester_
- Fecha-hora inicio y fin de atención: _event.period.start_ y _event.period.end_.
- Antecedentes Familiares: Seccion composition [antecedentesFamiliares]

5. Agregado de *Condition* codigos CIE11 para code.

6. Nuevo perfil *AntecedentesFamiliaresCo* para representar los antecedentes familiares. Se agrego conjunto lo valores: _ParentescoCS_.


----------------------------------------------------------------------------------------------

## **IMPORTANTE**  
✅ Fecha de Actualización de versión: **28/5/25**. 

✅ Archivo Referencia: [ResumenDigitalBasicoAtenciónSalud.xlsx](ResumenDigitalBasicoAtenciónSalud.xlsx)