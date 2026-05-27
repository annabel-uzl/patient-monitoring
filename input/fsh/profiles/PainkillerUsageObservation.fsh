Profile: PainkillerUsageObservation
Parent: Observation
Id: painkiller-usage-observation
Title: "Painkiller Usage Observation"
Description: "An observation if the patient uses pain killers or not"
* code = $snomed#52685006 "Administration of analgesic"
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoVS (required)