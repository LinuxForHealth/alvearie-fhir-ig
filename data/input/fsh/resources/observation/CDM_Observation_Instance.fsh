Instance:       ObservationExample
InstanceOf:     CDMObservation
Usage:          #example
Title:          "CDM Observation Example"
Description:    "Sample observation showing a high blood pressure panel"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-observation"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/observation"
* identifier[0].value = "0fe09359-fe8a-42b3-8000-b73b0f6ea96f"
* identifier[0].assigner.display = "Acme Health - EMR1"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#??vital-signs
* code = http://loinc.org#35094-2 "Blood pressure panel"

* subject = Reference(CDMPatientInstance)

* encounter = Reference(CDMEncounterExample)
* effectiveDateTime = "2020-04-15T00:00:00Z"

* performer = Reference(CDMPractitionerRole-EMR-PCP)

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH "Critical high"
* bodySite = SNOMED#368209003 "Right arm"

* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 159
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #mm[Hg]
* component[0].valueQuantity.extension[convertedQuantity].valueQuantity.value = 159
* component[0].valueQuantity.extension[convertedQuantity].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.extension[convertedQuantity].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.extension[convertedQuantity].valueQuantity.code = #mmHg
* component[0].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH "Critical high"

* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 108
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #mm[Hg]
* component[1].valueQuantity.extension[convertedQuantity].valueQuantity.value = 108
* component[1].valueQuantity.extension[convertedQuantity].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.extension[convertedQuantity].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.extension[convertedQuantity].valueQuantity.code = #mmHg
* component[1].interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH "Critical high"
