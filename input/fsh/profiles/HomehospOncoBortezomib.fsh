Profile: HomehospOncoBortezomibQuestionnaire
Parent: HomehospOncoBaseQuestionnaire
Id: homehosp-onco-bortezomib
Title: "ONCO Bortezomib Nursing Questionnaire"
Description: "Profile on Questionnaire for the ONCO Bortezomib (Velcade®) nursing observation form. Captures vital signs, medication checks, sensory/motor neuropathy contraindication assessment and post-administration side-effect monitoring. See logical model: [ONCOBortezomibQuestionnaire](StructureDefinition-onco-bortezomib-questionnaire.html)"

* item[verpleegkundigAssessment].item contains
    symptoomlast 1..1 MS

* item[verpleegkundigAssessment].item[symptoomlast].linkId = "Symptoomlast"
* item[verpleegkundigAssessment].item[symptoomlast].type = #group
