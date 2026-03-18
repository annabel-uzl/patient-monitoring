// ==========================================
// 1. THE PATIENT
// ==========================================
Instance: Patient-123
InstanceOf: Patient
Description: "Example patient for the OPAT document"
* identifier[0].use = #usual
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* identifier[0].system = "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/patient/eadnr"
* identifier[0].value = "15"
* name[0].use = #official
* name[0].family = "KWS-TESTPATIENT"
* name[0].given[0] = "NUMMER 15"
* gender = #female
* birthDate = "1931-04-19"
* telecom[0].system = #phone
* telecom[0].value = "02/1234567"
* address[0].use = #home
* address[0].line = "AAA X"
* address[0].city = "DEN HAAG"
* address[0].postalCode = "4544 NL"
* address[0].country = "NL"

// ==========================================
// 2. THE COMPOSITION (DOCUMENT HEADER)
// ==========================================
Instance: OPAT-Document
InstanceOf: Composition
Usage: #example
* status = #final
* type.text = "OPAT"
* date = "2025-08-11T16:31:20+02:00"
* title = "Outpatient Parenteral Antimicrobial Therapy (OPAT)"
* subject = Reference(Patient-123)
* author = Reference(Organization-UZL)
* custodian = Reference(Organization-UZL)

// Sections
* section[0].title = "Patiëntgegevens"
* section[0].entry = Reference(Patient-123)

* section[1].title = "Contactgegevens zorgteam"
* section[1].entry = Reference(CareTeam-F-7766077)

* section[2].title = "Kathetertype"
* section[2].entry = Reference(Observation-Katheter-7938866)

// ==========================================
// 3. THE CARE TEAM
// ==========================================
Instance: CareTeam-F-7766077
InstanceOf: CareTeam
* status = #active
* name = "Zorgteam thuishospitalisatie"
* category = http://loinc.org#LA27977-0 "Episode of care-focused care team"
* subject = Reference(Patient-123)
* participant[0].member = Reference(CareTeam-OPAT)
* participant[1].member = Reference(CareTeam-Katheter)

Instance: CareTeam-OPAT
InstanceOf: CareTeam
* status = #active
* name = "OPAT team"
* telecom[0].system = #email
* telecom[0].value = "opat@uzleuven.be"
* telecom[1].system = #phone
* telecom[1].value = "016/12 34 56"

// ==========================================
// 4. CLINICAL OBSERVATIONS
// ==========================================
Instance: Observation-Katheter-7938866
InstanceOf: Observation
* status = #final
* code = http://snomed.info/sct#1156071007 "Catheter observable (observable entity)"
* subject = Reference(Patient-123)
* component[0].code = http://snomed.info/sct#246138005 "Type of catheter (attribute)"
* component[0].valueCodeableConcept = http://snomed.info/sct#1344705000 "Midline catheter (physical object)"
* component[1].code = http://snomed.info/sct#448439004 "Catheter stabilization device (physical object)"
* component[1].valueCodeableConcept = http://snomed.info/sct#84756000 "Adhesive tape, device (physical object)"

// ==========================================
// 5. SUPPORTING ORGANIZATIONS
// ==========================================
Instance: Organization-UZL
InstanceOf: Organization
* name = "UZ Leuven"