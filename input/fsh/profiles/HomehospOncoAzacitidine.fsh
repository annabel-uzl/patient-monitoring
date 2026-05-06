Profile: HomehospOncoAzacitidineQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-azacitidine
Title: "ONCO Azacitidine Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Azacitidine (Vidaza®) nursing observation form. Captures vital signs (including conditional SpO2), medication dissolution check, GI/pulmonary contraindications and side-effect monitoring. See logical model: [ONCOAzacitidineQuestionnaire](StructureDefinition-onco-azacitidine-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS

Mapping: HomehospOncoAzacitidineQuestionnaireToLogical
Source: HomehospOncoAzacitidineQuestionnaire
Target: "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/onco-azacitidine-questionnaire"
Id: onco-azacitidine-questionnaire-lm-mapping
Title: "Mapping to ONCOAzacitidineQuestionnaire Logical Model"
* -> "ONCOAzacitidineQuestionnaire"
* item -> "ONCOAzacitidineQuestionnaire.nursingAssessment"