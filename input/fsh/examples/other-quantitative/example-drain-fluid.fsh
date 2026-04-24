Instance: DrainFluidExample
InstanceOf: Observation
Usage: #example
Title: "Drain fluid output example"
Description: "Drain fluid volume measured in mL per day"
* status = #final
* code.coding[0].system = $snomed
* code.coding[0].code = #251843005
* code.coding[0].display = "Fluid output from drain"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "D358D4B4-6007-4C3E-A33B-056773F45DC9"
* valueQuantity.value = 35.29
* valueQuantity = $UCUM#mL/d "mL/d"
* effectiveDateTime = "2025-10-08T10:00:00Z"