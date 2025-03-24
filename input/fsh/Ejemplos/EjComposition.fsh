

/*--------------------------------------------------------------------------------------
    1. COMPOSITION Ambulatorio
--------------------------------------------------------------------------------------*/

Instance: CompositionColombiaAmbulatorio
InstanceOf: CompositionCo
Usage: #example
Title : "Documento RDA --> Nota de Consulta"
Description: "Ejemplo de Documento RDA Colombiano para Nota de Consulta."

* type = $loinc#34105-7 "Nota de consulta"

* subject = Reference(Patient/PacienteColombiano)
* date = "2022-03-05T18:30:00+01:00"
* status = #final

/* otra forma de referencial al profesional, solo con la identificacion.
* author.identifier.type.coding.system = $cs_identper#CC
* author.identifier.value = "12345"
*/

* author = Reference(Practitioner/ProfesionalColombia)
* title = "Resumen de Paciente Colombia"

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

// ------- seccion de condition, problemas activos.
* section[sectionDiagnosticos].title = "Condiciones del Paciente"

* section[sectionDiagnosticos].code = http://loinc.org#11450-4 "Problem list Reported"
* section[sectionDiagnosticos].text.status = #generated
* section[sectionDiagnosticos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CONDICIONES</div>"
* section[sectionDiagnosticos].entry = Reference(Condition/ConditionColombia)



// ------- seccion de medicamentos
* section[sectionMedicacion].title = "Medicamentos"

* section[sectionMedicacion].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[sectionMedicacion].text.status = #generated
* section[sectionMedicacion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MEDICAMENTOS</div>"
* section[sectionMedicacion].entry = Reference(MedicationStatement/MedicationStatementColombia)


// ------- seccion de Alergias
* section[sectionAlergias].title = "Alergias"

* section[sectionAlergias].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ALERGIAS</div>"
* section[sectionAlergias].entry = Reference(AllergyIntolerance/AlergiaColombia)




/*--------------------------------------------------------------------------------------
    2. COMPOSITION Emergencia
--------------------------------------------------------------------------------------*/


Instance: CompositionColombiaEmergencia
InstanceOf: CompositionCo
Usage: #example
Title : "Documento RDA --> Consulta de Emergencia"
Description: "Ejemplo de Documento RDA Colombiano para Emergencia."

* type = $loinc#34115-6 "Nota de consulta de emergencia"

* subject = Reference(Patient/PacienteColombiano)
* date = "2022-03-05T18:30:00+01:00"
* status = #final

/* otra forma de referencial al profesional, solo con la identificacion.
* author.identifier.type.coding.system = $cs_identper#CC
* author.identifier.value = "12345"
*/

* author = Reference(Practitioner/ProfesionalColombia)
* title = "Resumen de Paciente Colombia"

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

// ------- seccion de condition, problemas activos.
* section[sectionDiagnosticos].title = "Condiciones del Paciente"

* section[sectionDiagnosticos].code = http://loinc.org#11450-4 "Problem list Reported"
* section[sectionDiagnosticos].text.status = #generated
* section[sectionDiagnosticos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CONDICIONES</div>"
* section[sectionDiagnosticos].entry = Reference(Condition/ConditionColombia)



// ------- seccion de medicamentos
* section[sectionMedicacion].title = "Medicamentos"

* section[sectionMedicacion].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[sectionMedicacion].text.status = #generated
* section[sectionMedicacion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MEDICAMENTOS</div>"
* section[sectionMedicacion].entry = Reference(MedicationStatement/MedicationStatementColombia)


// ------- seccion de Alergias
* section[sectionAlergias].title = "Alergias"

* section[sectionAlergias].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ALERGIAS</div>"
* section[sectionAlergias].entry = Reference(AllergyIntolerance/AlergiaColombia)




/*--------------------------------------------------------------------------------------
    3. COMPOSITION Egreso
--------------------------------------------------------------------------------------*/


Instance: CompositionColombiaEgreso
InstanceOf: CompositionCo
Usage: #example
Title : "Documento RDA --> Resumen de Alta"
Description: "Ejemplo de Documento RDA Colombiano para Resumen de Alta."

* type = $loinc#34133-9 "Resumen de alta"

* subject = Reference(Patient/PacienteColombiano)
* date = "2022-03-05T18:30:00+01:00"
* status = #final

/* otra forma de referencial al profesional, solo con la identificacion.
* author.identifier.type.coding.system = $cs_identper#CC
* author.identifier.value = "12345"
*/

* author = Reference(Practitioner/ProfesionalColombia)
* title = "Resumen de Paciente Colombia"

* custodian = Reference(Organization/OrganizacionRegionEjemplo)

// ------- seccion de condition, problemas activos.
* section[sectionDiagnosticos].title = "Condiciones del Paciente"

* section[sectionDiagnosticos].code = http://loinc.org#11450-4 "Problem list Reported"
* section[sectionDiagnosticos].text.status = #generated
* section[sectionDiagnosticos].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CONDICIONES</div>"
* section[sectionDiagnosticos].entry = Reference(Condition/ConditionColombia)



// ------- seccion de medicamentos
* section[sectionMedicacion].title = "Medicamentos"

* section[sectionMedicacion].code = http://loinc.org#10160-0 "Hx of Medication use"
* section[sectionMedicacion].text.status = #generated
* section[sectionMedicacion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MEDICAMENTOS</div>"
* section[sectionMedicacion].entry = Reference(MedicationStatement/MedicationStatementColombia)


// ------- seccion de Alergias
* section[sectionAlergias].title = "Alergias"

* section[sectionAlergias].code = http://loinc.org#48765-2 "Allergies and adverse reactions Document"
* section[sectionAlergias].text.status = #generated
* section[sectionAlergias].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ALERGIAS</div>"
* section[sectionAlergias].entry = Reference(AllergyIntolerance/AlergiaColombia)


