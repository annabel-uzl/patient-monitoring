Profile: HomehospEncounter
Parent: Encounter
Id: homehosp-encounter
Title: "Home Hospitalization Careset Encounter"
Description: "Profile on the FHIR Encounter resource for use in OPAT and ONCO home hospitalization caresets. The Encounter records whether the home visit took place and the status of each ordered care activity. Only hospital-ordered procedures should be reported back via this Encounter. See logical model: [CarestEncounter](StructureDefinition-homehosp-encounter-lm.html)"

* class 1..1 MS
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH "home health"

* status 1..1 MS

* period 1..1 MS
* period.start 1..1 MS

* participant 1..* MS
* participant.type 1..1 MS
* participant.individual MS
* participant.individual only Reference(BePractitioner or BePractitionerRole)

* reasonCode 1..* MS
* reasonCode.coding 1..* MS

* serviceProvider MS
* serviceProvider only Reference(BeOrganization)

Mapping: HomehospEncounterToLogical
Source: HomehospEncounter
Target: "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-encounter-lm"
Id: homehosp-encounter-lm-mapping
Title: "Mapping to CarestEncounter Logical Model"
* -> "CarestEncounter"
* class -> "CarestEncounter.class"
* status -> "CarestEncounter.status"
* period -> "CarestEncounter.period"
* period.start -> "CarestEncounter.period.start"
* period.end -> "CarestEncounter.period.end"
* participant -> "CarestEncounter.participant"
* participant.type -> "CarestEncounter.participant.type"
* participant.individual -> "CarestEncounter.participant.individual"
* reasonCode -> "CarestEncounter.reasonCode"
* serviceProvider -> "CarestEncounter.serviceProvider"
