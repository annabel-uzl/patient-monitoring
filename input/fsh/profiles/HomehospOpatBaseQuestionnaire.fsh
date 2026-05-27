Profile: HomehospOpatBaseQuestionnaire
Parent: Questionnaire
Id: homehosp-opat-base
Title: "OPAT Home Hospitalization Base Questionnaire"
Description: "Base profile for all OPAT home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, QualityMonitoring) and all eight sub-groups common to both OPAT questionnaires: MedicationStorage, MedicationPreparation, MedicationAdministration, VitalParameters, DressingInsertionSite, InsertionSite, Catheter, and SideEffects."

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* url 1..1 MS

* item 1..* MS

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open

* item contains
    nursingAssessment 1..1 MS and
    qualityMonitoring 1..1 MS

* item[nursingAssessment].linkId = "NursingAssessment"
* item[nursingAssessment].type = #group
* item[qualityMonitoring].linkId = "QualityMonitoring"
* item[qualityMonitoring].type = #group
