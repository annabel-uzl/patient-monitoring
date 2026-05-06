Logical: HomeHospQuestionnaireResponse
Id: homehosp-questionnaire-response-lm
Title: "Home Hospitalization QuestionnaireResponse Logical Model"
Description: "Logical model representing the FHIR QuestionnaireResponse resource as used in the OPAT and ONCO home hospitalization caresets. Each home nurse visit produces exactly one QuestionnaireResponse if the visit was not cancelled, which corresponds to a single Encounter. The QuestionnaireResponse references the canonical Questionnaire URL and contains the nurse's answers. It can be used as-is for clinical review or as input to an SDC Definition-based extraction pipeline that generates discrete FHIR Observations."
Parent: Base
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^type = "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/HomeHospQuestionnaireResponse"

// ==========================================
// Identity & Status
// ==========================================
* questionnaire 1..1 canonical "Canonical URL of the Questionnaire this response is based on (e.g. http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/OPATContinuInfuusV1)"
* status 1..1 code "Status of the questionnaire response | Answers: completed | entered-in-error"

// ==========================================
// Context
// ==========================================
* subject 1..1 Reference(BeModelPatient) "Reference to the Patient this response is about"
* encounter 1..1 Reference(HomeHospEncounter) "Reference to the Encounter during which this response was captured - !!! in testphase this was not required but it makes sence to reference the encounter"
* authored 1..1 dateTime "Date/time when the response was completed"
* author 0..1 Reference(BePractitioner) "Reference to the home nurse who authored the response (Practitioner)"
* source 0..1 Reference(BeModelPatient) "Reference to the person who provided the answers (if different from author)"

// ==========================================
// Answer Items
// ==========================================
* item 1..* BackboneElement "Answer items corresponding to questionnaire groups and questions. Structure mirrors the Questionnaire item hierarchy (groups and leaf questions). Each leaf item contains a linkId, optional text, and one or more answer values."
* item.linkId 1..1 string "Unique linkId matching the corresponding Questionnaire item"
* item.text 0..1 string "Display text of the question (copied from the Questionnaire for readability)"
* item.answer 0..* BackboneElement "Answer(s) provided for this item"
* item.answer.valueCoding 0..1 Coding "Coded answer (for choice-type questions using SNOMED CT codes)"
* item.answer.valueDecimal 0..1 decimal "Numeric answer with unit implicit from the Questionnaire (for vital parameters and infusor weights)"
* item.answer.valueString 0..1 string "Free-text answer (for open text questions)"
* item.answer.valueBoolean 0..1 boolean "Boolean answer (reserved for future use; prefer valueCoding with SNOMED yes/no)"
* item.item 0..* BackboneElement "Nested answer items for sub-questions within a group (same structure as item)"
* item.item.linkId 1..1 string "Unique linkId matching the corresponding nested Questionnaire item"
* item.item.text 0..1 string "Display text of the nested question"
* item.item.answer 0..* BackboneElement "Answer(s) for the nested item"
* item.item.answer.valueCoding 0..1 Coding "Coded answer for the nested item"
* item.item.answer.valueDecimal 0..1 decimal "Numeric answer for the nested item"
* item.item.answer.valueString 0..1 string "Free-text answer for the nested item"
