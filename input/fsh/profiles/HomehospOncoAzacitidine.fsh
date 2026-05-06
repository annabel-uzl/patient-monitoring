Profile: HomehospOncoAzacitidineQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-azacitidine
Title: "ONCO Azacitidine Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Azacitidine (Vidaza®) nursing observation form. Captures vital signs (including conditional SpO2), medication dissolution check, GI/pulmonary contraindications and side-effect monitoring. See logical model: [ONCOAzacitidineQuestionnaire](StructureDefinition-onco-azacitidine-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS
