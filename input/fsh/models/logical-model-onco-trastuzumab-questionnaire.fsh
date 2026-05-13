Logical: ONCOTrastuzumabQuestionnaire
Id: onco-trastuzumab-questionnaire
Title: "ONCO Trastuzumab Questionnaire Logical Model"
Description: "Logical model representing the nursing assessment questionnaire for home hospitalization patients receiving Trastuzumab. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital. Specific features: includes body weight, aftercare/reaction monitoring, and cardiac-focused contraindication checklist."
Parent: Base
* ^type = "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/ONCOTrastuzumabQuestionnaire"

// ==========================================
// SECTION: Nursing Assessment
// ==========================================
* nursingAssessment 1..1 BackboneElement "Nursing Assessment"

// --- Subsection: Storage ---
* nursingAssessment.storage 1..1 BackboneElement "Storage"
* nursingAssessment.storage.medicationStorageRemarks 1..1 code "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage"
* nursingAssessment.storage.storageRemarksSpecification 0..1 string "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)"

// --- Subsection: Observation Parameters ---
* nursingAssessment.observationParameters 1..1 BackboneElement "Observation Parameters"
* nursingAssessment.observationParameters.bodyTemperature 1..1 decimal "Body temperature (°C) (LOINC 8310-5)"
* nursingAssessment.observationParameters.pulse 1..1 decimal "Pulse (beats/min) (SNOMED 364075005)"
* nursingAssessment.observationParameters.bloodPressureSystolic 1..1 decimal "Blood pressure systolic (mmHg) (LOINC 8480-6)"
* nursingAssessment.observationParameters.bloodPressureDiastolic 1..1 decimal "Blood pressure diastolic (mmHg) (LOINC 8462-4)"
* nursingAssessment.observationParameters.bodyWeight 1..1 decimal "Body weight (kg) (LOINC 29463-7)"

// --- Subsection: Contraindications ---
* nursingAssessment.contraindications 1..1 BackboneElement "Contraindications"
* nursingAssessment.contraindications.anyContraindication 1..1 code "Are there contraindications for administration? (SNOMED 395008009) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.contraindications.feverChillsUnwell 0..1 code "Fever, chills, feeling unwell (SNOMED 39104002) | Answers: 373066001 Yes | 373067005 No (conditional: if anyContraindication = Yes)"
* nursingAssessment.contraindications.lowBloodPressure 0..1 code "Repeated blood pressure lower than 100/60 mmHg (SNOMED 12763006) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.contraindications.elevatedHeartRate 0..1 code "Heart rate above 100 bpm at rest or irregular heart rhythm, unless chronically known (SNOMED 361137007) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.contraindications.rapidWeightIncrease 0..1 code "Increase in body weight of 3 kg/3 weeks or 5 kg/6 weeks, especially with increased edema (SNOMED 262286000) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.contraindications.increasedEdemaHandsFeet 0..1 code "Increased edema in hands and/or feet (SNOMED 267038008) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.contraindications.increasedDyspnea 0..1 code "Increased or severe shortness of breath (at rest or impacting daily activities) (SNOMED 297216006) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.contraindications.decisionAfterConsultation 0..1 code "Decision after consultation with hospital (SNOMED 182836005) | Answers: Administration | No administration | Other"
* nursingAssessment.contraindications.decisionOtherSpecification 0..1 string "Specify if decision = Other (SNOMED 438833006)"

// --- Subsection: Symptom Burden ---
* nursingAssessment.symptomBurden 1..1 BackboneElement "Symptom Burden"
* nursingAssessment.symptomBurden.nausea 1..1 code "Nausea (SNOMED 422587007) | Answers: 444431007 Grade 0 (None) | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3"
* nursingAssessment.symptomBurden.vomiting 1..1 code "Vomiting (SNOMED 249497008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (<=2 times) | 444457005 Grade 2 (3-5 times) | 444447009 Grade 3 (6+ times)"
* nursingAssessment.symptomBurden.reducedAppetiteOrTasteChanges 1..1 code "Reduced appetite or taste changes (SNOMED 64379006) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3"
* nursingAssessment.symptomBurden.diarrhea 1..1 code "Diarrhea (SNOMED 62315008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (1-3x more) | 444457005 Grade 2 (4-6x more) | 444447009 Grade 3 (>6x or impacting daily life)"
* nursingAssessment.symptomBurden.constipation 1..1 code "Constipation (SNOMED 14760008) | Answers: 444431007 Grade 0 | 444456001 Grade 1 | 444457005 Grade 2 | 444447009 Grade 3"
* nursingAssessment.symptomBurden.fatigue 1..1 code "Fatigue / lack of energy (SNOMED 224960004) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)"
* nursingAssessment.symptomBurden.pain 1..1 code "Pain (SNOMED 112104007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)"
* nursingAssessment.symptomBurden.skinRash 1..1 code "Skin rash (SNOMED 271807003) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (limited redness) | 444457005 Grade 2 (moderate redness) | 444447009 Grade 3 (severe redness or peeling)"
* nursingAssessment.symptomBurden.psychosocialBurden 1..1 code "Psychosocial burden (SNOMED 384821006) | Answers: 444431007 Grade 0 (Feels well) | 444456001 Grade 1 (slight distress) | 444457005 Grade 2 (significant distress) | 444447009 Grade 3 (severe distress)"
* nursingAssessment.symptomBurden.shortnessOfBreath 1..1 code "Shortness of breath (SNOMED 267036007) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (moderate exertion only) | 444457005 Grade 2 (light exertion) | 444447009 Grade 3 (at rest)"
* nursingAssessment.symptomBurden.edema 1..1 code "Edema (SNOMED 79654002) | Answers: 444431007 Grade 0 | 444456001 Grade 1 (mild) | 444457005 Grade 2 (moderate) | 444447009 Grade 3 (severe)"

// --- Subsection: Other Relevant Observations ---
* nursingAssessment.otherRelevantObservations 0..1 BackboneElement "Other Relevant Observations"
* nursingAssessment.otherRelevantObservations.otherObservations 0..1 string "Other side effects or relevant clinical and psychosocial observations. Contact hospital in case of clinical concern. (SNOMED 365275006)"

// --- Subsection: Task ---
* nursingAssessment.task 1..1 BackboneElement "Task"
* nursingAssessment.task.medicationPreparedPerProcedure 1..1 code "Could the medication be prepared according to the procedure? (SNOMED 385796006) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.task.medicationAdministeredPerProcedure 1..1 code "Could the medication be administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No"

// --- Subsection: Aftercare ---
* nursingAssessment.aftercare 1..1 BackboneElement "Aftercare"
* nursingAssessment.aftercare.reactionDuringObservation 1..1 code "Was there a reaction during the home observation period? (SNOMED 281647001) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.aftercare.fever 0..1 code "Fever (SNOMED 386661006) | Answers: 373066001 Yes | 373067005 No (conditional: if reactionDuringObservation = Yes)"
* nursingAssessment.aftercare.nausea 0..1 code "Nausea (SNOMED 422587007) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.aftercare.shortnessOfBreath 0..1 code "Shortness of breath (SNOMED 255365009) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.aftercare.chills 0..1 code "Chills (SNOMED 43724002) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.aftercare.fluLikeSymptoms 0..1 code "Flu-like symptoms (SNOMED 95891005) | Answers: 373066001 Yes | 373067005 No"

// --- Subsection: Quality Follow-Up ---
* nursingAssessment.qualityFollowUp 0..1 BackboneElement "Quality Follow-Up"
* nursingAssessment.qualityFollowUp.remarks 0..1 string "Remarks or concerns about patient registration, data sharing, hospital communication, material availability, or other transmural collaboration aspects (SNOMED 276238005)"
