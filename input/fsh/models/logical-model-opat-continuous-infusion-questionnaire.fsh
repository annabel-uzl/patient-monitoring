Logical: OPATContinuousInfusionQuestionnaire
Id: opat-continuous-infusion-questionnaire
Title: "OPAT Continuous Infusion Questionnaire Logical Model"
Description: "Logical model representing the nursing assessment questionnaire for OPAT home hospitalization patients receiving continuous infusion. This questionnaire is filled in by the home nurse during each visit and exchanged as a FHIR QuestionnaireResponse with the hospital."
Parent: Base
* ^type = "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/OPATContinuousInfusionQuestionnaire"

// ==========================================
// SECTION: Nursing Assessment
// ==========================================
* nursingAssessment 1..1 BackboneElement "Nursing Assessment"

// --- Subsection: Storage ---
* nursingAssessment.storage 1..1 BackboneElement "Storage"
* nursingAssessment.storage.medicationStorageRemarks 1..1 code "Are there any remarks or concerns regarding the (proper) home storage of medication? (SNOMED 422413002) | Answers: 710977001 Medication stored correctly | 424363005 Concern about proper home storage"
* nursingAssessment.storage.storageRemarksSpecification 0..1 string "Specify remarks or concerns (conditional: if medicationStorageRemarks = concern)"

// --- Subsection: Preparation of Medication Administration ---
* nursingAssessment.preparation 1..1 BackboneElement "Preparation of Medication Administration"
* nursingAssessment.preparation.medicationDissolvedClear 1..1 code "The medication was completely dissolved into a clear solution without visible particles (SNOMED 396076000) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.preparation.weightEmptyInfusor 1..1 decimal "Weight when disconnecting empty infusor (g) (SNOMED 1381260006)"
* nursingAssessment.preparation.weightFullInfusorBeforeAdministration 1..1 decimal "Weight of full infusor just before new administration (g) (SNOMED 1381257004)"
* nursingAssessment.preparation.additionalObservation 0..1 string "Additional observation during preparation, if applicable (SNOMED 396078004)"

// --- Subsection: Medication Administration ---
* nursingAssessment.medicationAdministration 1..1 BackboneElement "Medication Administration"
* nursingAssessment.medicationAdministration.administeredPerProcedure 1..1 code "Was the medication administered exactly according to the procedure (no deviations)? (SNOMED 373149000) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.medicationAdministration.deviationSpecification 0..1 string "Specify deviation (conditional: if administeredPerProcedure = No)"

// --- Subsection: Vital Parameters ---
* nursingAssessment.vitalParameters 1..1 BackboneElement "Vital Parameters"
* nursingAssessment.vitalParameters.bodyTemperature 1..1 decimal "Body temperature (°C) (LOINC 8310-5)"
* nursingAssessment.vitalParameters.pulse 1..1 decimal "Pulse (beats/min) (SNOMED 364075005)"
* nursingAssessment.vitalParameters.bloodPressureSystolic 1..1 decimal "Blood pressure - systolic (mmHg) (LOINC 8480-6)"
* nursingAssessment.vitalParameters.bloodPressureDiastolic 1..1 decimal "Blood pressure - diastolic (mmHg) (LOINC 8462-4)"

// --- Subsection: Dressing Observation at Insertion Site ---
* nursingAssessment.dressingObservation 1..1 BackboneElement "Dressing Observation at Insertion Site"
* nursingAssessment.dressingObservation.dressingObservation 1..1 code "Dressing observation at insertion site (SNOMED 364554009) | Answers: 17621005 Normal | 263654008 Abnormal"
* nursingAssessment.dressingObservation.bloody 0..1 code "Bloody (SNOMED 297968009) | Answers: 373066001 Yes | 373067005 No (conditional: if dressingObservation = Abnormal)"
* nursingAssessment.dressingObservation.purulent 0..1 code "Purulent (SNOMED 225550006) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.dressingObservation.loose 0..1 code "Loose (SNOMED 78799005) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.dressingObservation.serous 0..1 code "Serous (SNOMED 447112000) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.dressingObservation.moist 0..1 code "Moist (SNOMED 17461003) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.dressingObservation.other 0..1 string "Other dressing observation problem, if applicable (SNOMED 1481000124102)"

// --- Subsection: Insertion Site Observation ---
* nursingAssessment.insertionSiteObservation 1..1 BackboneElement "Insertion Site Observation"
* nursingAssessment.insertionSiteObservation.insertionSiteObservation 1..1 code "Insertion site observation (SNOMED 386141001) | Answers: 17621005 Normal | 263654008 Abnormal"
* nursingAssessment.insertionSiteObservation.blistering 0..1 code "Blistering (SNOMED 339008) | Answers: 373066001 Yes | 373067005 No (conditional: if insertionSiteObservation = Abnormal)"
* nursingAssessment.insertionSiteObservation.redness 0..1 code "Redness (SNOMED 371240000) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.insertionSiteObservation.hematoma 0..1 code "Hematoma (SNOMED 35566002) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.insertionSiteObservation.pus 0..1 code "Pus (SNOMED 367646009) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.insertionSiteObservation.crusting 0..1 code "Crusting / crust formation (SNOMED 69640009) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.insertionSiteObservation.swelling 0..1 code "Swelling (SNOMED 65124004) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.insertionSiteObservation.extravasation 0..1 code "Extravasation/infiltration (SNOMED 76676007) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.insertionSiteObservation.other 0..1 string "Other insertion site observation, if applicable (SNOMED 364554009)"

// --- Subsection: Catheter Observation ---
* nursingAssessment.catheterObservation 1..1 BackboneElement "Catheter Observation"
* nursingAssessment.catheterObservation.catheterType 1..1 code "Type of catheter (SNOMED 246138005) | Answers: 52124006 Port catheter | 1396546006 1-lumen tunneled | 1396570005 2-lumen tunneled | 1396538005 3-lumen tunneled | 1396531004 Single lumen midline | 1396527005 Double lumen midline | 1396526001 Single lumen PICC | 1396489007 Double lumen PICC | 423954007 Peripheral catheter"
* nursingAssessment.catheterObservation.catheterObservation 1..1 code "Catheter observation (SNOMED 1156071007) | Answers: 17621005 Normal | 263654008 Abnormal"
* nursingAssessment.catheterObservation.lumen 0..* BackboneElement "Per-lumen observation (specify per lumen; conditional: if catheterObservation = Abnormal)"
* nursingAssessment.catheterObservation.lumen.colorLumen 0..1 code "Color of lumen hub (SNOMED 1396483008) | Answers: 371253002 Gray | 371251000 White | 371240000 Red | 371250004 Purple"
* nursingAssessment.catheterObservation.lumen.bloodAspiration 0..1 code "Blood aspiration (SNOMED 25797006) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible"
* nursingAssessment.catheterObservation.lumen.infusion 0..1 code "Infusion (SNOMED 36576007) | Answers: 36203004 Easy | 52925006 Difficult | 385671000 Impossible"
* nursingAssessment.catheterObservation.damagedCatheter 0..1 code "Damaged catheter (SNOMED 1156074004) | Answers: 373066001 Yes | 373067005 No"
* nursingAssessment.catheterObservation.other 0..1 string "Other catheter observation, if applicable (SNOMED 406148008)"

// --- Subsection: Side Effects ---
* nursingAssessment.sideEffects 1..1 BackboneElement "Side Effects"
* nursingAssessment.sideEffects.skinRash 1..1 code "Skin rash (SNOMED 271807003) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.itching 1..1 code "Itching (SNOMED 418290006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.blistersSkinPeeling 1..1 code "Blisters/skin peeling (SNOMED 271767006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.nausea 1..1 code "Nausea (SNOMED 422587007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.vomiting 1..1 code "Vomiting (SNOMED 249497008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.diarrhea 1..1 code "Diarrhea (SNOMED 62315008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.constipation 1..1 code "Constipation (SNOMED 14760008) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.decreasedAppetite 1..1 code "Decreased appetite / taste change (SNOMED 64379006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.painDuringAdministration 1..1 code "Pain during administration (SNOMED 698749006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.painGeneral 1..1 code "Pain general (SNOMED 112104007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.fatigue 1..1 code "Fatigue (SNOMED 224960004) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.chills 1..1 code "Chills (SNOMED 43724002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.candidiasis 1..1 code "Candidiasis / fungal infection (SNOMED 78048006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.jointPain 1..1 code "Joint pain (SNOMED 57676002) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.breathingProblems 1..1 code "Breathing problems / shortness of breath (SNOMED 267036007) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.swellingFaceTongue 1..1 code "Swelling of face/tongue (SNOMED 278528006) | Answers: 2667000 None | 255604002 Mild | 6736007 Moderate | 24484000 Severe"
* nursingAssessment.sideEffects.otherSymptoms 0..1 string "Other symptoms or relevant clinical/psychosocial observations (SNOMED 365275006)"

// --- Subsection: Quality Follow-Up ---
* nursingAssessment.qualityFollowUp 0..1 BackboneElement "Quality Follow-Up"
* nursingAssessment.qualityFollowUp.remarks 0..1 string "Remarks or concerns about patient registration, data sharing, hospital communication, material availability, or other transmural collaboration aspects (SNOMED 276238005)"
