// ==========================================
// 1. THE PATIENT
// ==========================================
Instance: Patient-123
InstanceOf: Patient
Title: "OPAT patient example"
Description: "Example patient for the OPAT document"
* active = true
* identifier[0].use = #usual
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* identifier[0].system = "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/patient/eadnr"
* identifier[0].value = "15"
* identifier[1].use = #usual
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* identifier[1].system = "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/pm/patient/emdnr"
* identifier[1].value = "310419V999"
* name[0].use = #official
* name[0].family = "KWS-TESTPATIENT"
* name[0].given[0] = "NUMMER 15"
* gender = #female
* birthDate = "1931-04-19"
* deceasedBoolean = false
* multipleBirthBoolean = false
* telecom[0].system = #phone
* telecom[0].value = "02/1234567"
* telecom[0].rank = 9
* telecom[1].system = #email
* telecom[1].value = "test.test@1234.betestann"
* telecom[1].rank = 9
* telecom[2].system = #email
* telecom[2].value = "ditistest@testface.com"
* telecom[2].rank = 1
* telecom[3].system = #email
* telecom[3].value = "face@tkklkljklklmlks.com"
* telecom[3].rank = 9
// Home address (historical)
* address[0].use = #home
* address[0].line = "ITALIESTRAAT 171 B"
* address[0].city = "Helecine"
* address[0].postalCode = "1357"
* address[0].period.start = "2006-03-07"
* address[0].period.end = "2020-10-15"
// Home address (current)
* address[1].use = #home
* address[1].line = "AAA X"
* address[1].city = "DEN HAAG"
* address[1].postalCode = "4544 NL"
* address[1].country = "NL"
* address[1].period.start = "2020-10-16"
// Communication languages
* communication[0].language = urn:ietf:bcp:47#fr
* communication[0].preferred = true
* communication[1].language = urn:ietf:bcp:47#nl
// Contact persons
* contact[0].relationship = http://terminology.hl7.org/CodeSystem/v2-013#U
* contact[0].relationship = https://fhir.nexuzhealth.com/standards/fhir/CodeSystem/kws/pm/patientAdres/relatieType#lk "leerkracht"
* contact[0].relationship = http://snomed.info/sct#106304008 "Teacher (occupation)"
* contact[0].telecom[0].system = #sms
* contact[0].telecom[0].value = "+3212345678"
* contact[0].telecom[0].rank = 9
* contact[1].relationship = http://terminology.hl7.org/CodeSystem/v2-013#U
* contact[1].relationship = https://fhir.nexuzhealth.com/standards/fhir/CodeSystem/kws/pm/patientAdres/relatieType#beg "begeleider"
* contact[1].relationship = http://snomed.info/sct#62071000 "Companion (occupation)"
* contact[1].telecom[0].system = #phone
* contact[1].telecom[0].value = "+32473444444"
* contact[1].telecom[0].rank = 9
* contact[2].relationship = http://terminology.hl7.org/CodeSystem/v2-013#N
* contact[2].relationship = https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-contact-person#child
* contact[2].relationship = https://fhir.nexuzhealth.com/standards/fhir/CodeSystem/kws/pm/patientAdres/relatieType#kin "kind"
* contact[2].relationship = http://snomed.info/sct#67822003 "Child (person)"
* contact[2].telecom[0].system = #phone
* contact[2].telecom[0].value = "+3216622552"
* contact[2].telecom[0].rank = 9
// General practitioner
* generalPractitioner = Reference(PractitionerRole-16500)

// ==========================================
// 2. THE COMPOSITION (DOCUMENT HEADER)
// ==========================================
Instance: OPAT-Document
InstanceOf: Composition
Title: "OPAT document example (composition)"
Description: "FHIR document containing necessary information for an OPAT treatment at home"
Usage: #example
* status = #final
* type.text = "OPAT"
* date = "2025-08-11T16:31:20+02:00"
* title = "Outpatient Parenteral Antimicrobial Therapy (OPAT)"
* subject = Reference(Patient-123)
* author = Reference(Organization-UZL)
* custodian = Reference(Organization-UZL)

// Section 0: Patientgegevens
* section[0].title = "Patientgegevens"
* section[0].author = Reference(Organization-UZL)
* section[0].entry[0] = Reference(Patient-123)

// Section 1: Contactgegevens zorgteam
* section[1].title = "Contactgegevens zorgteam"
* section[1].author = Reference(Organization-UZL)
* section[1].entry[0] = Reference(CareTeam-F-7766077)

// Section 2: Relevante voorgeschiedenis
* section[2].title = "Relevante voorgeschiedenis"
* section[2].author = Reference(Organization-UZL)
* section[2].entry[0] = Reference(ClinicalImpression-MED-medischeVG)

// Section 3: Toekomstige ziekenhuisafspraken in UZL
* section[3].title = "Toekomstige ziekenhuisafspraken in UZL"
* section[3].author = Reference(Organization-UZL)
* section[3].entry[0] = Reference(Appointment-testapp)

// Section 4: Bloeddruk (empty)
* section[4].title = "Bloeddruk"
* section[4].author = Reference(Organization-UZL)
* section[4].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"
* section[4].text.status = #empty
* section[4].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Geen gegevens beschikbaar</div>"

// Section 5: Hartslag (empty)
* section[5].title = "Hartslag"
* section[5].author = Reference(Organization-UZL)
* section[5].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"
* section[5].text.status = #empty
* section[5].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Geen gegevens beschikbaar</div>"

// Section 6: Temperatuur
* section[6].title = "Temperatuur"
* section[6].author = Reference(Organization-UZL)
* section[6].entry[0] = Reference(Observation-Temperatuur)

// Section 7: Gewicht (empty)
* section[7].title = "Gewicht"
* section[7].author = Reference(Organization-UZL)
* section[7].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"
* section[7].text.status = #empty
* section[7].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Geen gegevens beschikbaar</div>"

// Section 8: Nevenwerkingen/symptoomlast
* section[8].title = "Nevenwerkingen/symptoomlast"
* section[8].author = Reference(Organization-UZL)
* section[8].entry[0] = Reference(ClinicalImpression-OBS-Obstipatie)
* section[8].entry[1] = Reference(ClinicalImpression-OBS-Gewrichtspijn)
* section[8].entry[2] = Reference(ClinicalImpression-OBS-Rillingen)
* section[8].entry[3] = Reference(ClinicalImpression-OBS-Verminderdeeetlust)
* section[8].entry[4] = Reference(ClinicalImpression-OBS-Pijn)
* section[8].entry[5] = Reference(ClinicalImpression-OBS-Jeuk)
* section[8].entry[6] = Reference(ClinicalImpression-OBS-Andere)
* section[8].entry[7] = Reference(ClinicalImpression-OBS-Observatie-andere-specifieer)
* section[8].entry[8] = Reference(ClinicalImpression-OBS-Huiduitslag)
* section[8].entry[9] = Reference(ClinicalImpression-OBS-Moe)
* section[8].entry[10] = Reference(ClinicalImpression-OBS-Ademhalingsproblemen)
* section[8].entry[11] = Reference(ClinicalImpression-OBS-Zwelling)
* section[8].entry[12] = Reference(ClinicalImpression-OBS-Braken)
* section[8].entry[13] = Reference(ClinicalImpression-OBS-Misselijkheid)
* section[8].entry[14] = Reference(ClinicalImpression-OBS-Blaren)
* section[8].entry[15] = Reference(ClinicalImpression-OBS-Diarree)
* section[8].entry[16] = Reference(ClinicalImpression-OBS-Candidiase)

// Section 9: Kathetertype
* section[9].title = "Kathetertype"
* section[9].author = Reference(Organization-UZL)
* section[9].entry[0] = Reference(Observation-Katheter-7938866)

// ==========================================
// 3. THE APPOINTMENT
// ==========================================
Instance: testloc
InstanceOf: Location
Title: "UZL consultation location example"
Description: "Example hospital consultation location at UZ Leuven for the OPAT appointment"
* status = #active
* name = "UZ Leuven - Raadpleging"
* mode = #instance
* type[0] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"

Instance: Appointment-testapp
InstanceOf: Appointment
Title: "OPAT appointment example"
Description: "Future hospital appointment at UZL for the OPAT patient"
* status = #fulfilled
* identifier[0].use = #usual
* identifier[0].system = "https://fhir.nexuzhealth.com/standards/fhir/NamingSystem/kws/bifrost/afsprakenBoek/slotNr"
* identifier[0].value = "123456"
* start = "2025-08-11T09:15:00.000+02:00"
* end = "2025-08-11T09:25:00.000+02:00"
* minutesDuration = 10
* created = "2025-08-06T13:16:41+02:00"
* participant[0].actor = Reference(Location/testloc)
* participant[0].status = #accepted
* participant[1].actor = Reference(Patient-123)
* participant[1].status = #accepted

// ==========================================
// 4. THE CARE TEAMS
// ==========================================
Instance: CareTeam-F-7766077
InstanceOf: CareTeam
Title: "Overarching CareTeam Home Hospitalization"
Description: "Containing OPAT team, catheter team and emergency reception as participants"
* status = #active
* name = "Zorgteam thuishospitalisatie"
* category = http://loinc.org#LA27977-0 "Episode of care-focused care team"
* subject = Reference(Patient-123)
* managingOrganization = Reference(Organization-UZL)
* participant[0].member = Reference(CareTeam-OPAT)
* participant[1].member = Reference(CareTeam-Katheter)
* participant[2].member = Reference(CareTeam-Spoed)

Instance: CareTeam-OPAT
InstanceOf: CareTeam
Title: "CareTeam OPAT"
Description: "OPAT team with contact details"
* status = #active
* name = "OPAT team"
* telecom[0].system = #email
* telecom[0].value = "opat@uzleuven.be"
* telecom[0].rank = 1
* telecom[1].system = #phone
* telecom[1].value = "016/34 32 74"
* telecom[1].rank = 1

Instance: CareTeam-Katheter
InstanceOf: CareTeam
Title: "CareTeam Katheter"
Description: "Catheter team with contact details"
* status = #active
* name = "Katheterteam"
* telecom[0].system = #phone
* telecom[0].value = "016/34 08 64"
* telecom[0].rank = 10

Instance: CareTeam-Spoed
InstanceOf: CareTeam
Title: "CareTeam Spoed"
Description: "Emergency reception with contact details"
* status = #active
* name = "Receptie spoed"
* telecom[0].system = #phone
* telecom[0].value = "016/34 39 00"
* telecom[0].rank = 11

// ==========================================
// 5. CLINICAL OBSERVATIONS
// ==========================================

// Temperature observation (placeholder - referenced by Composition section "Temperatuur")
Instance: Observation-Temperatuur
InstanceOf: Observation
Title: "Temperature observation for OPAT patient"
Description: "Temperature vital sign observation"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(Patient-123)
* effectiveDateTime = "2025-11-21T11:49:11+01:00"
* valueQuantity.value = 36.1
* valueQuantity.unit = "°C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel

// Catheter observation
Instance: Observation-Katheter-7938866
InstanceOf: Observation
Title: "Catheter observation for OPAT patient"
Description: "Home hospitalization catheter observation example"
* status = #final
* code = http://snomed.info/sct#1156071007 "Catheter observable (observable entity)"
* subject = Reference(Patient-123)
* component[0].code = http://snomed.info/sct#246138005 "Type of catheter (attribute)"
* component[0].valueCodeableConcept = http://snomed.info/sct#1344705000 "Midline catheter (physical object)"
* component[1].code = http://snomed.info/sct#448439004 "Catheter stabilization device (physical object)"
* component[1].valueCodeableConcept = http://snomed.info/sct#84756000 "Adhesive tape, device (physical object)"

// ==========================================
// 6. ENCOUNTER
// ==========================================
Instance: CT-259690079
InstanceOf: Encounter
Title: "OPAT consultation encounter example"
Description: "Hospital consultation encounter for the OPAT patient at UZ Leuven"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient-123)
* serviceProvider = Reference(Organization-UZL)
* period.start = "2025-07-11T13:09:50+02:00"

// ==========================================
// 7. CLINICAL IMPRESSIONS - MEDICAL HISTORY
// ==========================================
Instance: ClinicalImpression-MED-medischeVG
InstanceOf: ClinicalImpression
Title: "Relevante medische voorgeschiedenis"
Description: "Relevant medical history (OPAT 3.0 template field MED_medischeVG)"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "TEST KWS"

// ==========================================
// 8. CLINICAL IMPRESSIONS - SYMPTOMS / SIDE EFFECTS
// ==========================================

// Obstipatie
Instance: ClinicalImpression-OBS-Obstipatie
InstanceOf: ClinicalImpression
Title: "Symptoom: Obstipatie"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Gewrichtspijn
Instance: ClinicalImpression-OBS-Gewrichtspijn
InstanceOf: ClinicalImpression
Title: "Symptoom: Gewrichtspijn"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Rillingen
Instance: ClinicalImpression-OBS-Rillingen
InstanceOf: ClinicalImpression
Title: "Symptoom: Rillingen"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Verminderde eetlust
Instance: ClinicalImpression-OBS-Verminderdeeetlust
InstanceOf: ClinicalImpression
Title: "Symptoom: Verminderde eetlust"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Pijn
Instance: ClinicalImpression-OBS-Pijn
InstanceOf: ClinicalImpression
Title: "Symptoom: Pijn"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Jeuk
Instance: ClinicalImpression-OBS-Jeuk
InstanceOf: ClinicalImpression
Title: "Symptoom: Jeuk"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "yes"

// Andere
Instance: ClinicalImpression-OBS-Andere
InstanceOf: ClinicalImpression
Title: "Symptoom: Andere"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Observatie andere - specifieer (no summary in source)
Instance: ClinicalImpression-OBS-Observatie-andere-specifieer
InstanceOf: ClinicalImpression
Title: "Symptoom: Observatie andere - specifieer"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"

// Huiduitslag
Instance: ClinicalImpression-OBS-Huiduitslag
InstanceOf: ClinicalImpression
Title: "Symptoom: Huiduitslag"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Moe
Instance: ClinicalImpression-OBS-Moe
InstanceOf: ClinicalImpression
Title: "Symptoom: Moe"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Ademhalingsproblemen
Instance: ClinicalImpression-OBS-Ademhalingsproblemen
InstanceOf: ClinicalImpression
Title: "Symptoom: Ademhalingsproblemen"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Zwelling
Instance: ClinicalImpression-OBS-Zwelling
InstanceOf: ClinicalImpression
Title: "Symptoom: Zwelling"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Braken
Instance: ClinicalImpression-OBS-Braken
InstanceOf: ClinicalImpression
Title: "Symptoom: Braken"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Misselijkheid
Instance: ClinicalImpression-OBS-Misselijkheid
InstanceOf: ClinicalImpression
Title: "Symptoom: Misselijkheid"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Blaren
Instance: ClinicalImpression-OBS-Blaren
InstanceOf: ClinicalImpression
Title: "Symptoom: Blaren"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Diarree
Instance: ClinicalImpression-OBS-Diarree
InstanceOf: ClinicalImpression
Title: "Symptoom: Diarree"
* status = #completed
* subject = Reference(Patient/Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// Candidiase
Instance: ClinicalImpression-OBS-Candidiase
InstanceOf: ClinicalImpression
Title: "Symptoom: Candidiase"
* status = #completed
* subject = Reference(Patient-123)
* encounter = Reference(Encounter/CT-259690079)
* date = "2025-07-11T13:09:50+02:00"
* description = "OPAT 3.0"
* summary = "no"

// ==========================================
// 9. SUPPORTING ORGANIZATIONS
// ==========================================
Instance: Organization-UZL
InstanceOf: Organization
Title: "Organization example for OPAT document"
Description: "UZ Leuven - authoring and custodian organization"
* name = "UZ Leuven"
