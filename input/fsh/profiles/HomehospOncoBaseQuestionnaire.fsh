Profile: HomehospOncoBaseQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-base
Title: "ONCO Home Hospitalization Base Questionnaire"
Description: "Base profile for all ONCO home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (NursingAssessment, Assignment, QualityMonitoring) and sub-groups common across all ONCO medications: MedicationStorage, ObservationParameters, Contraindications, and MedicationAdministration. Medication-specific sub-groups and questions are added by child profiles."

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

// ============================================================
// Top-level group slicing
// ============================================================
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

// ============================================================
// NursingAssessment sub-group slicing
// ============================================================
* item[nursingAssessment].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item ^slicing.rules = #open

* item[nursingAssessment].item contains
    medicationStorage 1..1 MS and
    observationParameters 1..1 MS and
    contraindications 1..1 MS

* item[nursingAssessment].item[medicationStorage].linkId = "MedicationStorage"
* item[nursingAssessment].item[medicationStorage].type = #group
* item[nursingAssessment].item[observationParameters].linkId = "ObservationParameters"
* item[nursingAssessment].item[observationParameters].type = #group
* item[nursingAssessment].item[contraindications].linkId = "Contraindications"
* item[nursingAssessment].item[contraindications].type = #group

// ============================================================
// MedicationStorage questions (common to all ONCO)
// ============================================================
* item[nursingAssessment].item[medicationStorage].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[medicationStorage].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[medicationStorage].item ^slicing.rules = #open

* item[nursingAssessment].item[medicationStorage].item contains
    medicationStorageCheck 1..1 MS and
    medicationStorageSpecify 0..1

* item[nursingAssessment].item[medicationStorage].item[medicationStorageCheck].linkId = "A1_MedicationStorage"
* item[nursingAssessment].item[medicationStorage].item[medicationStorageCheck].type = #choice
* item[nursingAssessment].item[medicationStorage].item[medicationStorageCheck].required = true

* item[nursingAssessment].item[medicationStorage].item[medicationStorageSpecify].linkId = "A2_MedicationStorageSpecify"
* item[nursingAssessment].item[medicationStorage].item[medicationStorageSpecify].type = #string

// ============================================================
// ObservationParameters questions (B1-B4 common to all ONCO;
// B5 varies per medication and is added by child profiles)
// ============================================================
* item[nursingAssessment].item[observationParameters].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[observationParameters].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[observationParameters].item ^slicing.rules = #open

* item[nursingAssessment].item[observationParameters].item contains
    bodyTemperature 1..1 MS and
    heartRate 1..1 MS and
    systolicBloodPressure 1..1 MS and
    diastolicBloodPressure 1..1 MS

* item[nursingAssessment].item[observationParameters].item[bodyTemperature].linkId = "B1_BodyTemperature"
* item[nursingAssessment].item[observationParameters].item[bodyTemperature].type = #decimal
* item[nursingAssessment].item[observationParameters].item[bodyTemperature].required = true

* item[nursingAssessment].item[observationParameters].item[heartRate].linkId = "B2_HeartRate"
* item[nursingAssessment].item[observationParameters].item[heartRate].type = #decimal
* item[nursingAssessment].item[observationParameters].item[heartRate].required = true

* item[nursingAssessment].item[observationParameters].item[systolicBloodPressure].linkId = "B3_SystolicBloodPressure"
* item[nursingAssessment].item[observationParameters].item[systolicBloodPressure].type = #decimal
* item[nursingAssessment].item[observationParameters].item[systolicBloodPressure].required = true

* item[nursingAssessment].item[observationParameters].item[diastolicBloodPressure].linkId = "B4_DiastolicBloodPressure"
* item[nursingAssessment].item[observationParameters].item[diastolicBloodPressure].type = #decimal
* item[nursingAssessment].item[observationParameters].item[diastolicBloodPressure].required = true

// ============================================================
// Contraindications questions (C1-C2 common to all ONCO;
// medication-specific questions C3+ added by child profiles)
// ============================================================
* item[nursingAssessment].item[contraindications].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[contraindications].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[contraindications].item ^slicing.rules = #open

* item[nursingAssessment].item[contraindications].item contains
    contraindicationPresent 1..1 MS and
    contraindicationSpecify 0..1

* item[nursingAssessment].item[contraindications].item[contraindicationPresent].linkId = "C1_ContraindicationPresent"
* item[nursingAssessment].item[contraindications].item[contraindicationPresent].type = #choice
* item[nursingAssessment].item[contraindications].item[contraindicationPresent].required = true
* item[nursingAssessment].item[contraindications].item[contraindicationPresent].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[contraindicationSpecify].linkId = "C2_ContraindicationSpecify"
* item[nursingAssessment].item[contraindications].item[contraindicationSpecify].type = #display

// ============================================================
// Assignment sub-group slicing
// ============================================================
* item[assignment].item ^slicing.discriminator.type = #value
* item[assignment].item ^slicing.discriminator.path = "linkId"
* item[assignment].item ^slicing.rules = #open

* item[assignment].item contains
    medicationAdministration 1..1 MS

* item[assignment].item[medicationAdministration].linkId = "MedicationAdministration"
* item[assignment].item[medicationAdministration].type = #group

// ============================================================
// QualityMonitoring questions (common to all ONCO)
// ============================================================
* item[qualityMonitoring].item ^slicing.discriminator.type = #value
* item[qualityMonitoring].item ^slicing.discriminator.path = "linkId"
* item[qualityMonitoring].item ^slicing.rules = #open

* item[qualityMonitoring].item contains
    commentsRegistration 0..1

* item[qualityMonitoring].item[commentsRegistration].linkId = "F1_CommentsRegistration"
* item[qualityMonitoring].item[commentsRegistration].type = #string
