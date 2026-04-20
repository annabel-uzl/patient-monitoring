Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $loinc = http://loinc.org

Instance: OPATContinuInfuusV1
InstanceOf: Questionnaire
Title: "OPAT questionnaire home hospitalization"
Description: "Questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment"
Usage: #example
* url = "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/OPATContinuInfuusV1"
* name = "OPATContinuInfuusV1"
* language = #nl
* title = "OPAT - continu infuus"
* status = #active

// ==========================================
// GROUP 0: Verpleegkundig assessment
// ==========================================
* item[0].linkId = "Verpleegkundigassessment"
* item[0].text = "Verpleegkundig assessment"
* item[0].type = #group

// --- Subgroup 0: Bewaring ---
* item[0].item[0].linkId = "Bewaring"
* item[0].item[0].text = "Bewaring"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "A1_Bewaring"
* item[0].item[0].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].code = $sct#422413002 "Ability to store medications (observable entity)"
* item[0].item[0].item[0].answerOption[0].valueCoding = $sct#710977001 "Safe storage of medication"
* item[0].item[0].item[0].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"

* item[0].item[0].item[+].linkId = "A2_BewaringSpecifieer"
* item[0].item[0].item[=].text = "> Indien opmerkingen of bezorgdheid: specifieer"
* item[0].item[0].item[=].type = #string
* item[0].item[0].item[=].enableWhen.question = "A1_Bewaring"
* item[0].item[0].item[=].enableWhen.operator = #=
* item[0].item[0].item[=].enableWhen.answerCoding = $sct#424363005 "Improper storage of medication"

// --- Subgroup 1: Voorbereiding medicatietoediening ---
* item[0].item[+].linkId = "Voorbereidingmedicatietoediening"
* item[0].item[=].text = "Voorbereiding medicatietoediening"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "B1_MedicatieVolledigOpgelost"
* item[0].item[=].item[0].text = "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes"
* item[0].item[=].item[0].type = #choice
* item[0].item[=].item[0].code = $sct#396076000 "Medication prefill preparation assessment (procedure)"
* item[0].item[=].item[0].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "B2_IndienNeeContact"
* item[0].item[=].item[=].text = "> Indien nee: gelieve contact op te nemen met het zorgteam in het ziekenhuis"
* item[0].item[=].item[=].type = #display
* item[0].item[=].item[=].enableWhen.question = "B1_MedicatieVolledigOpgelost"
* item[0].item[=].item[=].enableWhen.operator = #=
* item[0].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "B3_GewichtVolleInfusor"
* item[0].item[=].item[=].text = "Gewicht van volle Infusor net voor nieuwe toediening"
* item[0].item[=].item[=].type = #decimal
* item[0].item[=].item[=].required = true
* item[0].item[=].item[=].code = $sct#1381257004 "Measured weight of elastomeric continuous infusion pump with medication before infusion (observable entity)"
* item[0].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].item[=].extension[0].valueCoding = $unitsofmeasure#g "g"
* item[0].item[=].item[=].extension[+].url = "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext"
* item[0].item[=].item[=].extension[=].valueString = "Enkel in te vullen indien continu infuus"

* item[0].item[=].item[+].linkId = "B4_GewichtLegeInfusor"
* item[0].item[=].item[=].text = "Gewicht bij afkoppelen van lege infusor"
* item[0].item[=].item[=].type = #decimal
* item[0].item[=].item[=].required = true
* item[0].item[=].item[=].code = $sct#1381260006 "Measured weight of elastomeric continuous infusion pump after infusion (observable entity)"
* item[0].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].item[=].extension[0].valueCoding = $unitsofmeasure#g "g"
* item[0].item[=].item[=].extension[+].url = "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext"
* item[0].item[=].item[=].extension[=].valueString = "Enkel in te vullen indien continu infuus"

* item[0].item[=].item[+].linkId = "B5_BijkomendeObservatie"
* item[0].item[=].item[=].text = "Bijkomende observatie:(indien van toepassing)"
* item[0].item[=].item[=].type = #string
* item[0].item[=].item[=].code = $sct#396078004 "Medication prefill preparation management (procedure)"

// --- Subgroup 2: Medicatietoediening ---
* item[0].item[+].linkId = "Medicatietoediening"
* item[0].item[=].text = "Medicatietoediening"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "C1_ToedieningCorrect"
* item[0].item[=].item[0].text = "Kon de medicatie exact volgens de procedure worden toegediend  (er waren geen afwijkingen)?"
* item[0].item[=].item[0].type = #choice
* item[0].item[=].item[0].required = true
* item[0].item[=].item[0].code = $sct#373149000 "Medication administered following procedure (situation)"
* item[0].item[=].item[0].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "C2_SpecifieerNee"
* item[0].item[=].item[=].text = "> Indien neen: specifieer"
* item[0].item[=].item[=].type = #string
* item[0].item[=].item[=].enableWhen.question = "C1_ToedieningCorrect"
* item[0].item[=].item[=].enableWhen.operator = #=
* item[0].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No (qualifier value)"

// --- Subgroup 3: Vitale parameters ---
* item[0].item[+].linkId = "Vitaleparameters"
* item[0].item[=].text = "Vitale parameters"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "D1_Temperatuur"
* item[0].item[=].item[0].text = "Lichaamstemperatuur:"
* item[0].item[=].item[0].type = #decimal
* item[0].item[=].item[0].required = true
* item[0].item[=].item[0].code = $loinc#8310-5 "Body temperature"
* item[0].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].item[0].extension.valueCoding = $unitsofmeasure#Cel "Cel"

* item[0].item[=].item[+].linkId = "D2_Pols"
* item[0].item[=].item[=].text = "Pols:"
* item[0].item[=].item[=].type = #decimal
* item[0].item[=].item[=].code = $sct#364075005 "Heart rate (observable entity)"
* item[0].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].item[=].extension.valueCoding = $unitsofmeasure#{beats}/min "bpm"

* item[0].item[=].item[+].linkId = "D3_BloeddrukSystolisch"
* item[0].item[=].item[=].text = "Bloeddruk - systolisch"
* item[0].item[=].item[=].type = #decimal
* item[0].item[=].item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item[0].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mmHg"

* item[0].item[=].item[+].linkId = "D4_BloeddrukDiastolisch"
* item[0].item[=].item[=].text = "Bloeddruk - diastolisch"
* item[0].item[=].item[=].type = #decimal
* item[0].item[=].item[=].code = $loinc#8462-4 "Diastolic blood pressure"
* item[0].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mmHg"

// --- Subgroup 4: Observatie verband insteekplaats ---
* item[0].item[+].linkId = "Observatieverbandinsteekplaats"
* item[0].item[=].text = "Observatie verband insteekplaats"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "E1_VerbandObservatie"
* item[0].item[=].item[0].text = "Observatie verband insteekplaats"
* item[0].item[=].item[0].type = #choice
* item[0].item[=].item[0].required = true
* item[0].item[=].item[0].code = $sct#364554009 "Wound observable (observable entity)"
* item[0].item[=].item[0].answerOption[0].valueCoding = $sct#17621005 "Normal (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[0].item[=].item[+].linkId = "E2_IndienAfwijkendSpecifieer"
* item[0].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[0].item[=].item[=].type = #display
* item[0].item[=].item[=].enableWhen.question = "E1_VerbandObservatie"
* item[0].item[=].item[=].enableWhen.operator = #=
* item[0].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[0].item[=].item[+].linkId = "E3_Bloederig"
* item[0].item[=].item[=].text = "Bloederig"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#297968009 "Bleeding skin (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "E4_Etterig"
* item[0].item[=].item[=].text = "Etterig"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#225550006 "Purulent discharge from wound (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "E5_Los"
* item[0].item[=].item[=].text = "Los"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#78799005 "Loose (qualifier value)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "E6_Sereus"
* item[0].item[=].item[=].text = "Sereus"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#447112000 "Serous discharge from wound (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "E7_Vochtig"
* item[0].item[=].item[=].text = "Vochtig"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#17461003 "Wet (qualifier value)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "E8_Andere"
* item[0].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[0].item[=].item[=].type = #string
* item[0].item[=].item[=].code = $sct#1481000124102 "Wound dressing observable (observable entity)"

// --- Subgroup 5: Observatie insteekplaats ---
* item[0].item[+].linkId = "Observatieinsteekplaats"
* item[0].item[=].text = "Observatie insteekplaats"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "F1_InsteekplaatsObservatie"
* item[0].item[=].item[0].text = "Observatie insteekplaats"
* item[0].item[=].item[0].type = #choice
* item[0].item[=].item[0].required = true
* item[0].item[=].item[0].code = $sct#386141001 "Insertion site (morphologic abnormality)"
* item[0].item[=].item[0].answerOption[0].valueCoding = $sct#17621005 "Normal (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[0].item[=].item[+].linkId = "F2_IndienAfwijkendSpecifieer"
* item[0].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[0].item[=].item[=].type = #display
* item[0].item[=].item[=].enableWhen.question = "F1_InsteekplaatsObservatie"
* item[0].item[=].item[=].enableWhen.operator = #=
* item[0].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[0].item[=].item[+].linkId = "F3_Blaarvorming"
* item[0].item[=].item[=].text = "Blaarvorming"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#339008 "Blister (morphologic abnormality)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F4_Rood"
* item[0].item[=].item[=].text = "Rood"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#371240000 "Red color (qualifier value)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F5_Haematoom"
* item[0].item[=].item[=].text = "Haematoom"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#35566002 "Hematoma (morphologic abnormality)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F6_Etter"
* item[0].item[=].item[=].text = "Etter"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#367646009 "Pus (morphologic abnormality)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F7_Korstvorming"
* item[0].item[=].item[=].text = "Korstvorming"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#69640009 "Crust (morphologic abnormality)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F8_Zwelling"
* item[0].item[=].item[=].text = "Zwelling"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#65124004 "Swelling (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F9_Extravasatie"
* item[0].item[=].item[=].text = "Extravasatie/infiltratie"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#76676007 "Extravasation (morphologic abnormality)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "F10_Andere"
* item[0].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[0].item[=].item[=].type = #string
* item[0].item[=].item[=].code = $sct#364554009 "Wound observable (observable entity)"

// --- Subgroup 6: Observatie katheter ---
* item[0].item[+].linkId = "Observatiekatheter"
* item[0].item[=].text = "Observatie katheter"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "G1_KatheterObservatie"
* item[0].item[=].item[0].text = "Observatie katheter"
* item[0].item[=].item[0].type = #choice
* item[0].item[=].item[0].required = true
* item[0].item[=].item[0].code = $sct#1156071007 "Catheter observable (observable entity)"
* item[0].item[=].item[0].answerOption[0].valueCoding = $sct#17621005 "Normal (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[0].item[=].item[+].linkId = "G2_IndienAfwijkendSpecifieer"
* item[0].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[0].item[=].item[=].type = #display
* item[0].item[=].item[=].enableWhen[0].question = "G1_KatheterObservatie"
* item[0].item[=].item[=].enableWhen[0].operator = #=
* item[0].item[=].item[=].enableWhen[0].answerCoding = $sct#263654008 "Abnormal (qualifier value)"

* item[0].item[=].item[+].linkId = "catheter-type"
* item[0].item[=].item[=].text = "Kies kathetertype"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#246138005 "Type of catheter (attribute)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#52124006 "Port catheter"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396546006 "Tunneled catheter with 1 lumen"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396570005 "Tunneled catheter with 2 lumen"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396538005 "Tunneled catheter with 3 lumen"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396531004 "Single lumen Midline"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396527005 "Double lumen Midline"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396526001 "Single lumen PICC"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#1396489007 "Double lumen PICC"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#423954007 "Peripheral catheter"

* item[0].item[=].item[+].linkId = "G20_Kleurlumen"
* item[0].item[=].item[=].text = "Kleur lumen"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#1396483008 "Color of intravascular catheter lumen hub"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#371253002 "Gray"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#371251000 "White"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#371240000 "Red"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#371250004 "Purple"

* item[0].item[=].item[+].linkId = "G3_Bloedaspiratie"
* item[0].item[=].item[=].text = "Bloedaspiratie"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#25797006 "Pulmonary aspiration of blood (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#36203004 "Easy"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#52925006 "Difficult"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#385671000 "Unsuccessful"

* item[0].item[=].item[+].linkId = "G4_Infusie"
* item[0].item[=].item[=].text = "Infusie"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#36576007 "Infusion (procedure)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#36203004 "Easy"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#52925006 "Difficult"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#385671000 "Unsuccessful"

* item[0].item[=].item[+].linkId = "G5_BeschadigdeKatheter"
* item[0].item[=].item[=].text = "Beschadigde katheter"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#1156074004 "Device failure (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[=].item[+].linkId = "G6_Andere"
* item[0].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[0].item[=].item[=].type = #string

// --- Subgroup 7: Nevenwerkingen ---
* item[0].item[+].linkId = "Nevenwerkingen"
* item[0].item[=].text = "Nevenwerkingen"
* item[0].item[=].type = #group

* item[0].item[=].item[0].linkId = "H1_Huiduitslag"
* item[0].item[=].item[0].text = "Huiduitslag"
* item[0].item[=].item[0].type = #choice
* item[0].item[=].item[0].code = $sct#271807003 "Eruption of skin (disorder)"
* item[0].item[=].item[0].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[0].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H2_Jeuk"
* item[0].item[=].item[=].text = "Jeuk"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#418290006 "Itching (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H3_BlarenOfHuidloslaten"
* item[0].item[=].item[=].text = "Blaren/loslaten van de huid"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#271767006 "Peeling of skin (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H4_Misselijkheid"
* item[0].item[=].item[=].text = "Misselijkheid"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#422587007 "Nausea (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H5_Braken"
* item[0].item[=].item[=].text = "Braken"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#249497008 "Vomiting symptom (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H6_Diarree"
* item[0].item[=].item[=].text = "Diarree"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#62315008 "Diarrhea (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H7_Obstipatie"
* item[0].item[=].item[=].text = "Obstipatie"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#14760008 "Constipation (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H8_VerminderdeEetlust"
* item[0].item[=].item[=].text = "Verminderde eetlust"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#64379006 "Decrease in appetite (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H9_PijnBijToediening"
* item[0].item[=].item[=].text = "Pijn bij toediening"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#698749006 "Pain on flushing of implanted venous access device (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H10_PijnAlgemeen"
* item[0].item[=].item[=].text = "Pijn (algemeen)"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#112104007 "Localized pain (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H11_Moe"
* item[0].item[=].item[=].text = "Moe"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#224960004 "Tired (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H12_Rillingen"
* item[0].item[=].item[=].text = "Rillingen"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#43724002 "Chill (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H13_Candidiasis"
* item[0].item[=].item[=].text = "Candidiase (schimmelinfectie)"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#78048006 "Candidiasis (disorder)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H14_Gewrichtspijn"
* item[0].item[=].item[=].text = "Gewrichtspijn"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#57676002 "Pain of joint (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H15_Ademhalingsproblemen"
* item[0].item[=].item[=].text = "Ademhalingsproblemen"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#267036007 "Dyspnea (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H16_ZwellingGezichtTong"
* item[0].item[=].item[=].text = "Zwelling gezicht/tong"
* item[0].item[=].item[=].type = #choice
* item[0].item[=].item[=].code = $sct#278528006 "Facial swelling (finding)"
* item[0].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[0].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"

* item[0].item[=].item[+].linkId = "H17_AndereObservaties"
* item[0].item[=].item[=].text = "Is er andere symptoomlast of zijn er andere relevante klinische en/of psychosociale observaties? \n(gelieve bij klinische bezorgdheid contact te nemen met het zorgteam in het ziekenhuis)"
* item[0].item[=].item[=].type = #string
* item[0].item[=].item[=].code = $sct#365275006 "General well-being finding (finding)"

// ==========================================
// GROUP 1: (Kwaliteits)opvolging
// ==========================================
* item[+].linkId = "Kwaliteitsopvolging"
* item[=].text = "(Kwaliteits)opvolging"
* item[=].type = #group

* item[=].item[0].linkId = "I1_OpmerkingenAanmelding"
* item[=].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de medicatie en materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie OPAT, we vragen je graag ze met ons te delen. Alvast dank."
* item[=].item[0].type = #string
* item[=].item[0].code = $sct#276238005 "Comments on own writing (finding)"
