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
* item[nursingAssessment].item[medicationPreparation].item[medicationFullyDissolved].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[medicationPreparation].item[contactCareTeam].linkId = "B2_ContactCareTeam"
* item[nursingAssessment].item[medicationPreparation].item[contactCareTeam].type = #display

* item[nursingAssessment].item[medicationAdministration].linkId = "MedicationAdministration"
* item[nursingAssessment].item[medicationAdministration].type = #group

* item[nursingAssessment].item[medicationAdministration].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[medicationAdministration].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[medicationAdministration].item ^slicing.rules = #open

* item[nursingAssessment].item[medicationAdministration].item contains
    administrationCorrect 1..1 MS

* item[nursingAssessment].item[medicationAdministration].item[administrationCorrect].linkId = "C1_AdministrationCorrect"
* item[nursingAssessment].item[medicationAdministration].item[administrationCorrect].type = #choice
* item[nursingAssessment].item[medicationAdministration].item[administrationCorrect].required = true
* item[nursingAssessment].item[medicationAdministration].item[administrationCorrect].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[vitalParameters].linkId = "VitalParameters"
* item[nursingAssessment].item[vitalParameters].type = #group

* item[nursingAssessment].item[dressingInsertionSite].linkId = "DressingInsertionSite"
* item[nursingAssessment].item[dressingInsertionSite].type = #group

* item[nursingAssessment].item[dressingInsertionSite].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[dressingInsertionSite].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[dressingInsertionSite].item ^slicing.rules = #open

* item[nursingAssessment].item[dressingInsertionSite].item contains
    dressingObservation 1..1 MS and
    bloody 0..1 and
    purulent 0..1 and
    loose 0..1 and
    serous 0..1 and
    moist 0..1

* item[nursingAssessment].item[dressingInsertionSite].item[dressingObservation].linkId = "E1_DressingObservation"
* item[nursingAssessment].item[dressingInsertionSite].item[dressingObservation].type = #choice
* item[nursingAssessment].item[dressingInsertionSite].item[dressingObservation].required = true
* item[nursingAssessment].item[dressingInsertionSite].item[dressingObservation].answerValueSet = Canonical(NormalAbnormalVS)

* item[nursingAssessment].item[dressingInsertionSite].item[bloody].linkId = "E3_Bloody"
* item[nursingAssessment].item[dressingInsertionSite].item[bloody].type = #choice
* item[nursingAssessment].item[dressingInsertionSite].item[bloody].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[dressingInsertionSite].item[purulent].linkId = "E4_Purulent"
* item[nursingAssessment].item[dressingInsertionSite].item[purulent].type = #choice
* item[nursingAssessment].item[dressingInsertionSite].item[purulent].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[dressingInsertionSite].item[loose].linkId = "E5_Loose"
* item[nursingAssessment].item[dressingInsertionSite].item[loose].type = #choice
* item[nursingAssessment].item[dressingInsertionSite].item[loose].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[dressingInsertionSite].item[serous].linkId = "E6_Serous"
* item[nursingAssessment].item[dressingInsertionSite].item[serous].type = #choice
* item[nursingAssessment].item[dressingInsertionSite].item[serous].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[dressingInsertionSite].item[moist].linkId = "E7_Moist"
* item[nursingAssessment].item[dressingInsertionSite].item[moist].type = #choice
* item[nursingAssessment].item[dressingInsertionSite].item[moist].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].linkId = "InsertionSite"
* item[nursingAssessment].item[insertionSite].type = #group

* item[nursingAssessment].item[insertionSite].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[insertionSite].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[insertionSite].item ^slicing.rules = #open

* item[nursingAssessment].item[insertionSite].item contains
    insertionSiteObservation 1..1 MS and
    blistering 0..1 and
    redness 0..1 and
    hematoma 0..1 and
    pus 0..1 and
    crusting 0..1 and
    swelling 0..1 and
    extravasation 0..1

* item[nursingAssessment].item[insertionSite].item[insertionSiteObservation].linkId = "F1_InsertionSiteObservation"
* item[nursingAssessment].item[insertionSite].item[insertionSiteObservation].type = #choice
* item[nursingAssessment].item[insertionSite].item[insertionSiteObservation].required = true
* item[nursingAssessment].item[insertionSite].item[insertionSiteObservation].answerValueSet = Canonical(NormalAbnormalVS)

* item[nursingAssessment].item[insertionSite].item[blistering].linkId = "F3_Blistering"
* item[nursingAssessment].item[insertionSite].item[blistering].type = #choice
* item[nursingAssessment].item[insertionSite].item[blistering].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].item[redness].linkId = "F4_Redness"
* item[nursingAssessment].item[insertionSite].item[redness].type = #choice
* item[nursingAssessment].item[insertionSite].item[redness].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].item[hematoma].linkId = "F5_Hematoma"
* item[nursingAssessment].item[insertionSite].item[hematoma].type = #choice
* item[nursingAssessment].item[insertionSite].item[hematoma].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].item[pus].linkId = "F6_Pus"
* item[nursingAssessment].item[insertionSite].item[pus].type = #choice
* item[nursingAssessment].item[insertionSite].item[pus].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].item[crusting].linkId = "F7_Crusting"
* item[nursingAssessment].item[insertionSite].item[crusting].type = #choice
* item[nursingAssessment].item[insertionSite].item[crusting].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].item[swelling].linkId = "F8_Swelling"
* item[nursingAssessment].item[insertionSite].item[swelling].type = #choice
* item[nursingAssessment].item[insertionSite].item[swelling].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[insertionSite].item[extravasation].linkId = "F9_Extravasation"
* item[nursingAssessment].item[insertionSite].item[extravasation].type = #choice
* item[nursingAssessment].item[insertionSite].item[extravasation].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[catheter].linkId = "Catheter"
* item[nursingAssessment].item[catheter].type = #group

* item[nursingAssessment].item[catheter].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[catheter].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[catheter].item ^slicing.rules = #open

* item[nursingAssessment].item[catheter].item contains
    catheterObservation 1..1 MS and
    bloodAspiration 0..1 and
    infusion 0..1 and
    damagedCatheter 0..1

* item[nursingAssessment].item[catheter].item[catheterObservation].linkId = "G1_CatheterObservation"
* item[nursingAssessment].item[catheter].item[catheterObservation].type = #choice
* item[nursingAssessment].item[catheter].item[catheterObservation].required = true
* item[nursingAssessment].item[catheter].item[catheterObservation].answerValueSet = Canonical(NormalAbnormalVS)

* item[nursingAssessment].item[catheter].item[bloodAspiration].linkId = "G3_BloodAspiration"
* item[nursingAssessment].item[catheter].item[bloodAspiration].type = #choice
* item[nursingAssessment].item[catheter].item[bloodAspiration].answerValueSet = Canonical(CatheterPatencyVS)

* item[nursingAssessment].item[catheter].item[infusion].linkId = "G4_Infusion"
* item[nursingAssessment].item[catheter].item[infusion].type = #choice
* item[nursingAssessment].item[catheter].item[infusion].answerValueSet = Canonical(CatheterPatencyVS)

* item[nursingAssessment].item[catheter].item[damagedCatheter].linkId = "G5_DamagedCatheter"
* item[nursingAssessment].item[catheter].item[damagedCatheter].type = #choice
* item[nursingAssessment].item[catheter].item[damagedCatheter].answerValueSet = Canonical(YesNoVS)

* item[nursingAssessment].item[sideEffects].linkId = "SideEffects"
* item[nursingAssessment].item[sideEffects].type = #group

* item[nursingAssessment].item[sideEffects].item ^slicing.discriminator.type = #value
* item[nursingAssessment].item[sideEffects].item ^slicing.discriminator.path = "linkId"
* item[nursingAssessment].item[sideEffects].item ^slicing.rules = #open

* item[nursingAssessment].item[sideEffects].item contains
    skinRash 0..1 and
    itching 0..1 and
    blistersOrPeeling 0..1 and
    nausea 0..1 and
    vomiting 0..1 and
    diarrhea 0..1 and
    constipation 0..1 and
    decreasedAppetite 0..1 and
    painDuringAdministration 0..1 and
    generalPain 0..1 and
    fatigue 0..1 and
    chills 0..1 and
    candidiasis 0..1 and
    jointPain 0..1 and
    respiratoryProblems 0..1 and
    facialSwelling 0..1

* item[nursingAssessment].item[sideEffects].item[skinRash].linkId = "H1_SkinRash"
* item[nursingAssessment].item[sideEffects].item[skinRash].type = #choice
* item[nursingAssessment].item[sideEffects].item[skinRash].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[itching].linkId = "H2_Itching"
* item[nursingAssessment].item[sideEffects].item[itching].type = #choice
* item[nursingAssessment].item[sideEffects].item[itching].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[blistersOrPeeling].linkId = "H3_BlistersOrPeeling"
* item[nursingAssessment].item[sideEffects].item[blistersOrPeeling].type = #choice
* item[nursingAssessment].item[sideEffects].item[blistersOrPeeling].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[nausea].linkId = "H4_Nausea"
* item[nursingAssessment].item[sideEffects].item[nausea].type = #choice
* item[nursingAssessment].item[sideEffects].item[nausea].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[vomiting].linkId = "H5_Vomiting"
* item[nursingAssessment].item[sideEffects].item[vomiting].type = #choice
* item[nursingAssessment].item[sideEffects].item[vomiting].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[diarrhea].linkId = "H6_Diarrhea"
* item[nursingAssessment].item[sideEffects].item[diarrhea].type = #choice
* item[nursingAssessment].item[sideEffects].item[diarrhea].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[constipation].linkId = "H7_Constipation"
* item[nursingAssessment].item[sideEffects].item[constipation].type = #choice
* item[nursingAssessment].item[sideEffects].item[constipation].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[decreasedAppetite].linkId = "H8_DecreasedAppetite"
* item[nursingAssessment].item[sideEffects].item[decreasedAppetite].type = #choice
* item[nursingAssessment].item[sideEffects].item[decreasedAppetite].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[painDuringAdministration].linkId = "H9_PainDuringAdministration"
* item[nursingAssessment].item[sideEffects].item[painDuringAdministration].type = #choice
* item[nursingAssessment].item[sideEffects].item[painDuringAdministration].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[generalPain].linkId = "H10_GeneralPain"
* item[nursingAssessment].item[sideEffects].item[generalPain].type = #choice
* item[nursingAssessment].item[sideEffects].item[generalPain].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[fatigue].linkId = "H11_Fatigue"
* item[nursingAssessment].item[sideEffects].item[fatigue].type = #choice
* item[nursingAssessment].item[sideEffects].item[fatigue].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[chills].linkId = "H12_Chills"
* item[nursingAssessment].item[sideEffects].item[chills].type = #choice
* item[nursingAssessment].item[sideEffects].item[chills].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[candidiasis].linkId = "H13_Candidiasis"
* item[nursingAssessment].item[sideEffects].item[candidiasis].type = #choice
* item[nursingAssessment].item[sideEffects].item[candidiasis].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[jointPain].linkId = "H14_JointPain"
* item[nursingAssessment].item[sideEffects].item[jointPain].type = #choice
* item[nursingAssessment].item[sideEffects].item[jointPain].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[respiratoryProblems].linkId = "H15_RespiratoryProblems"
* item[nursingAssessment].item[sideEffects].item[respiratoryProblems].type = #choice
* item[nursingAssessment].item[sideEffects].item[respiratoryProblems].answerValueSet = Canonical(HomehospSideEffectSeverityVS)

* item[nursingAssessment].item[sideEffects].item[facialSwelling].linkId = "H16_FacialSwelling"
* item[nursingAssessment].item[sideEffects].item[facialSwelling].type = #choice
* item[nursingAssessment].item[sideEffects].item[facialSwelling].answerValueSet = Canonical(HomehospSideEffectSeverityVS)
