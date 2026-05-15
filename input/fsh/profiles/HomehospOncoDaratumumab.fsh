Profile: HomehospOncoDaratumumabQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-daratumumab
Title: "ONCO Daratumumab Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Daratumumab (Darzalex®) nursing observation form. Captures pre-medication intake (dexamethasone, H1 antihistamine, paracetamol), medication checks, vital signs, administration, contraindications and side effects. See logical model: [ONCODaratumumabQuestionnaire](StructureDefinition-onco-daratumumab-questionnaire.html)"

* item[verpleegkundigAssessment].item contains
    premedicatieInname 1..1 MS and
    symptoomlast 1..1 MS

* item[verpleegkundigAssessment].item[premedicatieInname].linkId = "Premedicatieinname"
* item[verpleegkundigAssessment].item[premedicatieInname].type = #group
* item[verpleegkundigAssessment].item[symptoomlast].linkId = "Symptoomlast"
* item[verpleegkundigAssessment].item[symptoomlast].type = #group

* item[opdracht].item contains
    voorbereidingMedicatie 1..1 MS

* item[opdracht].item[voorbereidingMedicatie].linkId = "Voorbereidingmedicatietoediening"
* item[opdracht].item[voorbereidingMedicatie].type = #group
