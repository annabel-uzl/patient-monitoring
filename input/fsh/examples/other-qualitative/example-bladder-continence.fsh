Instance: BladderContinenceExample
InstanceOf: Observation
Usage: #example
Title: "Observation: Bladder Continence"
Description: "Example observation of a patient's bladder continence level."
* status = #final
* code = $loinc#45619-4 "Bladder continence [Minimum Data Set]"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueCodeableConcept = $loinc#LA127-3 "USUALLY CONTINENT-BLADDER, incontinent episodes once a week or less; BOWEL, less than weekly"
* effectiveDateTime = "2025-10-08T10:00:00Z"