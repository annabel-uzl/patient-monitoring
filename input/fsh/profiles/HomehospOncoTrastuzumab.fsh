Profile: HomehospOncoTrastuzumabQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-trastuzumab
Title: "ONCO Trastuzumab Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Trastuzumab (Herceptin®) nursing observation form. Captures body weight check, aftercare protocol, cardiac contraindications (LVEF, respiratory symptoms, oedema), vital signs and CTCAE-graded side effects. See logical model: [ONCOTrastuzumabQuestionnaire](StructureDefinition-onco-trastuzumab-questionnaire.html)"

// ============================================================
// ObservationParameters: B5 BodyWeight (Trastuzumab-specific, required)
// ============================================================
* item[nursingAssessment].item[observationParameters].item contains
    bodyWeight 1..1 MS

* item[nursingAssessment].item[observationParameters].item[bodyWeight].linkId = "B5_BodyWeight"
* item[nursingAssessment].item[observationParameters].item[bodyWeight].type = #decimal
* item[nursingAssessment].item[observationParameters].item[bodyWeight].required = true

// ============================================================
// Contraindications: C3-C11 (Trastuzumab-specific, cardiac)
// ============================================================
* item[nursingAssessment].item[contraindications].item contains
    feverChills 1..1 MS and
    lowBloodPressure 1..1 MS and
    elevatedOrIrregularHeartRate 1..1 MS and
    weightGain 1..1 MS and
    edemaHandsFeet 1..1 MS and
    dyspnea 1..1 MS and
    contactCareTeam 0..1 and
    decision 0..1 and
    decisionSpecify 0..1

* item[nursingAssessment].item[contraindications].item[feverChills].linkId = "C3_FeverChills"
* item[nursingAssessment].item[contraindications].item[feverChills].type = #choice
* item[nursingAssessment].item[contraindications].item[feverChills].required = true
* item[nursingAssessment].item[contraindications].item[feverChills].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[lowBloodPressure].linkId = "C4_LowBloodPressure"
* item[nursingAssessment].item[contraindications].item[lowBloodPressure].type = #choice
* item[nursingAssessment].item[contraindications].item[lowBloodPressure].required = true
* item[nursingAssessment].item[contraindications].item[lowBloodPressure].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].linkId = "C5_ElevatedOrIrregularHeartRate"
* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].type = #choice
* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].required = true
* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[weightGain].linkId = "C6_WeightGain"
* item[nursingAssessment].item[contraindications].item[weightGain].type = #choice
* item[nursingAssessment].item[contraindications].item[weightGain].required = true
* item[nursingAssessment].item[contraindications].item[weightGain].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[edemaHandsFeet].linkId = "C7_EdemaHandsFeet"
* item[nursingAssessment].item[contraindications].item[edemaHandsFeet].type = #choice
* item[nursingAssessment].item[contraindications].item[edemaHandsFeet].required = true
* item[nursingAssessment].item[contraindications].item[edemaHandsFeet].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[dyspnea].linkId = "C8_Dyspnea"
* item[nursingAssessment].item[contraindications].item[dyspnea].type = #choice
* item[nursingAssessment].item[contraindications].item[dyspnea].required = true
* item[nursingAssessment].item[contraindications].item[dyspnea].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[contactCareTeam].linkId = "C9_ContactCareTeam"
* item[nursingAssessment].item[contraindications].item[contactCareTeam].type = #display

* item[nursingAssessment].item[contraindications].item[decision].linkId = "C10_Decision"
* item[nursingAssessment].item[contraindications].item[decision].type = #choice

* item[nursingAssessment].item[contraindications].item[decisionSpecify].linkId = "C11_DecisionSpecify"
* item[nursingAssessment].item[contraindications].item[decisionSpecify].type = #string

// ============================================================
// SymptomBurden subgroup (Trastuzumab-specific)
// ============================================================
* item[nursingAssessment].item contains
    symptomBurden 1..1 MS

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
    edema 0..1 and
    otherObservations 0..1

* item[nursingAssessment].item[symptomBurden].item[nausea].linkId = "D1_Nausea"
* item[nursingAssessment].item[symptomBurden].item[nausea].type = #choice
* item[nursingAssessment].item[symptomBurden].item[nausea].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[vomiting].linkId = "D2_Vomiting"
* item[nursingAssessment].item[symptomBurden].item[vomiting].type = #choice
* item[nursingAssessment].item[symptomBurden].item[vomiting].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[decreasedAppetite].linkId = "D3_DecreasedAppetite"
* item[nursingAssessment].item[symptomBurden].item[decreasedAppetite].type = #choice
* item[nursingAssessment].item[symptomBurden].item[decreasedAppetite].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[diarrhea].linkId = "D4_Diarrhea"
* item[nursingAssessment].item[symptomBurden].item[diarrhea].type = #choice
* item[nursingAssessment].item[symptomBurden].item[diarrhea].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[constipation].linkId = "D5_Constipation"
* item[nursingAssessment].item[symptomBurden].item[constipation].type = #choice
* item[nursingAssessment].item[symptomBurden].item[constipation].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[fatigue].linkId = "D6_Fatigue"
* item[nursingAssessment].item[symptomBurden].item[fatigue].type = #choice
* item[nursingAssessment].item[symptomBurden].item[fatigue].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[pain].linkId = "D7_Pain"
* item[nursingAssessment].item[symptomBurden].item[pain].type = #choice
* item[nursingAssessment].item[symptomBurden].item[pain].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[skinRash].linkId = "D8_SkinRash"
* item[nursingAssessment].item[symptomBurden].item[skinRash].type = #choice
* item[nursingAssessment].item[symptomBurden].item[skinRash].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[psychosocialBurden].linkId = "D9_PsychosocialBurden"
* item[nursingAssessment].item[symptomBurden].item[psychosocialBurden].type = #choice
* item[nursingAssessment].item[symptomBurden].item[psychosocialBurden].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[dyspnea].linkId = "D10_Dyspnea"
* item[nursingAssessment].item[symptomBurden].item[dyspnea].type = #choice
* item[nursingAssessment].item[symptomBurden].item[dyspnea].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[edema].linkId = "D11_Edema"
* item[nursingAssessment].item[symptomBurden].item[edema].type = #choice
* item[nursingAssessment].item[symptomBurden].item[edema].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[otherObservations].linkId = "D12_OtherObservations"
* item[nursingAssessment].item[symptomBurden].item[otherObservations].type = #string

// ============================================================
// Assignment: MedicationPreparation subgroup (Trastuzumab-specific)
// ============================================================
* item[assignment].item contains
    medicationPreparation 1..1 MS and
    aftercare 1..1 MS

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
* item[assignment].item[medicationPreparation].item[preparationCorrect].answerValueSet = Canonical(YesNoVS)

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
* item[assignment].item[medicationAdministration].item[administrationCorrect].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[medicationAdministration].item[specifyNo].linkId = "E4_SpecifyNo"
* item[assignment].item[medicationAdministration].item[specifyNo].type = #string

// ============================================================
// Assignment: Aftercare subgroup (Trastuzumab-specific)
// Post-administration observation period reaction monitoring
// ============================================================
* item[assignment].item[aftercare].linkId = "Aftercare"
* item[assignment].item[aftercare].type = #group

* item[assignment].item[aftercare].item ^slicing.discriminator.type = #value
* item[assignment].item[aftercare].item ^slicing.discriminator.path = "linkId"
* item[assignment].item[aftercare].item ^slicing.rules = #open

* item[assignment].item[aftercare].item contains
    reactionDuringHomeObservation 1..1 MS and
    specifyReaction 0..1 and
    fever 0..1 and
    nausea 0..1 and
    dyspnea 0..1 and
    shivering 0..1 and
    fluLikeSymptoms 0..1

* item[assignment].item[aftercare].item[reactionDuringHomeObservation].linkId = "G1_ReactionDuringHomeObservation"
* item[assignment].item[aftercare].item[reactionDuringHomeObservation].type = #choice
* item[assignment].item[aftercare].item[reactionDuringHomeObservation].required = true
* item[assignment].item[aftercare].item[reactionDuringHomeObservation].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[aftercare].item[specifyReaction].linkId = "G2_SpecifyReaction"
* item[assignment].item[aftercare].item[specifyReaction].type = #display

* item[assignment].item[aftercare].item[fever].linkId = "G3_Fever"
* item[assignment].item[aftercare].item[fever].type = #choice
* item[assignment].item[aftercare].item[fever].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[aftercare].item[nausea].linkId = "G4_Nausea"
* item[assignment].item[aftercare].item[nausea].type = #choice
* item[assignment].item[aftercare].item[nausea].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[aftercare].item[dyspnea].linkId = "G5_Dyspnea"
* item[assignment].item[aftercare].item[dyspnea].type = #choice
* item[assignment].item[aftercare].item[dyspnea].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[aftercare].item[shivering].linkId = "G6_Shivering"
* item[assignment].item[aftercare].item[shivering].type = #choice
* item[assignment].item[aftercare].item[shivering].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[aftercare].item[fluLikeSymptoms].linkId = "G7_FluLikeSymptoms"
* item[assignment].item[aftercare].item[fluLikeSymptoms].type = #choice
* item[assignment].item[aftercare].item[fluLikeSymptoms].answerValueSet = Canonical(YesNoVS)

