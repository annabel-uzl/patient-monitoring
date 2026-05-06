Profile: HomehospOncoBortezomibQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-bortezomib
Title: "ONCO Bortezomib Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Bortezomib (Velcade®) nursing observation form. Captures vital signs, medication checks, sensory/motor neuropathy contraindication assessment and post-administration side-effect monitoring. See logical model: [ONCOBortezomibQuestionnaire](StructureDefinition-onco-bortezomib-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS

Mapping: HomehospOncoBortezomibQuestionnaireToLogical
Source: HomehospOncoBortezomibQuestionnaire
Target: "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-bortezomib-questionnaire"
Id: onco-bortezomib-questionnaire-lm-mapping
Title: "Mapping to ONCOBortezomibQuestionnaire Logical Model"
* -> "ONCOBortezomibQuestionnaire"
* item -> "ONCOBortezomibQuestionnaire.nursingAssessment"