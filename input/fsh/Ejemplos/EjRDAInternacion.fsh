/* Instance: CompositionInternacionCo-ejemplo
InstanceOf: CompositionInternacionCo
Usage: #example

* status = #final
* type = #internacion
* title = "Ejemplo de Internación"
* date = "2023-10-01T12:00:00Z"
* subject = Reference(PacienteCo) "Paciente de ejemplo"
* author = Reference(PractitionerCo) "Médico tratante"
* section[0].title = "Resumen de la Internación"
* section[0].code = CodeableConcept { coding: [{ system: "http://terminology.hl7.org/CodeSystem/composition-section", code: "summary", display: "Resumen" }] }
* section[0].text.status = #generated
* section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Resumen de la internación del paciente.</div>"
* section[0].entry[0] = Reference(ServiceRequestProcedureCo-ejemplo) "Procedimiento realizado"
* section[0].entry[1] = Reference(MedicationAdministrationCo-ejemplo) "Medicamento administrado"
* section[0].entry[2] = Reference(ObservationCoIncapacidad-ejemplo) "Observación de incapacidad"
* section[0].entry[3] = Reference(AlergiaCo-ejemplo) "Alergia del paciente" */