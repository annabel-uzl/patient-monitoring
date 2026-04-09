Alias: $sct = http://snomed.info/sct

Instance: OPATContinuInfuusV1response
InstanceOf: QuestionnaireResponse
Title: "OPAT questionnaireresponse home hospitalization"
Description: "Response to questionnaire containing the necessary information for the home hospitalization of a patient treated with a continuous infusion in the context of an OPAT treatment"
Usage: #example

* questionnaire = "Questionnaire/OPATContinuInfuusV1"
* status = #completed
* subject = Reference(Patient/af69876d-628e-47f6-a824-6c0fa6d23be4)
* authored = "2025-11-21T11:49:11.8445723+01:00"

// ==========================================
// GROUP 0: Verpleegkundig assessment
// ==========================================
* item[0].linkId = "Verpleegkundigassessment"
* item[0].text = "Verpleegkundig assessment"

// --- Subgroup 0: Bewaring ---
* item[0].item[0].linkId = "Bewaring"
* item[0].item[0].text = "Bewaring"
* item[0].item[0].item[0].linkId = "87bezorgdmed"
* item[0].item[0].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[0].item[0].item[0].answer.valueCoding = $sct#710977001 "Safe storage of medication"

// --- Subgroup 1: Voorbereiding medicatietoediening ---
* item[0].item[1].linkId = "Voorbereidingmedicatietoediening"
* item[0].item[1].text = "Voorbereiding medicatietoediening"
* item[0].item[1].item[0].linkId = "52medoplossing"
* item[0].item[1].item[0].text = "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes"
* item[0].item[1].item[0].answer.valueCoding = $sct#373066001 "Yes (qualifier value)"

* item[0].item[1].item[+].linkId = "24GewichtvanvolleInfusornetvoornieuwetoediening"
* item[0].item[1].item[=].text = "Gewicht van volle Infusor net voor nieuwe toediening"
* item[0].item[1].item[=].answer.valueDecimal = 307

* item[0].item[1].item[+].linkId = "79Gewichtbijafkoppelenvanlegeinfusor"
* item[0].item[1].item[=].text = "Gewicht bij afkoppelen van lege infusor"
* item[0].item[1].item[=].answer.valueDecimal = 123

* item[0].item[1].item[+].linkId = "87Bijkomendeobservatieindienvantoepassing"
* item[0].item[1].item[=].text = "Bijkomende observatie:(indien van toepassing)"
* item[0].item[1].item[=].answer.valueString = "Infusor gisteren pas aangehangen om 13u45"

// --- Subgroup 2: Medicatietoediening ---
* item[0].item[2].linkId = "Medicatietoediening"
* item[0].item[2].text = "Medicatietoediening"
* item[0].item[2].item[0].linkId = "13Kondemedicatieexactvolgensdeprocedurewordentoegedienderwarengeenafwijkingen"
* item[0].item[2].item[0].text = "Kon de medicatie exact volgens de procedure worden toegediend  (er waren geen afwijkingen)?"
* item[0].item[2].item[0].answer.valueCoding = $sct#373066001 "Yes (qualifier value)"

// --- Subgroup 3: Vitale parameters ---
* item[0].item[3].linkId = "Vitaleparameters"
* item[0].item[3].text = "Vitale parameters"
* item[0].item[3].item[0].linkId = "98Lichaamstemperatuur"
* item[0].item[3].item[0].answer.valueDecimal = 36.1
* item[0].item[3].item[1].linkId = "2Pols"
* item[0].item[3].item[1].answer.valueDecimal = 95
* item[0].item[3].item[2].linkId = "70Bloeddruksystolisch"
* item[0].item[3].item[2].answer.valueDecimal = 131
* item[0].item[3].item[3].linkId = "19Bloeddrukdiastolisch"
* item[0].item[3].item[3].answer.valueDecimal = 65

// --- Subgroup 4: Observatie verband insteekplaats ---
* item[0].item[4].linkId = "Observatieverbandinsteekplaats"
* item[0].item[4].text = "Observatie verband insteekplaats"
* item[0].item[4].item[0].linkId = "23Observatieverbandinsteekplaats"
* item[0].item[4].item[0].answer.valueCoding = $sct#17621005 "Normal (qualifier value)"

// --- Subgroup 5: Observatie insteekplaats ---
* item[0].item[5].linkId = "Observatieinsteekplaats"
* item[0].item[5].text = "Observatie insteekplaats"
* item[0].item[5].item[0].linkId = "1Observatieinsteekplaats"
* item[0].item[5].item[0].answer.valueCoding = $sct#17621005 "Normal (qualifier value)"

// --- Subgroup 6: Observatie katheter ---
* item[0].item[6].linkId = "Observatiekatheter"
* item[0].item[6].text = "Observatie katheter"
* item[0].item[6].item[0].linkId = "97Observatiekatheter"
* item[0].item[6].item[0].answer.valueCoding = $sct#17621005 "Normal (qualifier value)"

// De specifieke katheter-type vraag met de lumen-extensie
* item[0].item[6].item[+].linkId = "catheter-type"
* item[0].item[6].item[=].answer.valueCoding = $sct#445085009 "Tunneled central venous catheter"
* item[0].item[6].item[=].answer.extension[0].url = "http://example.org/fhir/StructureDefinition/lumen"
* item[0].item[6].item[=].answer.extension[=].valueCoding = $sct#257279004 "Single lumen catheter"

// --- Subgroup 7: Nevenwerkingen ---
* item[0].item[7].linkId = "Nevenwerkingen"
* item[0].item[7].text = "Nevenwerkingen"
* item[0].item[7].item[0].linkId = "36Huiduitslag"
* item[0].item[7].item[0].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[1].linkId = "99Jeuk"
* item[0].item[7].item[1].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[2].linkId = "11Blarenloslatenvandehuid"
* item[0].item[7].item[2].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[3].linkId = "20Misselijkheid"
* item[0].item[7].item[3].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[4].linkId = "37Braken"
* item[0].item[7].item[4].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[5].linkId = "37Diarree"
* item[0].item[7].item[5].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[6].linkId = "18Obstipatie"
* item[0].item[7].item[6].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[7].linkId = "68Verminderdeeetlust"
* item[0].item[7].item[7].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[8].linkId = "74Pijnbijtoediening"
* item[0].item[7].item[8].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[9].linkId = "41Pijnalgemeen"
* item[0].item[7].item[9].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[10].linkId = "57Moe"
* item[0].item[7].item[10].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[11].linkId = "24Rillingen"
* item[0].item[7].item[11].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[12].linkId = "1Candidiaseschimmelinfectie"
* item[0].item[7].item[12].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[13].linkId = "48Gewrichtspijn"
* item[0].item[7].item[13].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[14].linkId = "80Ademhalingsproblemen"
* item[0].item[7].item[14].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[0].item[7].item[15].linkId = "79Zwellinggezichttong"
* item[0].item[7].item[15].answer.valueCoding = $sct#2667000 "Absent (qualifier value)"

// ==========================================
// GROUP 1: (Kwaliteits)opvolging
// ==========================================
* item[1].linkId = "Kwaliteitsopvolging"
* item[1].text = "(Kwaliteits)opvolging"
* item[1].item[0].linkId = "54opmalg"
* item[1].item[0].answer.valueString = "Geen verdere opmerkingen."