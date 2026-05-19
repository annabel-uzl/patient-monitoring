Profile: HomehospOncoBaseQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-base
Title: "ONCO Home Hospitalization Base Questionnaire"
Description: "Base profile for all ONCO home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, Assignment, QualityMonitoring) and sub-groups common across all ONCO medications: MedicationStorage, ObservationParameters, Contraindications, and MedicationAdministration. Medication-specific sub-groups and questions are added by child profiles."

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
    assignment 1..1 MS and
    qualityMonitoring 1..1 MS

* item[nursingAssessment].linkId = "NursingAssessment"
* item[nursingAssessment].type = #group
* item[assignment].linkId = "Assignment"
* item[assignment].type = #group
* item[qualityMonitoring].linkId = "QualityMonitoring"
* item[qualityMonitoring].type = #group
