
Instance:       MatchedPatientSource-EMR1-PatA
InstanceOf:     CDMPatient
Usage:          #example
Title:          "Matched Patient Source - EMR1 - Patient A"
Description:    "Sample of a matched source patient with reference to the match patient"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/patient"
* identifier[0].value = "a11bad95-a9df-4703-9691-b38bba13892d"

* identifier[2].use = #secondary
* identifier[2].type =  IdentifierTypeCodeSystem#MDI
* identifier[2].system = "http://ibm.com/fhir/primary/patient-match-identifier"
* identifier[2].value = "c82a8fce-11db-4396-b10c-1150abd1a222"
* identifier[2].assigner.display = "IBM"

* active = true

* name.given = "Maggie"
* name.family = "Match"
* birthDate = "1990-01-04"

* gender = #female
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#female

* telecom[0].system = #phone
* telecom[0].use = #home
* telecom[0].value = "214-555-1212"
* telecom[0].rank = 2
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[telAddress].valueUrl = "tel:+12145551212"

* telecom[1].system = #sms
* telecom[1].use = #mobile
* telecom[1].value = "214-555-6767"
* telecom[1].rank = 1
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[telAddress].valueUrl = "tel:+12145556767"
