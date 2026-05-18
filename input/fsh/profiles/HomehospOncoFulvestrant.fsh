Profile: HomehospOncoFulvestrantQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-fulvestrant
Title: "ONCO Fulvestrant Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Fulvestrant (Faslodex®) nursing observation form. Captures vital signs, contraindication check, administration (bilateral IM injections) and muscle/joint pain side-effect follow-up. See logical model: [ONCOFulvestrantQuestionnaire](StructureDefinition-onco-fulvestrant-questionnaire.html)"

// ============================================================
// Contraindications: C3-C6 (Fulvestrant-specific)
// ============================================================
* item[nursingAssessment].item[contraindications].item contains
    feverChills 1..1 MS and
    contactCareTeam 0..1 and
    decision 0..1 and
    decisionSpecify 0..1

* item[nursingAssessment].item[contraindications].item[feverChills].linkId = "C3_FeverChills"
* item[nursingAssessment].item[contraindications].item[feverChills].type = #choice
* item[nursingAssessment].item[contraindications].item[feverChills].required = true
* item[nursingAssessment].item[contraindications].item[feverChills].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[contactCareTeam].linkId = "C4_ContactCareTeam"
* item[nursingAssessment].item[contraindications].item[contactCareTeam].type = #display

* item[nursingAssessment].item[contraindications].item[decision].linkId = "C5_Decision"
* item[nursingAssessment].item[contraindications].item[decision].type = #choice

* item[nursingAssessment].item[contraindications].item[decisionSpecify].linkId = "C6_DecisionSpecify"
* item[nursingAssessment].item[contraindications].item[decisionSpecify].type = #string

// ============================================================
// SideEffects subgroup (Fulvestrant-specific)
// ============================================================
* item[nursingAssessment].item contains
    sideEffects 1..1 MS

* item[nursingAssessment].item[sideEffects].linkId = "SideEffects"
* item[nursingAssessment].item[sideEffects].type = #group

* item[nursingAssessment].item[sideEffects].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[sideEffects].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[sideEffects].item ^slicing.rules = #open

* item[nursingAssessment].item[sideEffects].item contains
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
    muscleAndJointPain 0..1 and
    otherObservations 0..1

* item[nursingAssessment].item[sideEffects].item[nausea].linkId = "D1_Nausea"
* item[nursingAssessment].item[sideEffects].item[nausea].type = #choice
* item[nursingAssessment].item[sideEffects].item[nausea].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[vomiting].linkId = "D2_Vomiting"
* item[nursingAssessment].item[sideEffects].item[vomiting].type = #choice
* item[nursingAssessment].item[sideEffects].item[vomiting].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[decreasedAppetite].linkId = "D3_DecreasedAppetite"
* item[nursingAssessment].item[sideEffects].item[decreasedAppetite].type = #choice
* item[nursingAssessment].item[sideEffects].item[decreasedAppetite].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[diarrhea].linkId = "D4_Diarrhea"
* item[nursingAssessment].item[sideEffects].item[diarrhea].type = #choice
* item[nursingAssessment].item[sideEffects].item[diarrhea].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[constipation].linkId = "D5_Constipation"
* item[nursingAssessment].item[sideEffects].item[constipation].type = #choice
* item[nursingAssessment].item[sideEffects].item[constipation].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[fatigue].linkId = "D6_Fatigue"
* item[nursingAssessment].item[sideEffects].item[fatigue].type = #choice
* item[nursingAssessment].item[sideEffects].item[fatigue].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[pain].linkId = "D7_Pain"
* item[nursingAssessment].item[sideEffects].item[pain].type = #choice
* item[nursingAssessment].item[sideEffects].item[pain].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[skinRash].linkId = "D8_SkinRash"
* item[nursingAssessment].item[sideEffects].item[skinRash].type = #choice
* item[nursingAssessment].item[sideEffects].item[skinRash].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[psychosocialBurden].linkId = "D9_PsychosocialBurden"
* item[nursingAssessment].item[sideEffects].item[psychosocialBurden].type = #choice
* item[nursingAssessment].item[sideEffects].item[psychosocialBurden].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[dyspnea].linkId = "D10_Dyspnea"
* item[nursingAssessment].item[sideEffects].item[dyspnea].type = #choice
* item[nursingAssessment].item[sideEffects].item[dyspnea].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[muscleAndJointPain].linkId = "D11_MuscleAndJointPain"
* item[nursingAssessment].item[sideEffects].item[muscleAndJointPain].type = #choice
* item[nursingAssessment].item[sideEffects].item[muscleAndJointPain].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[sideEffects].item[otherObservations].linkId = "D12_OtherObservations"
* item[nursingAssessment].item[sideEffects].item[otherObservations].type = #string

// ============================================================
// Assignment: MedicationAdministration questions
// E1/E2 (no preparation step for Fulvestrant)
// ============================================================
* item[assignment].item[medicationAdministration].item ^slicing.discriminator.type = #value
* item[assignment].item[medicationAdministration].item ^slicing.discriminator.path = "linkId"
* item[assignment].item[medicationAdministration].item ^slicing.rules = #open

* item[assignment].item[medicationAdministration].item contains
    administrationCorrect 1..1 MS and
    specifyNo 0..1

* item[assignment].item[medicationAdministration].item[administrationCorrect].linkId = "E1_AdministrationCorrect"
* item[assignment].item[medicationAdministration].item[administrationCorrect].type = #choice
* item[assignment].item[medicationAdministration].item[administrationCorrect].required = true
* item[assignment].item[medicationAdministration].item[administrationCorrect].answerValueSet = Canonical(YesNoVS)

* item[assignment].item[medicationAdministration].item[specifyNo].linkId = "E2_SpecifyNo"
* item[assignment].item[medicationAdministration].item[specifyNo].type = #string
