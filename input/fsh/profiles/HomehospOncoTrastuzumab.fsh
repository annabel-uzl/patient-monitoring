Profile: HomehospOncoTrastuzumabQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-trastuzumab
Title: "ONCO Trastuzumab Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Trastuzumab (Herceptin®) nursing observation form. Captures body weight check, aftercare protocol, cardiac contraindications (LVEF, respiratory symptoms, oedema), vital signs and CTCAE-graded side effects. See logical model: [ONCOTrastuzumabQuestionnaire](StructureDefinition-onco-trastuzumab-questionnaire.html)"

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item 1..* MS
