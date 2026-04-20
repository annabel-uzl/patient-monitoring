Alias: $sct = http://snomed.info/sct

Instance: OPATContinuInfuusV1response
InstanceOf: QuestionnaireResponse
Title: "OPAT questionnaireresponse home hospitalization"
Description: "Response to questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment"
Usage: #example

* questionnaire = "Questionnaire/OPATContinuInfuusV1"
* status = #completed
* subject = Reference(Patient/Patient-123)
* authored = "2025-11-21T11:49:11.8445723+01:00"

// ==========================================
// GROUP 0: Verpleegkundig assessment
// ==========================================
* item[0].linkId = "Verpleegkundigassessment"
* item[0].text = "Verpleegkundig assessment"

// --- Subgroup 0: Bewaring ---
* item[0].item[0].linkId = "Bewaring"
* item[0].item[0].text = "Bewaring"
* item[0].item[0].item[0].linkId = "A1_Bewaring"
* item[0].item[0].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[0].item[0].item[0].answer.valueCoding = $sct#710977001 "Safe storage of medication"

// --- Subgroup 1: Voorbereiding medicatietoediening ---
* item[0].item[1].linkId = "Voorbereidingmedicatietoediening"
* item[0].item[1].text = "Voorbereiding medicatietoediening"
* item[0].item[1].item[0].linkId = "B1_MedicatieVolledigOpgelost"
* item[0].item[1].item[0].text = "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes"
* item[0].item[1].item[0].answer.valueCoding = $sct#373066001 "Yes (qualifier value)"

* item[0].item[1].item[+].linkId = "B3_GewichtVolleInfusor"
* item[0].item[1].item[=].text = "Gewicht van volle Infusor net voor nieuwe toediening"
* item[0].item[1].item[=].answer.valueDecimal = 307

* item[0].item[1].item[+].linkId = "B4_GewichtLegeInfusor"
* item[0].item[1].item[=].text = "Gewicht bij afkoppelen van lege infusor"
* item[0].item[1].item[=].answer.valueDecimal = 123

* item[0].item[1].item[+].linkId = "B5_BijkomendeObservatie"
* item[0].item[1].item[=].text = "Bijkomende observatie:(indien van toepassing)"
* item[0].item[1].item[=].answer.valueString = "Infusor gisteren pas aangehangen om 13u45"

// --- Subgroup 2: Medicatietoediening ---
* item[0].item[2].linkId = "Medicatietoediening"
* item[0].item[2].text = "Medicatietoediening"
* item[0].item[2].item[0].linkId = "C1_ToedieningCorrect"
* item[0].item[2].item[0].text = "Kon de medicatie exact volgens de procedure worden toegediend  (er waren geen afwijkingen)?"
* item[0].item[2].item[0].answer.valueCoding = $sct#373066001 "Yes (qualifier value)"

// --- Subgroup 3: Vitale parameters ---
* item[0].item[3].linkId = "Vitaleparameters"
* item[0].item[3].text = "Vitale parameters"
* item[0].item[3].item[0].linkId = "D1_Temperatuur"
* item[0].item[3].item[0].answer.valueDecimal = 36.1
* item[0].item[3].item[1].linkId = "D2_Pols"
* item[0].item[3].item[1].answer.valueDecimal = 95
* item[0].item[3].item[2].linkId = "D3_BloeddrukSystolisch"
* item[0].item[3].item[2].answer.valueDecimal = 131
* item[0].item[3].item[3].linkId = "D4_BloeddrukDiastolisch"
* item[0].item[3].item[3].answer.valueDecimal = 65

// --- Subgroup 4: Observatie verband insteekplaats ---
* item[0].item[4].linkId = "Observatieverbandinsteekplaats"
* item[0].item[4].text = "Observatie verband insteekplaats"
* item[0].item[4].item[0].linkId = "E1_VerbandObservatie"
* item[0].item[4].item[0].answer.valueCoding = $sct#17621005 "Normal (qualifier value)"

// --- Subgroup 5: Observatie insteekplaats ---
* item[0].item[5].linkId = "Observatieinsteekplaats"
* item[0].item[5].text = "Observatie insteekplaats"
* item[0].item[5].item[0].linkId = "F1_InsteekplaatsObservatie"
* item[0].item[5].item[0].answer.valueCoding = $sct#17621005 "Normal (qualifier value)"

// --- Subgroup 6: Observatie katheter ---
* item[0].item[6].linkId = "Observatiekatheter"
* item[0].item[6].text = "Observatie katheter"

* item[0].item[6].item[0].linkId = "G1_KatheterObservatie"
* item[0].item[6].item[0].text = "Observatie katheter"
* item[0].item[6].item[0].answer.valueCoding = $sct#17621005 "Normal (qualifier value)"

* item[0].item[6].item[1].linkId = "catheter-type"
* item[0].item[6].item[1].text = "Kies kathetertype"
* item[0].item[6].item[1].answer.valueCoding = $sct#1396546006 "Tunneled catheter with 1 lumen"

* item[0].item[6].item[2].linkId = "G20_Kleurlumen"
* item[0].item[6].item[2].text = "Kleur lumen"
* item[0].item[6].item[2].answer.valueCoding = $sct#371253002 "Gray"

* item[0].item[6].item[3].linkId = "G3_Bloedaspiratie"
* item[0].item[6].item[3].text = "Bloedaspiratie"
* item[0].item[6].item[3].answer.valueCoding = $sct#36203004 "Easy"

* item[0].item[6].item[4].linkId = "G4_Infusie"
* item[0].item[6].item[4].text = "Infusie"
* item[0].item[6].item[4].answer.valueCoding = $sct#36203004 "Easy"

* item[0].item[6].item[5].linkId = "G5_BeschadigdeKatheter"
* item[0].item[6].item[5].text = "Beschadigde katheter"
* item[0].item[6].item[5].answer.valueCoding = $sct#373067005 "No (qualifier value)"

* item[0].item[6].item[6].linkId = "G6_Andere"
* item[0].item[6].item[6].text = "Andere: (indien van toepassing)"

// --- Subgroup 7: Nevenwerkingen ---
* item[0].item[7].linkId = "Nevenwerkingen"
* item[0].item[7].text = "Nevenwerkingen"
* item[0].item[7].item[0].linkId = "H1_Huiduitslag"
* item[0].item[7].item[0].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[1].linkId = "H2_Jeuk"
* item[0].item[7].item[1].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[2].linkId = "H3_BlarenOfHuidloslaten"
* item[0].item[7].item[2].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[3].linkId = "H4_Misselijkheid"
* item[0].item[7].item[3].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[4].linkId = "H5_Braken"
* item[0].item[7].item[4].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[5].linkId = "H6_Diarree"
* item[0].item[7].item[5].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[6].linkId = "H7_Obstipatie"
* item[0].item[7].item[6].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[7].linkId = "H8_VerminderdeEetlust"
* item[0].item[7].item[7].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[8].linkId = "H9_PijnBijToediening"
* item[0].item[7].item[8].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[9].linkId = "H10_PijnAlgemeen"
* item[0].item[7].item[9].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[10].linkId = "H11_Moe"
* item[0].item[7].item[10].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[11].linkId = "H12_Rillingen"
* item[0].item[7].item[11].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[12].linkId = "H13_Candidiasis"
* item[0].item[7].item[12].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[13].linkId = "H14_Gewrichtspijn"
* item[0].item[7].item[13].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[14].linkId = "H15_Ademhalingsproblemen"
* item[0].item[7].item[14].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[15].linkId = "H16_ZwellingGezichtTong"
* item[0].item[7].item[15].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"

// ==========================================
// GROUP 1: (Kwaliteits)opvolging
// ==========================================
* item[1].linkId = "Kwaliteitsopvolging"
* item[1].text = "(Kwaliteits)opvolging"
* item[1].item[0].linkId = "I1_OpmerkingenAanmelding"
* item[1].item[0].answer.valueString = "Geen verdere opmerkingen."
