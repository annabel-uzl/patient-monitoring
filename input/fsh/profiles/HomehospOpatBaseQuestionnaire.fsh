Profile: HomehospOpatBaseQuestionnaire
Parent: Questionnaire
Id: homehosp-opat-base
Title: "OPAT Home Hospitalization Base Questionnaire"
Description: "Base profile for all OPAT home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, QualityMonitoring) and all eight sub-groups common to both OPAT questionnaires: MedicationStorage, MedicationPreparation, MedicationAdministration, VitalParameters, DressingInsertionSite, InsertionSite, Catheter, and SideEffects."

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

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

* item[nursingAssessment].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item ^slicing.rules = #open

* item[nursingAssessment].item contains
    medicationStorage 1..1 MS and
    medicationPreparation 1..1 MS and
    medicationAdministration 1..1 MS and
    vitalParameters 1..1 MS and
    dressingInsertionSite 1..1 MS and
    insertionSite 1..1 MS and
    catheter 1..1 MS and
    sideEffects 1..1 MS

* item[nursingAssessment].item[medicationStorage].linkId = "MedicationStorage"
* item[nursingAssessment].item[medicationStorage].type = #group
* item[nursingAssessment].item[medicationPreparation].linkId = "MedicationPreparation"
* item[nursingAssessment].item[medicationPreparation].type = #group

// Slicing setup for medicationPreparation sub-items (B1/B2 common; B3+ added by child profiles)
* item[nursingAssessment].item[medicationPreparation].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[medicationPreparation].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[medicationPreparation].item ^slicing.rules = #open

* item[nursingAssessment].item[medicationPreparation].item contains
    medicationFullyDissolved 1..1 MS and
    contactCareTeam 0..1

* item[nursingAssessment].item[medicationPreparation].item[medicationFullyDissolved].linkId = "B1_MedicationFullyDissolved"
* item[nursingAssessment].item[medicationPreparation].item[medicationFullyDissolved].type = #choice
* item[nursingAssessment].item[medicationPreparation].item[medicationFullyDissolved].required = true

* item[nursingAssessment].item[medicationPreparation].item[contactCareTeam].linkId = "B2_ContactCareTeam"
* item[nursingAssessment].item[medicationPreparation].item[contactCareTeam].type = #display

* item[nursingAssessment].item[medicationAdministration].linkId = "MedicationAdministration"
* item[nursingAssessment].item[medicationAdministration].type = #group
* item[nursingAssessment].item[vitalParameters].linkId = "VitalParameters"
* item[nursingAssessment].item[vitalParameters].type = #group
* item[nursingAssessment].item[dressingInsertionSite].linkId = "DressingInsertionSite"
* item[nursingAssessment].item[dressingInsertionSite].type = #group
* item[nursingAssessment].item[insertionSite].linkId = "InsertionSite"
* item[nursingAssessment].item[insertionSite].type = #group
* item[nursingAssessment].item[catheter].linkId = "Catheter"
* item[nursingAssessment].item[catheter].type = #group
* item[nursingAssessment].item[sideEffects].linkId = "SideEffects"
* item[nursingAssessment].item[sideEffects].type = #group
