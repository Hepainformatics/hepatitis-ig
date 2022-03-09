Alias: LNC = http://loinc.org
Alias: SCT = http://snomed.info/sct
Alias: ICD = http://icd.who.int

Profile: HepatitisCase
Parent: Condition
Id:     hepainformatics-hepatitis-case 
Title: "Hepatitis Patient, suspected or confirmed"
Description: "Demographics of patients suspected or confirmed to have Hepatitis B or C"
* ^status = #draft
//* extension contains EvidenceType named evidenceType 0..*
//* extension[evidenceType].valueCodeableConcept from HepatitisDiseaseStatusEvidenceTypeVS (required)
* clinicalStatus MS
* code MS 
* subject MS 
* onset[x] MS


/*
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
* subject 1..1
* basedOn only Reference(ServiceRequest or MedicationRequest)
* partOf only Reference(MedicationAdministration or MedicationStatement or Procedure)
* code = SCT#773114002 "(Acute hepatitis caused by infection suspected (situation)"
* subject only Reference(hepainformaticsPatient)
* focus only Reference(hepainformaticsConditionParent)
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* effective[x] only dateTime or Period
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionStatusTrendVS (required)
*/

Profile:  HepatitisCare
Parent:   Observation
Id:       hepainformatics-hepatitis-care 
Title:    "Hepatitis Care Data"
Description: "Visit information for patients suspected or confirmed to have Hepatitis B or C"
* ^status = #draft
/*
* extension contains EvidenceType named evidenceType 0..*
* extension[evidenceType].valueCodeableConcept from HepatitisDiseaseStatusEvidenceTypeVS (required)
* status and code and subject and effective[x] and valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
* subject 1..1
* basedOn only Reference(ServiceRequest or MedicationRequest)
* partOf only Reference(MedicationAdministration or MedicationStatement or Procedure)
* code = SCT#128241005
* subject only Reference(hepatitisPatient)
* focus only Reference(hepatitisConditionParent)
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* effective[x] only dateTime or Period
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionStatusTrendVS (required)


Extension: EvidenceType
Id:  hepainformatics-evidence-type
Title: "Evidence Type"
Description: "Categorization of the kind of evidence used as input to the clinical judgment."
* value[x] only CodeableConcept
*/