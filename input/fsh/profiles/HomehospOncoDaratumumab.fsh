Profile: HomehospOncoDaratumumabQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-daratumumab
Title: "ONCO Daratumumab Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Daratumumab (Darzalex®) nursing observation form. Captures pre-medication intake (dexamethasone, H1 antihistamine, paracetamol), medication checks, vital signs, administration, contraindications and side effects. See logical model: [ONCODaratumumabQuestionnaire](StructureDefinition-onco-daratumumab-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS
