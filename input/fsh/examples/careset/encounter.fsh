Instance: Encounter-3441
InstanceOf: Encounter
Title: "Home hospitalization encounter for subcutaneous injection"
Usage: #example
Description: "First line encounter"

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH "home health"

// Participant (The primary performer)
* participant[0].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant[0].individual.display = "John Doe rizivnr"

// Timing
* period.start = "2025-11-19T11:07:52+00:00"

// Reason for the encounter (using SNOMED CT)
* reasonCode[0].coding[0] = http://snomed.info/sct#18629005 "Administration of drug or medicament (procedure)"
* reasonCode[0].coding[1] = http://snomed.info/sct#276844002 "Injection to subcutaneous drug delivery port (procedure)"
* reasonCode[0].text = "subcutane inspuiting"

// Service Provider Reference
// * serviceProvider = Reference(Organization/094093067001)
* serviceProvider.display = "Wit-Gele Kruis Vlaams-Brabant"
