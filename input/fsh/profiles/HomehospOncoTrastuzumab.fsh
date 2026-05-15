Profile: HomehospOncoTrastuzumabQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-trastuzumab
Title: "ONCO Trastuzumab Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Trastuzumab (Herceptin®) nursing observation form. Captures body weight check, aftercare protocol, cardiac contraindications (LVEF, respiratory symptoms, oedema), vital signs and CTCAE-graded side effects. See logical model: [ONCOTrastuzumabQuestionnaire](StructureDefinition-onco-trastuzumab-questionnaire.html)"

* item[verpleegkundigAssessment].item contains
    symptoomlast 1..1 MS

* item[verpleegkundigAssessment].item[symptoomlast].linkId = "Symptoomlast"
* item[verpleegkundigAssessment].item[symptoomlast].type = #group

* item[opdracht].item contains
    voorbereidingMedicatie 1..1 MS and
    nazorg 1..1 MS

* item[opdracht].item[voorbereidingMedicatie].linkId = "Voorbereidingmedicatietoediening"
* item[opdracht].item[voorbereidingMedicatie].type = #group
* item[opdracht].item[nazorg].linkId = "Nazorg"
* item[opdracht].item[nazorg].type = #group
