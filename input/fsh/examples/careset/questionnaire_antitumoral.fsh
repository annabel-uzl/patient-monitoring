Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: AzacitidineV1
InstanceOf: Questionnaire
Title: "Azacitidine questionnaire home hospitalization"
Description: "Questionnaire containing the necessary information for the home hospitalization of a patient treated with Azacitidine."
Usage: #example
* title = "Azacitidine"
* status = #active
* item[0].linkId = "Verpleegkundigassessment"
* item[=].text = "Verpleegkundig assessment"
* item[=].type = #group
* item[=].item[0].linkId = "Bewaring"
* item[=].item[=].text = "Bewaring"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "A1_Bewaring"
* item[=].item[=].item[=].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#422413002 "Ability to store medications (observable entity)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#710977001 "Safe storage of medication"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"
* item[=].item[=].item[+].linkId = "A2_BewaringSpecifieer"
* item[=].item[=].item[=].text = "> Indien opmerkingen of bezorgdheid: specifieer"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen.question = "A1_Bewaring"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#424363005 "Improper storage of medication"
* item[=].item[+].linkId = "Observatieparameters"
* item[=].item[=].text = "Observatie parameters"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "B1_Temperatuur"
* item[=].item[=].item[=].text = "Lichaamstemperatuur:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8310-5 "Body temperature"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#Cel "°C"
* item[=].item[=].item[+].linkId = "B2_Pols"
* item[=].item[=].item[=].text = "Pols:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#364075005 "Heart rate (observable entity)"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#{beats}/min "bpm"
* item[=].item[=].item[+].linkId = "B3_BloeddrukSystolisch"
* item[=].item[=].item[=].text = "Bloeddruk systolisch:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mmHg"
* item[=].item[=].item[+].linkId = "B4_BloeddrukDiastolisch"
* item[=].item[=].item[=].text = "Bloeddruk diastolisch:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8462-4 "Diastolic blood pressure"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mmHg"
* item[=].item[=].item[+].linkId = "B5_Zuurstofsaturatie"
* item[=].item[=].item[=].text = "Zuurstofsaturatie (enkel uitvoeren bij hoest en kortademigheid)"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#% "%"
* item[=].item[+].linkId = "Tegenindicaties"
* item[=].item[=].text = "Tegenindicaties"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "C1_Tegenindicatie"
* item[=].item[=].item[=].text = "Zijn er tegenindicaties voor toediening?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#395008009 "Medication stopped - contra-indication (situation)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C2_SpecifieerTegenindicatie"
* item[=].item[=].item[=].text = "> Indien 'ja': specifieer"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "C1_Tegenindicatie"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[+].linkId = "C3_KoortsRillingen"
* item[=].item[=].item[=].text = "Koorts , koude rillingen, zich ziek voelen"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#39104002 "Illness (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C4_OraleIntake"
* item[=].item[=].item[=].text = "Geen orale intake (tgv verminderde eetlust of smaakverandering)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#247318005 "Abnormal taste in mouth (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C5_MisselijkheidErnstig"
* item[=].item[=].item[=].text = "Ernstige misselijkheid (dwz misselijkheid met onvoldoende orale intake)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#73335002 "Increased nausea and vomiting (disorder)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C6_KortademigheidErnstig"
* item[=].item[=].item[=].text = "Toegenomen kortademigheid en/of ernstige kortademigheid (dwz kortademigheid in rust/zonder inspanning en/of kortademigheid die hindert bij de dagelijkse activiteiten) (Trastuzumab, Azacitidine)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#"297216006 "Dyspnea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C7_HoestDyspnoe"
* item[=].item[=].item[=].text = "Nieuwe of toegenomen productieve of droge hoest, met of zonder dyspnoe"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#11833005 "Dry cough (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C8_Achteruitgang"
* item[=].item[=].item[=].text = "Algemene achteruitgang"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#154091000119106 "Decline in functional status (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "C9_Andere"
* item[=].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#438833006 "Administration of drug or medicament contraindicated (situation)"
* item[=].item[=].item[+].linkId = "C10_ContactZorgteam"
* item[=].item[=].item[=].text = "> Indien tegenindicatie(s): gelieve contact op te nemen met het zorgteam in het ziekenhuis"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "C1_Tegenindicatie"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[+].linkId = "C11_Beslissing"
* item[=].item[=].item[=].text = "Beslissing na overleg ziekenhuis"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#182836005 "Review of medication (procedure)"
* item[=].item[=].item[=].answerOption[0].valueString = "toediening"
* item[=].item[=].item[=].answerOption[+].valueString = "geen toediening"
* item[=].item[=].item[=].answerOption[+].valueString = "andere"
* item[=].item[=].item[+].linkId = "C12_BeslissingSpecifieer"
* item[=].item[=].item[=].text = "> Indien andere: specifieer"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#1156698007 "Review of current supply of medication (procedure)"
* item[=].item[=].item[=].enableWhen.question = "C11_Beslissing"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "andere"
* item[=].item[+].linkId = "Symptoomlast"
* item[=].item[=].text = "Symptoomlast"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "D1_Misselijkheid"
* item[=].item[=].item[=].text = "Misselijkheid"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#422587007 "Nausea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D2_Braken"
* item[=].item[=].item[=].text = "Braken"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#249497008 "Vomiting symptom (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D3_VerminderdeEetlust"
* item[=].item[=].item[=].text = "Verminderde eetlust of smaakverandering"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#64379006 "Decrease in appetite (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D4_Buikloop"
* item[=].item[=].item[=].text = "Buikloop"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#62315008 "Diarrhea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D5_Verstopping"
* item[=].item[=].item[=].text = "Verstopping"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#14760008 "Constipation (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D6_Vermoeidheid"
* item[=].item[=].item[=].text = "Vermoeidheid/futloosheid"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#224960004 "Tired (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D7_Pijn"
* item[=].item[=].item[=].text = "Pijn"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#112104007 "Localized pain (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D8_Huiduitslag"
* item[=].item[=].item[=].text = "Huiduitslag"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#271807003 "Eruption of skin (disorder)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D9_Psychosociaal"
* item[=].item[=].item[=].text = "Psychosociale belasting"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#384821006 "Mental state, behavior and/or psychosocial function finding (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D10_Kortademigheid"
* item[=].item[=].item[=].text = "Kortademigheid"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#267036007 "Dyspnea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D11_Hoest"
* item[=].item[=].item[=].text = "Hoest"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#49727002 "Cough (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#444431007 "Grade 0 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444456001 "Grade 1 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444457005 "Grade 2 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#444447009 "Grade 3 on a scale of 0 to 3 (qualifier value)"
* item[=].item[=].item[+].linkId = "D12_AndereObservaties"
* item[=].item[=].item[=].text = "Andere nevenwerkingen of relevante klinische en psychosociale observaties\n(gelieve bij klinische bezorgdheid contact te nemen met het ziekenhuis voor bespreking)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#365275006 "General well-being finding (finding)"
* item[+].linkId = "Opdracht"
* item[=].text = "Opdracht"
* item[=].type = #group
* item[=].item[0].linkId = "Voorbereidingmedicatietoediening"
* item[=].item[=].text = "Voorbereiding medicatietoediening"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "E1_BereidingCorrect"
* item[=].item[=].item[=].text = "Kon de medicatie worden bereid volgens de procedure?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#385796006 "Medication prefill preparation (procedure)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "E2_ContactZorgteam"
* item[=].item[=].item[=].text = "> Indien 'nee': gelieve contact op te nemen met het zorgteam in het ziekenhuis"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "E1_BereidingCorrect"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[+].linkId = "Medicatietoediening"
* item[=].item[=].text = "Medicatietoediening"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "E3_ToedieningCorrect"
* item[=].item[=].item[=].text = "Kon de medicatie exact volgens de procedure worden toegediend (er waren geen afwijkingen)?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#373149000 "Medication administered following procedure (situation)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "E4_SpecifieerNee"
* item[=].item[=].item[=].text = "> Indien 'nee': specifieer"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen.question = "E3_ToedieningCorrect"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No (qualifier value)"
* item[+].linkId = "Kwaliteitsopvolging"
* item[=].text = "(Kwaliteits)opvolging"
* item[=].type = #group
* item[=].item.linkId = "F1_OpmerkingenAanmelding"
* item[=].item.text = "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie oncologie, dan kan je deze hier noteren. Alvast dank."
* item[=].item.type = #string
* item[=].item.code = $sct#276238005 "Comments on own writing (finding)"