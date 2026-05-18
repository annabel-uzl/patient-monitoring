Profile: HomehospOncoBortezomibQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-bortezomib
Title: "ONCO Bortezomib Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Bortezomib (Velcade®) nursing observation form. Captures vital signs, medication checks, sensory/motor neuropathy contraindication assessment and post-administration side-effect monitoring. See logical model: [ONCOBortezomibQuestionnaire](StructureDefinition-onco-bortezomib-questionnaire.html)"

// ============================================================
// Contraindications: C3-C10 (Bortezomib-specific)
// ============================================================
* item[nursingAssessment].item[contraindications].item contains
    feverChills 1..1 MS and
    lowBloodPressure 1..1 MS and
    elevatedOrIrregularHeartRate 1..1 MS and
    severeSensoryNeuropathy 1..1 MS and
    severeMotorNeuropathy 1..1 MS and
    contactCareTeam 0..1 and
    decision 0..1 and
    decisionSpecify 0..1

* item[nursingAssessment].item[contraindications].item[feverChills].linkId = "C3_FeverChills"
* item[nursingAssessment].item[contraindications].item[feverChills].type = #choice
* item[nursingAssessment].item[contraindications].item[feverChills].required = true

* item[nursingAssessment].item[contraindications].item[lowBloodPressure].linkId = "C4_LowBloodPressure"
* item[nursingAssessment].item[contraindications].item[lowBloodPressure].type = #choice
* item[nursingAssessment].item[contraindications].item[lowBloodPressure].required = true

* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].linkId = "C5_ElevatedOrIrregularHeartRate"
* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].type = #choice
* item[nursingAssessment].item[contraindications].item[elevatedOrIrregularHeartRate].required = true

* item[nursingAssessment].item[contraindications].item[severeSensoryNeuropathy].linkId = "C6_SevereSensoryNeuropathy"
* item[nursingAssessment].item[contraindications].item[severeSensoryNeuropathy].type = #choice
* item[nursingAssessment].item[contraindications].item[severeSensoryNeuropathy].required = true

* item[nursingAssessment].item[contraindications].item[severeMotorNeuropathy].linkId = "C7_SevereMotorNeuropathy"
* item[nursingAssessment].item[contraindications].item[severeMotorNeuropathy].type = #choice
* item[nursingAssessment].item[contraindications].item[severeMotorNeuropathy].required = true

* item[nursingAssessment].item[contraindications].item[contactCareTeam].linkId = "C8_ContactCareTeam"
* item[nursingAssessment].item[contraindications].item[contactCareTeam].type = #display

* item[nursingAssessment].item[contraindications].item[decision].linkId = "C9_Decision"
* item[nursingAssessment].item[contraindications].item[decision].type = #choice

* item[nursingAssessment].item[contraindications].item[decisionSpecify].linkId = "C10_DecisionSpecify"
* item[nursingAssessment].item[contraindications].item[decisionSpecify].type = #string

// ============================================================
// SymptomBurden subgroup (Bortezomib-specific)
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
    paresthesia 0..1 and
    motorNeuropathy 0..1 and
    cough 0..1 and
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

* item[nursingAssessment].item[symptomBurden].item[paresthesia].linkId = "D11_Paresthesia"
* item[nursingAssessment].item[symptomBurden].item[paresthesia].type = #choice

* item[nursingAssessment].item[symptomBurden].item[motorNeuropathy].linkId = "D12_MotorNeuropathy"
* item[nursingAssessment].item[symptomBurden].item[motorNeuropathy].type = #choice

* item[nursingAssessment].item[symptomBurden].item[cough].linkId = "D13_Cough"
* item[nursingAssessment].item[symptomBurden].item[cough].type = #choice

* item[nursingAssessment].item[symptomBurden].item[otherObservations].linkId = "D14_OtherObservations"
* item[nursingAssessment].item[symptomBurden].item[otherObservations].type = #string

// ============================================================
// Assignment: MedicationAdministration questions
// E1/E2 (no preparation step for Bortezomib)
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

* item[assignment].item[medicationAdministration].item[specifyNo].linkId = "E2_SpecifyNo"
* item[assignment].item[medicationAdministration].item[specifyNo].type = #string
