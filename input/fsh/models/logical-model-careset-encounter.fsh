Logical: HomeHospEncounter
Id: homehosp-encounter-lm
Title: "Home Hospitalization Encounter Logical Model"
Description: "Logical model representing the FHIR Encounter resource as used in the OPAT and ONCO home hospitalization caresets. The Encounter serves two purposes: (1) recording whether the home visit took place and whether the patient was home, and (2) communicating the status of each ordered care activity back to the hospital. Only orders given by the hospital should be communicated back via this Encounter; other nursing activities are excluded."
Parent: Base
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^type = "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/HomeHospEncounter"

// ==========================================
// Visit Status
// ==========================================
* status 1..1 code "Status of the encounter - reported from Home nurse back to hospital | Answers: finished | cancelled | entered-in-error"
* class 1..1 code "Classification of the encounter | Fixed value: HH (home health) from http://terminology.hl7.org/CodeSystem/v3-ActCode"

// ==========================================
// Timing
// ==========================================
* period 1..1 BackboneElement "The start (and optionally end) time of the encounter"
* period.start 1..1 dateTime "Start date/time of the home visit"
* period.end 0..1 dateTime "End date/time of the home visit"

// ==========================================
// Participant (Home Nurse)
// ==========================================
* participant 1..* BackboneElement "The home nurse performing the visit"
* participant.type 1..1 code "Participant type | Fixed value: PPRF (primary performer) from http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant.individual 1..1 Reference(BePractitioner) "Reference or display name and RIZIV number of the performing home nurse"

// ==========================================
// Reason / Ordered Care Activities
// ==========================================
* reasonCode 1..* BackboneElement "The ordered care activities being reported on. One reasonCode entry per ordered activity (e.g. medication administration + catheter care). Only orders from the hospital should be included."
* reasonCode.primaryProcedure 1..1 code "Primary SNOMED code for the ordered care activity | Possible values: 18629005 Administration of drug or medicament | 18949003 Change of dressing | 705995006 Replace needleless connector | 448439004 Replace statlock | 302358004 Replace gripper needle | 233553003 Remove gripper needle | 103715008 Remove catheter | 82078001 Blood sample collection"
* reasonCode.administrationSubtype 0..1 code "Subtype for drug administration (use when primaryProcedure = 18629005) | Possible values: 14152002 Intravenous infusion | 386358000 IV administration | 76601001 Intramuscular injection | 276844002 Subcutaneous injection | 243132000 Inhaled administration"
* reasonCode.statusText 0..1 string "Free-text status note for this care activity (e.g. why it was not performed)"
* reasonCode.completed 1..1 code "Was this ordered care activity completed? | Answers: 31874001 True (completed) | 64100000 False (not completed)"

// ==========================================
// Service Provider (Home Nursing Organisation)
// ==========================================
* serviceProvider 0..1 Reference(BeOrganization) "Reference or display name of the home nursing organisation (e.g. Wit-Gele Kruis Vlaams-Brabant)"

// ==========================================
// Linked QuestionnaireResponse
// ==========================================
* reasonReference 0..* Reference(HomeHospQuestionnaireResponse) "Reference(s) to the QuestionnaireResponse(s) associated with this encounter"
