Instance: BodyWeightExample2
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Usage: #example
Title: "Observation: Body Weight (Registered by Patient)"
Description: "Body weight vital sign observation registered by the patient"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject.identifier.system = $tmp_patientId
* subject.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* valueQuantity.value = 89.3
* valueQuantity = $UCUM#kg "kg"
* performer.identifier.system = $tmp_patientId
* performer.identifier.value = "EFD5E060-9522-48BE-9ECC-3BFA54EA3666"
* effectivePeriod.start = "2024-11-18T09:38:52+00:00"
* effectivePeriod.end = "2024-11-18T09:38:52+00:00"