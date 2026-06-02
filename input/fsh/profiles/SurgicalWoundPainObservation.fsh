Profile: SurgicalWoundPainObservation
Parent: Observation
Id: surgical-wound-pain-observation
Title: "Surgical Wound Pain Observation"
Description: "An observation of the pain reported by the patient in a surgical wound."
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* value[x] only CodeableConcept
* valueCodeableConcept from PainScale (required)