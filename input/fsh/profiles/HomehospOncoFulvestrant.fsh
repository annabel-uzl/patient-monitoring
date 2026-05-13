Profile: HomehospOncoFulvestrantQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-fulvestrant
Title: "ONCO Fulvestrant Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Fulvestrant (Faslodex®) nursing observation form. Captures vital signs, contraindication check, administration (bilateral IM injections) and muscle/joint pain side-effect follow-up. See logical model: [ONCOFulvestrantQuestionnaire](StructureDefinition-onco-fulvestrant-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS
