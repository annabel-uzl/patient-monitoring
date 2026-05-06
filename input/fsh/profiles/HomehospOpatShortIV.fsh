Profile: HomehospOpatShortIVQuestionnaire
Parent: Questionnaire
Id: homehosp-opat-short-iv
Title: "OPAT Short-Duration IV Nursing Questionnaire"
Description: "Profile on Questionnaire for the OPAT short-duration IV administration nursing observation form. Captures medication storage, administration, vitals, dressing/insertion-site/catheter observations, side effects and quality follow-up (no infusor weight fields). See logical model: [OPATShortIVQuestionnaire](StructureDefinition-opat-short-iv-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS
