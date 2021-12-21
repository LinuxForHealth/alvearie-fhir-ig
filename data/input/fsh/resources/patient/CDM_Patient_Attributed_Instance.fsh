Instance:       CDMPatientInstance-Attributed
InstanceOf:     CDMPatient
Title:          "CDM Patient - Attributed"
Description:    "Sample CDM Patient showing various PCP attributions with period"
Usage:          #example

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/patient"
* identifier[0].value = "1fe85e9a-a19f-463c-b8cf-2b649c1740b6"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #secondary
* identifier[1].type =  IdentifierTypeCodeSystem#MDI
* identifier[1].system = "http://ibm.com/fhir/primary/patient-match-identifier"
* identifier[1].value = "a491127b-2e01-452f-ba3c-0cc93e986e8c"
* identifier[1].assigner.display = "IBM"

* name.given = "Sam"
* name.family = "Malone"
* birthDate = "1947-12-29"

* gender = #male
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#male

// Sample different types of attribution
// Recorded PCP from emr system
* generalPractitioner[0] = Reference(CDMPractitionerRole-EMR-PCP)
* generalPractitioner[0].extension[referenceCode].valueCoding = AttributionSourceCodeSystem#client-emr
* generalPractitioner[0].extension[referencePeriod].valuePeriod.start = "2019-01-01"
// Expired claims enrollment pcp
* generalPractitioner[1] = Reference(EnrollmentPCP1)
* generalPractitioner[1].extension[referenceCode].valueCoding = AttributionSourceCodeSystem#enrollment
* generalPractitioner[1].extension[referencePeriod].valuePeriod.start = "2019-01-01"
* generalPractitioner[1].extension[referencePeriod].valuePeriod.end = "2019-12-31"
* generalPractitioner[1].extension[2].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* generalPractitioner[1].extension[2].valueString = "IBM"
* generalPractitioner[1].extension[3].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* generalPractitioner[1].extension[3].valueString = "Practitioner Attribution"
* generalPractitioner[1].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* generalPractitioner[1].extension[4].valueString = "Claims Enrollment PCP Attribution"
* generalPractitioner[1].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* generalPractitioner[1].extension[5].valueString = "1.0"
* generalPractitioner[1].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* generalPractitioner[1].extension[6].valueDateTime = "2020-01-01T03:01:00Z"
// Current claims enrollment
* generalPractitioner[2] = Reference(EnrollmentPCP2)
* generalPractitioner[2].extension[referenceCode].valueCoding = AttributionSourceCodeSystem#enrollment
* generalPractitioner[2].extension[referencePeriod].valuePeriod.start = "2020-01-01"
* generalPractitioner[2].extension[2].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* generalPractitioner[2].extension[2].valueString = "IBM"
* generalPractitioner[2].extension[3].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* generalPractitioner[2].extension[3].valueString = "Practitioner Attribution"
* generalPractitioner[2].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* generalPractitioner[2].extension[4].valueString = "Claims Enrollment PCP Attribution"
* generalPractitioner[2].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* generalPractitioner[2].extension[5].valueString = "1.0"
* generalPractitioner[2].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* generalPractitioner[2].extension[6].valueDateTime = "2020-01-01T03:01:00Z"
// Imputed pcp for Advantage
* generalPractitioner[3] = Reference(AdvImputedPCP)
* generalPractitioner[3].extension[referenceCode][0].valueCoding = AttributionSourceCodeSystem#imputed
* generalPractitioner[3].extension[referenceCode][1].valueCoding = AttributionProductCodeSystem#advantage
* generalPractitioner[3].extension[referencePeriod].valuePeriod.start = "2020-02-14"
* generalPractitioner[3].extension[3].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* generalPractitioner[3].extension[3].valueString = "IBM"
* generalPractitioner[3].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* generalPractitioner[3].extension[4].valueString = "Practitioner Attribution"
* generalPractitioner[3].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* generalPractitioner[3].extension[5].valueString = "Advantage PCP Attribution"
* generalPractitioner[3].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* generalPractitioner[3].extension[6].valueString = "1.0"
* generalPractitioner[3].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* generalPractitioner[3].extension[7].valueDateTime = "2020-02-14T03:12:00Z"
// Attributed pcp for engagement
* generalPractitioner[4] = Reference(CDMPractitionerRole-Attributed-PCP)
* generalPractitioner[4].extension[referenceCode][0].valueCoding = AttributionSourceCodeSystem#imputed
* generalPractitioner[4].extension[referenceCode][1].valueCoding = AttributionProductCodeSystem#engagement
* generalPractitioner[4].extension[referenceCode][2].valueCoding = SNOMED#446050000 "PCP - Primary care physician"
* generalPractitioner[4].extension[referencePeriod].valuePeriod.start = "2020-02-14"
* generalPractitioner[4].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* generalPractitioner[4].extension[4].valueString = "IBM"
* generalPractitioner[4].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* generalPractitioner[4].extension[5].valueString = "Practitioner Attribution"
* generalPractitioner[4].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* generalPractitioner[4].extension[6].valueString = "Engagement PCP Attribution"
* generalPractitioner[4].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* generalPractitioner[4].extension[7].valueString = "1.0"
* generalPractitioner[4].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* generalPractitioner[4].extension[8].valueDateTime = "2020-02-14T03:18:00Z"
// Attributed specialist for engagement
* generalPractitioner[5] = Reference(CDMPractitionerRole-Attributed-PCP)
* generalPractitioner[5].extension[referenceCode][0].valueCoding = AttributionSourceCodeSystem#imputed
* generalPractitioner[5].extension[referenceCode][1].valueCoding = AttributionProductCodeSystem#engagement
* generalPractitioner[5].extension[referenceCode][2].valueCoding = SNOMED#394592004 "Clinical oncology"
* generalPractitioner[5].extension[referencePeriod].valuePeriod.start = "2020-02-14"
* generalPractitioner[5].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* generalPractitioner[5].extension[4].valueString = "IBM"
* generalPractitioner[5].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* generalPractitioner[5].extension[5].valueString = "Practitioner Attribution"
* generalPractitioner[5].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* generalPractitioner[5].extension[6].valueString = "Engagement PCP Attribution"
* generalPractitioner[5].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* generalPractitioner[5].extension[7].valueString = "1.0"
* generalPractitioner[5].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* generalPractitioner[5].extension[8].valueDateTime = "2020-02-14T03:18:00Z"

Instance:   EnrollmentPCP1
InstanceOf: PractitionerRole
Usage:      #inline

Instance:   EnrollmentPCP2
InstanceOf: PractitionerRole
Usage:      #inline

Instance:   AdvImputedPCP
InstanceOf: PractitionerRole
Usage:      #inline
