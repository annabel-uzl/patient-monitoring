Profile: HomehospOncoBaseQuestionnaire
Parent: Questionnaire
Id: homehosp-onco-base
Title: "ONCO Home Hospitalization Base Questionnaire"
Description: "Base profile for all ONCO home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (Verpleegkundigassessment, Opdracht, Kwaliteitsopvolging) and the sub-groups common across all ONCO medications: Bewaring, Observatieparameters, Tegenindicaties, and Medicatietoediening."

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open

* item contains
    verpleegkundigAssessment 1..1 MS and
    opdracht 1..1 MS and
    kwaliteitsopvolging 1..1 MS

* item[verpleegkundigAssessment].linkId = "Verpleegkundigassessment"
* item[verpleegkundigAssessment].type = #group
* item[opdracht].linkId = "Opdracht"
* item[opdracht].type = #group
* item[kwaliteitsopvolging].linkId = "Kwaliteitsopvolging"
* item[kwaliteitsopvolging].type = #group

* item[verpleegkundigAssessment].item ^slicing.discriminator.type = #value
* item[verpleegkundigAssessment].item ^slicing.discriminator.path = "linkId"
* item[verpleegkundigAssessment].item ^slicing.rules = #open

* item[verpleegkundigAssessment].item contains
    bewaring 1..1 MS and
    observatieParameters 1..1 MS and
    tegenindicaties 1..1 MS

* item[verpleegkundigAssessment].item[bewaring].linkId = "Bewaring"
* item[verpleegkundigAssessment].item[bewaring].type = #group
* item[verpleegkundigAssessment].item[observatieParameters].linkId = "Observatieparameters"
* item[verpleegkundigAssessment].item[observatieParameters].type = #group
* item[verpleegkundigAssessment].item[tegenindicaties].linkId = "Tegenindicaties"
* item[verpleegkundigAssessment].item[tegenindicaties].type = #group

* item[opdracht].item ^slicing.discriminator.type = #value
* item[opdracht].item ^slicing.discriminator.path = "linkId"
* item[opdracht].item ^slicing.rules = #open

* item[opdracht].item contains
    medicatietoediening 1..1 MS

* item[opdracht].item[medicatietoediening].linkId = "Medicatietoediening"
* item[opdracht].item[medicatietoediening].type = #group
