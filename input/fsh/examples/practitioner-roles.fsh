Instance: nurse
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
* code = $cd-hcparty#persnurse "Nurse"

Instance: PractitionerRole-16500
InstanceOf: PractitionerRole
Title: "PractitionerRole: General Practitioner"
Description: "Example general practitioner (huisarts) for the OPAT patient"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
* identifier[0].system = "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/huisarts/id"
* identifier[0].value = "16500"
* code = $cd-hcparty#persphysician "Physician"
* specialty = https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty#drgeneralphysician "General Physician"