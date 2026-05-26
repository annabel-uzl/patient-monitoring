Alias: $sct = http://snomed.info/sct

Instance: HomehospOpatShortIVQRMultiLumenExample
InstanceOf: QuestionnaireResponse
Title: "OPAT short IV QR - 3-lumen tunneled catheter"
Description: "QuestionnaireResponse for OPAT home hospitalization (short IV) with a 3-lumen tunneled catheter. The red lumen (lumen 3) is completely obstructed — blood aspiration and infusion both impossible. Administration was completed via the gray lumen (lumen 1) after telephone consultation with the hospital team. The short IV questionnaire records one set of lumen items; observations for the other two functioning lumens are captured in the free-text field."
Usage: #example

* questionnaire = "http://hl7belgium.org/fhir/patient-monitoring/Questionnaire/homehosp-opat-short-iv"
* status = #completed
* subject = Reference(Patient/Patient-123)
* authored = "2025-11-23T14:30:00+01:00"

// ==========================================
// GROUP 0: Verpleegkundig assessment
// ==========================================
* item[0].linkId = "NursingAssessment"
* item[0].text = "Verpleegkundig assessment"

// --- Subgroup 0: Bewaring ---
* item[0].item[0].linkId = "MedicationStorage"
* item[0].item[0].text = "MedicationStorage"
* item[0].item[0].item[0].linkId = "A1_MedicationStorage"
* item[0].item[0].item[0].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[0].item[0].item[0].answer.valueCoding = $sct#710977001 "Safe storage and management of medication"

// --- Subgroup 1: Voorbereiding medicatietoediening ---
* item[0].item[1].linkId = "MedicationPreparation"
* item[0].item[1].text = "Voorbereiding medicatietoediening"
* item[0].item[1].item[0].linkId = "B1_MedicationFullyDissolved"
* item[0].item[1].item[0].text = "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes"
* item[0].item[1].item[0].answer.valueCoding = $sct#373066001 "Yes"

// --- Subgroup 2: Medicatietoediening ---
// Deviation: red lumen obstructed, medication administered via gray lumen after phone contact
* item[0].item[2].linkId = "MedicationAdministration"
* item[0].item[2].text = "MedicationAdministration"
* item[0].item[2].item[0].linkId = "C1_AdministrationCorrect"
* item[0].item[2].item[0].text = "Kon de medicatie exact volgens de procedure worden toegediend (er waren geen afwijkingen)?"
* item[0].item[2].item[0].answer.valueCoding = $sct#373067005 "No"
* item[0].item[2].item[1].linkId = "C2_SpecifyNo"
* item[0].item[2].item[1].text = "> Indien neen: specifieer"
* item[0].item[2].item[1].answer.valueString = "Rood lumen (lumen 3) volledig geobstrueerd. Na telefonisch overleg met zorgteam UZ Leuven om 14u05 werd de medicatie via het grijs lumen (lumen 1) toegediend."

// --- Subgroup 3: Vitale parameters ---
* item[0].item[3].linkId = "VitalParameters"
* item[0].item[3].text = "Vitale parameters"
* item[0].item[3].item[0].linkId = "D1_BodyTemperature"
* item[0].item[3].item[0].answer.valueDecimal = 37.8
* item[0].item[3].item[1].linkId = "D2_HeartRate"
* item[0].item[3].item[1].answer.valueDecimal = 92
* item[0].item[3].item[2].linkId = "D3_SystolicBloodPressure"
* item[0].item[3].item[2].answer.valueDecimal = 118
* item[0].item[3].item[3].linkId = "D4_DiastolicBloodPressure"
* item[0].item[3].item[3].answer.valueDecimal = 70

// --- Subgroup 4: Observatie verband insteekplaats ---
* item[0].item[4].linkId = "DressingInsertionSite"
* item[0].item[4].text = "Observatie verband insteekplaats"
* item[0].item[4].item[0].linkId = "E1_DressingObservation"
* item[0].item[4].item[0].answer.valueCoding = $sct#17621005 "Normal"

// --- Subgroup 5: Observatie insteekplaats ---
* item[0].item[5].linkId = "InsertionSite"
* item[0].item[5].text = "Observatie insteekplaats"
* item[0].item[5].item[0].linkId = "F1_InsertionSiteObservation"
* item[0].item[5].item[0].answer.valueCoding = $sct#17621005 "Normal"

// --- Subgroup 6: Observatie katheter ---
// 3-lumen tunneled catheter. Red lumen (lumen 3) fully obstructed — both blood aspiration and
// infusion impossible. Lumens 1 (gray) and 2 (purple) are functioning normally; their observations
// are described in G6_Other because the questionnaire carries a single set of per-lumen items.
* item[0].item[6].linkId = "Catheter"
* item[0].item[6].text = "Observatie katheter"

* item[0].item[6].item[0].linkId = "G1_CatheterObservation"
* item[0].item[6].item[0].text = "Observatie katheter"
* item[0].item[6].item[0].answer.valueCoding = $sct#263654008 "Abnormal"

// G2_SpecifyIfAbnormal is type #display — not included in response

* item[0].item[6].item[1].linkId = "G_KatheterType"
* item[0].item[6].item[1].text = "Kies kathetertype"
* item[0].item[6].item[1].answer.valueCoding = $sct#1396538005 "3-lumen tunneled catheter"

// Documenting the obstructed lumen (red, lumen 3) in the single lumen observation set
* item[0].item[6].item[2].linkId = "G_KleurLumen"
* item[0].item[6].item[2].text = "Kleur lumen"
* item[0].item[6].item[2].answer.valueCoding = $sct#371240000 "Red colour"

* item[0].item[6].item[3].linkId = "G3_BloodAspiration"
* item[0].item[6].item[3].text = "Bloedaspiratie"
* item[0].item[6].item[3].answer.valueCoding = $sct#385671000 "Unsuccessful"

* item[0].item[6].item[4].linkId = "G4_Infusion"
* item[0].item[6].item[4].text = "Infusie"
* item[0].item[6].item[4].answer.valueCoding = $sct#385671000 "Unsuccessful"

* item[0].item[6].item[5].linkId = "G5_DamagedCatheter"
* item[0].item[6].item[5].text = "Beschadigde katheter"
* item[0].item[6].item[5].answer.valueCoding = $sct#373067005 "No"

* item[0].item[6].item[6].linkId = "G6_Other"
* item[0].item[6].item[6].text = "Andere: (indien van toepassing)"
* item[0].item[6].item[6].answer.valueString = "Grijs lumen (lumen 1): bloedaspiratie vlot, infusie vlot. Paars lumen (lumen 2): bloedaspiratie vlot, infusie vlot. Rood lumen (lumen 3): bloedaspiratie en infusie niet mogelijk — volledig geobstrueerd. Zorgteam verwittigd."

// --- Subgroup 7: Nevenwerkingen ---
* item[0].item[7].linkId = "SideEffects"
* item[0].item[7].text = "SideEffects"
* item[0].item[7].item[0].linkId = "H1_SkinRash"
* item[0].item[7].item[0].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[1].linkId = "H2_Itching"
* item[0].item[7].item[1].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[2].linkId = "H3_BlistersOrPeeling"
* item[0].item[7].item[2].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[3].linkId = "H4_Nausea"
* item[0].item[7].item[3].answer.valueCoding = $sct#255604002 "Mild"
* item[0].item[7].item[4].linkId = "H5_Vomiting"
* item[0].item[7].item[4].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[5].linkId = "H6_Diarrhea"
* item[0].item[7].item[5].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[6].linkId = "H7_Constipation"
* item[0].item[7].item[6].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[7].linkId = "H8_DecreasedAppetite"
* item[0].item[7].item[7].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[8].linkId = "H9_PainDuringAdministration"
* item[0].item[7].item[8].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[9].linkId = "H10_GeneralPain"
* item[0].item[7].item[9].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[10].linkId = "H11_Fatigue"
* item[0].item[7].item[10].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[11].linkId = "H12_Chills"
* item[0].item[7].item[11].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[12].linkId = "H13_Candidiasis"
* item[0].item[7].item[12].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[13].linkId = "H14_JointPain"
* item[0].item[7].item[13].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[14].linkId = "H15_RespiratoryProblems"
* item[0].item[7].item[14].answer.valueCoding = $sct#2667000 "Absent"
* item[0].item[7].item[15].linkId = "H16_FacialSwelling"
* item[0].item[7].item[15].answer.valueCoding = $sct#2667000 "Absent"

// ==========================================
// GROUP 1: (Kwaliteits)opvolging
// ==========================================
* item[1].linkId = "QualityMonitoring"
* item[1].text = "(Kwaliteits)opvolging"
* item[1].item[0].linkId = "I1_CommentsRegistration"
* item[1].item[0].answer.valueString = "Rood lumen volledig geobstrueerd. Contact opgenomen met UZ Leuven thuishospitalisatieteam om 14u05. Patient morgen aangeboden voor kathetercontrole."
