Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: BortezomibV1
InstanceOf: HomehospOncoBortezomibQuestionnaire
Title: "Bortezomib questionnaire home hospitalization"
Description: "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Bortezomib (Velcade®)."
Usage: #example
* url = "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/BortezomibV1"
* name = "BortezomibV1"
* title = "Bortezomib"
* status = #active
* subjectType = #Patient

// ==========================================
// GROUP 0: Verpleegkundig assessment
// ==========================================
* item[nursingAssessment].linkId = "NursingAssessment"
* item[nursingAssessment].text = "Verpleegkundig assessment"
* item[nursingAssessment].type = #group

// --- Subgroup 0: Bewaring ---
* item[nursingAssessment].item[0].linkId = "MedicationStorage"
* item[nursingAssessment].item[=].text = "MedicationStorage"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "A1_MedicationStorage"
* item[nursingAssessment].item[=].item[=].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#422413002 "Ability to store medications"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#710977001 "Safe storage and management of medication"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"

* item[nursingAssessment].item[=].item[+].linkId = "A2_MedicationStorageSpecify"
* item[nursingAssessment].item[=].item[=].text = "> Indien opmerkingen of bezorgdheid: specifieer"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].enableWhen[0].question = "A1_MedicationStorage"
* item[nursingAssessment].item[=].item[=].enableWhen[0].operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen[0].answerCoding = $sct#424363005 "Improper storage of medication"

// --- Subgroup 1: Observatie parameters ---
* item[nursingAssessment].item[+].linkId = "ObservationParameters"
* item[nursingAssessment].item[=].text = "Observatie parameters"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "B1_BodyTemperature"
* item[nursingAssessment].item[=].item[=].text = "Lichaamstemperatuur:"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $loinc#8310-5 "Body temperature"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#Cel "Cel"

* item[nursingAssessment].item[=].item[+].linkId = "B2_HeartRate"
* item[nursingAssessment].item[=].item[=].text = "Pols:"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#364075005 "Heart rate"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#{beats}/min "{beats}/min"

* item[nursingAssessment].item[=].item[+].linkId = "B3_SystolicBloodPressure"
* item[nursingAssessment].item[=].item[=].text = "Bloeddruk systolisch:"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"

* item[nursingAssessment].item[=].item[+].linkId = "B4_DiastolicBloodPressure"
* item[nursingAssessment].item[=].item[=].text = "Bloeddruk diastolisch:"
* item[nursingAssessment].item[=].item[=].type = #decimal
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $loinc#8462-4 "Diastolic blood pressure"
* item[nursingAssessment].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[nursingAssessment].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mm[Hg]"

// --- Subgroup 2: Tegenindicaties ---
* item[nursingAssessment].item[+].linkId = "Contraindications"
* item[nursingAssessment].item[=].text = "Contraindications"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "C1_ContraindicationPresent"
* item[nursingAssessment].item[=].item[=].text = "Zijn er tegenindicaties voor toediening?"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#395008009 "Medication stopped - contra-indication"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[nursingAssessment].item[=].item[+].linkId = "C2_ContraindicationSpecify"
* item[nursingAssessment].item[=].item[=].text = "> Indien 'ja': specifieer"
* item[nursingAssessment].item[=].item[=].type = #display
* item[nursingAssessment].item[=].item[=].enableWhen[0].question = "C1_ContraindicationPresent"
* item[nursingAssessment].item[=].item[=].enableWhen[0].operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen[0].answerCoding = $sct#373066001 "Yes"

* item[nursingAssessment].item[=].item[+].linkId = "C3_FeverChills"
* item[nursingAssessment].item[=].item[=].text = "Koorts, koude rillingen, zich ziek voelen"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#39104002 "Illness"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[nursingAssessment].item[=].item[+].linkId = "C4_LowBloodPressure"
* item[nursingAssessment].item[=].item[=].text = "Herhaaldelijk bloeddruk lager dan 100/60 mmHg"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#12763006 "Low blood pressure, not hypotension"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[nursingAssessment].item[=].item[+].linkId = "C5_ElevatedOrIrregularHeartRate"
* item[nursingAssessment].item[=].item[=].text = "Hartslag boven 100 slagen per minuut in rust of onregelmatig hartritme, tenzij chronisch gekend"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#361137007 "Irregular heart beat"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[nursingAssessment].item[=].item[+].linkId = "C6_SevereSensoryNeuropathy"
* item[nursingAssessment].item[=].item[=].text = "Ernstige sensorische neuropathie (bv. gevoelloosheid, tintelingen, brandend of koud gevoel in handen/voeten met pijn en/of impact op dagelijkse activiteiten)"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#95662005 "Sensory neuropathy"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[nursingAssessment].item[=].item[+].linkId = "C7_SevereMotorNeuropathy"
* item[nursingAssessment].item[=].item[=].text = "Ernstige motorische neuropathie (bv. ernstige spierzwakte, algemene zwakte of tremor met impact op activiteiten zoals stappen of schrijven)"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].required = true
* item[nursingAssessment].item[=].item[=].code = $sct#299737009 "Lower motor neurone lesion"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[nursingAssessment].item[=].item[+].linkId = "C8_ContactCareTeam"
* item[nursingAssessment].item[=].item[=].text = "> Indien tegenindicatie(s): gelieve contact op te nemen met het zorgteam in het ziekenhuis"
* item[nursingAssessment].item[=].item[=].type = #display
* item[nursingAssessment].item[=].item[=].enableWhen[0].question = "C1_ContraindicationPresent"
* item[nursingAssessment].item[=].item[=].enableWhen[0].operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen[0].answerCoding = $sct#373066001 "Yes"

* item[nursingAssessment].item[=].item[+].linkId = "C9_Decision"
* item[nursingAssessment].item[=].item[=].text = "Beslissing na overleg ziekenhuis"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#182836005 "Medication review"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueString = "toediening"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueString = "geen toediening"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueString = "andere"

* item[nursingAssessment].item[=].item[+].linkId = "C10_DecisionSpecify"
* item[nursingAssessment].item[=].item[=].text = "> Indien andere: specifieer"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].code = $sct#1156698007 "Review of current supply of medication"
* item[nursingAssessment].item[=].item[=].enableWhen[0].question = "C9_Decision"
* item[nursingAssessment].item[=].item[=].enableWhen[0].operator = #=
* item[nursingAssessment].item[=].item[=].enableWhen[0].answerString = "andere"

// --- Subgroup 3: Symptoomlast ---
* item[nursingAssessment].item[+].linkId = "SymptomBurden"
* item[nursingAssessment].item[=].text = "SymptomBurden"
* item[nursingAssessment].item[=].type = #group

* item[nursingAssessment].item[=].item[0].linkId = "D1_Nausea"
* item[nursingAssessment].item[=].item[=].text = "Misselijkheid"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#422587007 "Nausea"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D2_Vomiting"
* item[nursingAssessment].item[=].item[=].text = "Braken"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#249497008 "Vomiting symptom"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D3_DecreasedAppetite"
* item[nursingAssessment].item[=].item[=].text = "Verminderde eetlust of smaakverandering"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#64379006 "Decrease in appetite"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D4_Diarrhea"
* item[nursingAssessment].item[=].item[=].text = "Buikloop"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#62315008 "Diarrhea"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D5_Constipation"
* item[nursingAssessment].item[=].item[=].text = "Verstopping"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#14760008 "Constipation"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D6_Fatigue"
* item[nursingAssessment].item[=].item[=].text = "Vermoeidheid/futloosheid"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#224960004 "Tired"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D7_Pain"
* item[nursingAssessment].item[=].item[=].text = "Pijn"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#112104007 "Localized pain"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D8_SkinRash"
* item[nursingAssessment].item[=].item[=].text = "Huiduitslag"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#271807003 "Eruption"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D9_PsychosocialBurden"
* item[nursingAssessment].item[=].item[=].text = "Psychosociale belasting"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#384821006 "Mental state, behaviour and/or psychosocial function finding"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D10_Dyspnea"
* item[nursingAssessment].item[=].item[=].text = "Kortademigheid"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#267036007 "Dyspnea"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D11_Paresthesia"
* item[nursingAssessment].item[=].item[=].text = "Tintelingen of gevoelloosheid in vingers of tenen"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#91019004 "Paresthesia"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D12_MotorNeuropathy"
* item[nursingAssessment].item[=].item[=].text = "Motorische neuropathie (bv. spierzwakte of tremor)"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#95663000 "Motor neuropathy"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D13_Cough"
* item[nursingAssessment].item[=].item[=].text = "Hoest"
* item[nursingAssessment].item[=].item[=].type = #choice
* item[nursingAssessment].item[=].item[=].code = $sct#49727002 "Cough"
* item[nursingAssessment].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3"
* item[nursingAssessment].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3"

* item[nursingAssessment].item[=].item[+].linkId = "D14_OtherObservations"
* item[nursingAssessment].item[=].item[=].text = "Andere nevenwerkingen of relevante klinische en psychosociale observaties\n(gelieve bij klinische bezorgdheid contact te nemen met het ziekenhuis voor bespreking)"
* item[nursingAssessment].item[=].item[=].type = #string
* item[nursingAssessment].item[=].item[=].code = $sct#365275006 "General well-being finding"

// ==========================================
// GROUP 1: Opdracht
// ==========================================
* item[assignment].linkId = "Assignment"
* item[assignment].text = "Assignment"
* item[assignment].type = #group

// --- Subgroup 0: Medicatietoediening ---
* item[assignment].item[0].linkId = "MedicationAdministration"
* item[assignment].item[=].text = "MedicationAdministration"
* item[assignment].item[=].type = #group

* item[assignment].item[=].item[0].linkId = "E1_AdministrationCorrect"
* item[assignment].item[=].item[=].text = "Kon de medicatie exact volgens de procedure worden toegediend (er waren geen afwijkingen)?"
* item[assignment].item[=].item[=].type = #choice
* item[assignment].item[=].item[=].required = true
* item[assignment].item[=].item[=].code = $sct#373149000 "Medication administered following procedure"
* item[assignment].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes"
* item[assignment].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[assignment].item[=].item[+].linkId = "E2_SpecifyNo"
* item[assignment].item[=].item[=].text = "> Indien 'nee': specifieer"
* item[assignment].item[=].item[=].type = #string
* item[assignment].item[=].item[=].enableWhen[0].question = "E1_AdministrationCorrect"
* item[assignment].item[=].item[=].enableWhen[0].operator = #=
* item[assignment].item[=].item[=].enableWhen[0].answerCoding = $sct#373067005 "No"

// ==========================================
// GROUP 2: Kwaliteitsopvolging
// ==========================================
* item[qualityMonitoring].linkId = "QualityMonitoring"
* item[qualityMonitoring].text = "(Kwaliteits)opvolging"
* item[qualityMonitoring].type = #group

* item[qualityMonitoring].item[0].linkId = "F1_CommentsRegistration"
* item[qualityMonitoring].item[=].text = "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie oncologie, dan kan je deze hier noteren. Alvast dank."
* item[qualityMonitoring].item[=].type = #string
* item[qualityMonitoring].item[=].code = $sct#276238005 "Comments on own writing"
