Profile: HomehospOpatContinuousInfusionQuestionnaire
Parent: HomehospOpatBaseQuestionnaire
Id: homehosp-opat-continuous-infusion
Title: "OPAT Continuous Infusion Nursing Questionnaire"
Description: "Profile on Questionnaire for the OPAT continuous-infusion (elastomeric pump / infusor) nursing observation form. Captures medication storage, infusor weights, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up. See logical model: [OPATContinuousInfusionQuestionnaire](StructureDefinition-opat-continuous-infusion-questionnaire.html)"

// ============================================================
// MedicationPreparation: B3-B5 (ContinuousInfusion-specific)
// B1/B2 are already defined in the base profile
// ============================================================
* item[nursingAssessment].item[medicationPreparation].item contains
    fullInfusorWeight 1..1 MS and
    emptyInfusorWeight 1..1 MS and
    additionalObservation 0..1

* item[nursingAssessment].item[medicationPreparation].item[fullInfusorWeight].linkId = "B3_FullInfusorWeight"
* item[nursingAssessment].item[medicationPreparation].item[fullInfusorWeight].type = #decimal
* item[nursingAssessment].item[medicationPreparation].item[fullInfusorWeight].required = true

* item[nursingAssessment].item[medicationPreparation].item[emptyInfusorWeight].linkId = "B4_EmptyInfusorWeight"
* item[nursingAssessment].item[medicationPreparation].item[emptyInfusorWeight].type = #decimal
* item[nursingAssessment].item[medicationPreparation].item[emptyInfusorWeight].required = true

* item[nursingAssessment].item[medicationPreparation].item[additionalObservation].linkId = "B5_AdditionalObservation"
* item[nursingAssessment].item[medicationPreparation].item[additionalObservation].type = #string
