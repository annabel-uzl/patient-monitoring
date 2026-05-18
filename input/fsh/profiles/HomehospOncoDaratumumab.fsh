Profile: HomehospOncoDaratumumabQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-daratumumab
Title: "ONCO Daratumumab Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Daratumumab (Darzalex®) nursing observation form. Captures pre-medication intake (dexamethasone, H1 antihistamine, paracetamol), medication checks, vital signs, administration, contraindications and side effects. See logical model: [ONCODaratumumabQuestionnaire](StructureDefinition-onco-daratumumab-questionnaire.html)"

// ============================================================
// PremedicationIntake subgroup (Daratumumab-specific)
// ============================================================
* item[nursingAssessment].item contains
    premedicationIntake 1..1 MS and
    symptomBurden 1..1 MS

* item[nursingAssessment].item[premedicationIntake].linkId = "PremedicationIntake"
* item[nursingAssessment].item[premedicationIntake].type = #group

* item[nursingAssessment].item[premedicationIntake].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[premedicationIntake].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[premedicationIntake].item ^slicing.rules = #open

* item[nursingAssessment].item[premedicationIntake].item contains
    premedicationCorrect 1..1 MS

* item[nursingAssessment].item[premedicationIntake].item[premedicationCorrect].linkId = "B5_PremedicationCorrect"
* item[nursingAssessment].item[premedicationIntake].item[premedicationCorrect].type = #choice
* item[nursingAssessment].item[premedicationIntake].item[premedicationCorrect].required = true

// ============================================================
// Contraindications: C3-C7 (Daratumumab-specific)
// ============================================================
* item[nursingAssessment].item[contraindications].item contains
    feverChills 1..1 MS and
    premedicationNotTaken 1..1 MS and
    contactCareTeam 0..1 and
    decision 0..1 and
    decisionSpecify 0..1

* item[nursingAssessment].item[contraindications].item[feverChills].linkId = "C3_FeverChills"
* item[nursingAssessment].item[contraindications].item[feverChills].type = #choice
* item[nursingAssessment].item[contraindications].item[feverChills].required = true

* item[nursingAssessment].item[contraindications].item[premedicationNotTaken].linkId = "C4_PremedicationNotTaken"
* item[nursingAssessment].item[contraindications].item[premedicationNotTaken].type = #choice
* item[nursingAssessment].item[contraindications].item[premedicationNotTaken].required = true

* item[nursingAssessment].item[contraindications].item[contactCareTeam].linkId = "C5_ContactCareTeam"
* item[nursingAssessment].item[contraindications].item[contactCareTeam].type = #display

* item[nursingAssessment].item[contraindications].item[decision].linkId = "C6_Decision"
* item[nursingAssessment].item[contraindications].item[decision].type = #choice

* item[nursingAssessment].item[contraindications].item[decisionSpecify].linkId = "C7_DecisionSpecify"
* item[nursingAssessment].item[contraindications].item[decisionSpecify].type = #string

// ============================================================
// SymptomBurden subgroup (Daratumumab-specific)
// ============================================================
* item[nursingAssessment].item[symptomBurden].linkId = "SymptomBurden"
* item[nursingAssessment].item[symptomBurden].type = #group

* item[nursingAssessment].item[symptomBurden].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[symptomBurden].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[symptomBurden].item ^slicing.rules = #open

* item[nursingAssessment].item[symptomBurden].item contains
    nausea 0..1 and
    vomiting 0..1 and
    decreasedAppetite 0..1 and
    diarrhea 0..1 and
    constipation 0..1 and
    fatigue 0..1 and
    pain 0..1 and
    skinRash 0..1 and
    psychosocialBurden 0..1 and
    dyspnea 0..1 and
    cough 0..1 and
    muscleAndJointPain 0..1 and
    otherObservations 0..1

* item[nursingAssessment].item[symptomBurden].item[nausea].linkId = "D1_Nausea"
* item[nursingAssessment].item[symptomBurden].item[nausea].type = #choice

* item[nursingAssessment].item[symptomBurden].item[vomiting].linkId = "D2_Vomiting"
* item[nursingAssessment].item[symptomBurden].item[vomiting].type = #choice

* item[nursingAssessment].item[symptomBurden].item[decreasedAppetite].linkId = "D3_DecreasedAppetite"
* item[nursingAssessment].item[symptomBurden].item[decreasedAppetite].type = #choice

* item[nursingAssessment].item[symptomBurden].item[diarrhea].linkId = "D4_Diarrhea"
* item[nursingAssessment].item[symptomBurden].item[diarrhea].type = #choice

* item[nursingAssessment].item[symptomBurden].item[constipation].linkId = "D5_Constipation"
* item[nursingAssessment].item[symptomBurden].item[constipation].type = #choice

* item[nursingAssessment].item[symptomBurden].item[fatigue].linkId = "D6_Fatigue"
* item[nursingAssessment].item[symptomBurden].item[fatigue].type = #choice

* item[nursingAssessment].item[symptomBurden].item[pain].linkId = "D7_Pain"
* item[nursingAssessment].item[symptomBurden].item[pain].type = #choice

* item[nursingAssessment].item[symptomBurden].item[skinRash].linkId = "D8_SkinRash"
* item[nursingAssessment].item[symptomBurden].item[skinRash].type = #choice

* item[nursingAssessment].item[symptomBurden].item[psychosocialBurden].linkId = "D9_PsychosocialBurden"
* item[nursingAssessment].item[symptomBurden].item[psychosocialBurden].type = #choice

* item[nursingAssessment].item[symptomBurden].item[dyspnea].linkId = "D10_Dyspnea"
* item[nursingAssessment].item[symptomBurden].item[dyspnea].type = #choice

* item[nursingAssessment].item[symptomBurden].item[cough].linkId = "D11_Cough"
* item[nursingAssessment].item[symptomBurden].item[cough].type = #choice

* item[nursingAssessment].item[symptomBurden].item[muscleAndJointPain].linkId = "D12_MuscleAndJointPain"
* item[nursingAssessment].item[symptomBurden].item[muscleAndJointPain].type = #choice

* item[nursingAssessment].item[symptomBurden].item[otherObservations].linkId = "D13_OtherObservations"
* item[nursingAssessment].item[symptomBurden].item[otherObservations].type = #string

// ============================================================
// Assignment: MedicationPreparation subgroup (Daratumumab-specific)
// ============================================================
* item[assignment].item contains
    medicationPreparation 1..1 MS

* item[assignment].item[medicationPreparation].linkId = "MedicationPreparation"
* item[assignment].item[medicationPreparation].type = #group

* item[assignment].item[medicationPreparation].item ^slicing.discriminator.type = #value
* item[assignment].item[medicationPreparation].item ^slicing.discriminator.path = "linkId"
* item[assignment].item[medicationPreparation].item ^slicing.rules = #open

* item[assignment].item[medicationPreparation].item contains
    preparationCorrect 1..1 MS and
    contactCareTeamNoPrep 0..1

* item[assignment].item[medicationPreparation].item[preparationCorrect].linkId = "E1_PreparationCorrect"
* item[assignment].item[medicationPreparation].item[preparationCorrect].type = #choice
* item[assignment].item[medicationPreparation].item[preparationCorrect].required = true

* item[assignment].item[medicationPreparation].item[contactCareTeamNoPrep].linkId = "E2_ContactCareTeam"
* item[assignment].item[medicationPreparation].item[contactCareTeamNoPrep].type = #display

// ============================================================
// Assignment: MedicationAdministration questions
// E3/E4 because E1/E2 are used in MedicationPreparation above
// ============================================================
* item[assignment].item[medicationAdministration].item ^slicing.discriminator.type = #value
* item[assignment].item[medicationAdministration].item ^slicing.discriminator.path = "linkId"
* item[assignment].item[medicationAdministration].item ^slicing.rules = #open

* item[assignment].item[medicationAdministration].item contains
    administrationCorrect 1..1 MS and
    specifyNo 0..1

* item[assignment].item[medicationAdministration].item[administrationCorrect].linkId = "E3_AdministrationCorrect"
* item[assignment].item[medicationAdministration].item[administrationCorrect].type = #choice
* item[assignment].item[medicationAdministration].item[administrationCorrect].required = true

* item[assignment].item[medicationAdministration].item[specifyNo].linkId = "E4_SpecifyNo"
* item[assignment].item[medicationAdministration].item[specifyNo].type = #string
