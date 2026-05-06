Profile: HomehospOncoFulvestrantQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-fulvestrant
Title: "ONCO Fulvestrant Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Fulvestrant (Faslodex®) nursing observation form. Captures vital signs, contraindication check, administration (bilateral IM injections) and muscle/joint pain side-effect follow-up. See logical model: [ONCOFulvestrantQuestionnaire](StructureDefinition-onco-fulvestrant-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS

Mapping: HomehospOncoFulvestrantQuestionnaireToLogical
Source: HomehospOncoFulvestrantQuestionnaire
Target: "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-fulvestrant-questionnaire"
Id: onco-fulvestrant-questionnaire-lm-mapping
Title: "Mapping to ONCOFulvestrantQuestionnaire Logical Model"
* -> "ONCOFulvestrantQuestionnaire"
* item -> "ONCOFulvestrantQuestionnaire.nursingAssessment"