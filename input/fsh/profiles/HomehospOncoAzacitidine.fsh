Profile: HomehospOncoAzacitidineQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-azacitidine
Title: "ONCO Azacitidine Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Azacitidine (Vidaza®) nursing observation form. Captures vital signs (including conditional SpO2), medication dissolution check, GI/pulmonary contraindications and side-effect monitoring. See logical model: [ONCOAzacitidineQuestionnaire](StructureDefinition-onco-azacitidine-questionnaire.html)"

// ============================================================
// ObservationParameters: B5 OxygenSaturation (Azacitidine-specific, conditional)
// ============================================================
* item[nursingAssessment].item[observationParameters].item contains
    oxygenSaturation 0..1

* item[nursingAssessment].item[observationParameters].item[oxygenSaturation].linkId = "B5_OxygenSaturation"
* item[nursingAssessment].item[observationParameters].item[oxygenSaturation].type = #decimal

// ============================================================
// Contraindications: C3-C12 (Azacitidine-specific)
// ============================================================
* item[nursingAssessment].item[contraindications].item contains
    feverChills 1..1 MS and
    oralIntake 1..1 MS and
    severeNausea 1..1 MS and
    severeDyspnea 1..1 MS and
    newCoughDyspnea 1..1 MS and
    generalDecline 1..1 MS and
    otherContraindication 0..1 and
    contactCareTeam 0..1 and
    decision 0..1 and
    decisionSpecify 0..1

* item[nursingAssessment].item[contraindications].item[feverChills].linkId = "C3_FeverChills"
* item[nursingAssessment].item[contraindications].item[feverChills].type = #choice
* item[nursingAssessment].item[contraindications].item[feverChills].required = true
* item[nursingAssessment].item[contraindications].item[feverChills].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[oralIntake].linkId = "C4_OralIntake"
* item[nursingAssessment].item[contraindications].item[oralIntake].type = #choice
* item[nursingAssessment].item[contraindications].item[oralIntake].required = true
* item[nursingAssessment].item[contraindications].item[oralIntake].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[severeNausea].linkId = "C5_SevereNausea"
* item[nursingAssessment].item[contraindications].item[severeNausea].type = #choice
* item[nursingAssessment].item[contraindications].item[severeNausea].required = true
* item[nursingAssessment].item[contraindications].item[severeNausea].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[severeDyspnea].linkId = "C6_SevereDyspnea"
* item[nursingAssessment].item[contraindications].item[severeDyspnea].type = #choice
* item[nursingAssessment].item[contraindications].item[severeDyspnea].required = true
* item[nursingAssessment].item[contraindications].item[severeDyspnea].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[newCoughDyspnea].linkId = "C7_NewCoughDyspnea"
* item[nursingAssessment].item[contraindications].item[newCoughDyspnea].type = #choice
* item[nursingAssessment].item[contraindications].item[newCoughDyspnea].required = true
* item[nursingAssessment].item[contraindications].item[newCoughDyspnea].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[generalDecline].linkId = "C8_GeneralDecline"
* item[nursingAssessment].item[contraindications].item[generalDecline].type = #choice
* item[nursingAssessment].item[contraindications].item[generalDecline].required = true
* item[nursingAssessment].item[contraindications].item[generalDecline].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[contraindications].item[otherContraindication].linkId = "C9_Other"
* item[nursingAssessment].item[contraindications].item[otherContraindication].type = #string

* item[nursingAssessment].item[contraindications].item[contactCareTeam].linkId = "C10_ContactCareTeam"
* item[nursingAssessment].item[contraindications].item[contactCareTeam].type = #display

* item[nursingAssessment].item[contraindications].item[decision].linkId = "C11_Decision"
* item[nursingAssessment].item[contraindications].item[decision].type = #choice

* item[nursingAssessment].item[contraindications].item[decisionSpecify].linkId = "C12_DecisionSpecify"
* item[nursingAssessment].item[contraindications].item[decisionSpecify].type = #string

// ============================================================
// SymptomBurden subgroup (Azacitidine-specific)
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
    cough 0..1 and
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

* item[nursingAssessment].item[symptomBurden].item[cough].linkId = "D11_Cough"
* item[nursingAssessment].item[symptomBurden].item[cough].type = #choice
* item[nursingAssessment].item[symptomBurden].item[cough].answerValueSet = Canonical(ONCOSymptomGradeVS)

* item[nursingAssessment].item[symptomBurden].item[otherObservations].linkId = "D12_OtherObservations"
* item[nursingAssessment].item[symptomBurden].item[otherObservations].type = #string

// ============================================================
// Assignment: MedicationPreparation subgroup (Azacitidine-specific)
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
