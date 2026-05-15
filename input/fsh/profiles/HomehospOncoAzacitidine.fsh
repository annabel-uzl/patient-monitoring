Profile: HomehospOncoAzacitidineQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-azacitidine
Title: "ONCO Azacitidine Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Azacitidine (Vidaza®) nursing observation form. Captures vital signs (including conditional SpO2), medication dissolution check, GI/pulmonary contraindications and side-effect monitoring. See logical model: [ONCOAzacitidineQuestionnaire](StructureDefinition-onco-azacitidine-questionnaire.html)"

* item[verpleegkundigAssessment].item contains
    symptoomlast 1..1 MS

* item[verpleegkundigAssessment].item[symptoomlast].linkId = "Symptoomlast"
* item[verpleegkundigAssessment].item[symptoomlast].type = #group

* item[opdracht].item contains
    voorbereidingMedicatie 1..1 MS

* item[opdracht].item[voorbereidingMedicatie].linkId = "Voorbereidingmedicatietoediening"
* item[opdracht].item[voorbereidingMedicatie].type = #group
