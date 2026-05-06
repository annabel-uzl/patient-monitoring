Profile: HomehospOpatContinuousInfusionQuestionnaire
Parent: Questionnaire
Id: homehosp-opat-continuous-infusion
Title: "OPAT Continuous Infusion Nursing Questionnaire"
Description: "Profile on Questionnaire for the OPAT continuous-infusion (elastomeric pump / infusor) nursing observation form. Captures medication storage, infusor weights, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up. See logical model: [OPATContinuousInfusionQuestionnaire](StructureDefinition-opat-continuous-infusion-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS

Mapping: HomehospOpatContinuousInfusionQuestionnaireToLogical
Source: HomehospOpatContinuousInfusionQuestionnaire
Target: "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/opat-continuous-infusion-questionnaire"
Id: opat-continuous-infusion-questionnaire-lm-mapping
Title: "Mapping to OPATContinuousInfusionQuestionnaire Logical Model"
* -> "OPATContinuousInfusionQuestionnaire"
* item -> "OPATContinuousInfusionQuestionnaire.nursingAssessment"