ValueSet: YesNoVS
Title: "Yes/No Value Set"
Description: "Simple yes or no answer value set"
* ^experimental = false
* include $snomed#373066001 "Yes"
* include $snomed#373067005 "No"

Profile: PainkillerUsageObservation
Parent: Observation
Id: painkiller-usage-observation
Title: "Painkiller usage Observation"
Description: "An observation if the patient uses pain killers or not"
* code = $snomed#52685006 "Administration of analgesic"
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoVS (required)