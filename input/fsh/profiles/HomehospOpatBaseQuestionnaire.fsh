Profile: HomehospOpatBaseQuestionnaire
Parent: Questionnaire
Id: homehosp-opat-base
Title: "OPAT Home Hospitalization Base Questionnaire"
Description: "Base profile for all OPAT home hospitalization nursing questionnaires. Defines the mandatory top-level group structure (Verpleegkundigassessment, Kwaliteitsopvolging) and all eight sub-groups common to both OPAT questionnaires: Bewaring, Voorbereidingmedicatietoediening, Medicatietoediening, Vitaleparameters, Observatieverbandinsteekplaats, Observatieinsteekplaats, Observatiekatheter, and Nevenwerkingen."

* status 1..1 MS
* status = #active

* subjectType 1..1 MS
* subjectType = #Patient

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open

* item contains
    verpleegkundigAssessment 1..1 MS and
    kwaliteitsopvolging 1..1 MS

* item[verpleegkundigAssessment].linkId = "Verpleegkundigassessment"
* item[verpleegkundigAssessment].type = #group
* item[kwaliteitsopvolging].linkId = "Kwaliteitsopvolging"
* item[kwaliteitsopvolging].type = #group

* item[verpleegkundigAssessment].item ^slicing.discriminator.type = #value
* item[verpleegkundigAssessment].item ^slicing.discriminator.path = "linkId"
* item[verpleegkundigAssessment].item ^slicing.rules = #open

* item[verpleegkundigAssessment].item contains
    bewaring 1..1 MS and
    voorbereidingMedicatie 1..1 MS and
    medicatietoediening 1..1 MS and
    vitaleParameters 1..1 MS and
    verbandInsteekplaats 1..1 MS and
    observatieInsteekplaats 1..1 MS and
    observatieKatheter 1..1 MS and
    nevenwerkingen 1..1 MS

* item[verpleegkundigAssessment].item[bewaring].linkId = "Bewaring"
* item[verpleegkundigAssessment].item[bewaring].type = #group
* item[verpleegkundigAssessment].item[voorbereidingMedicatie].linkId = "Voorbereidingmedicatietoediening"
* item[verpleegkundigAssessment].item[voorbereidingMedicatie].type = #group
* item[verpleegkundigAssessment].item[medicatietoediening].linkId = "Medicatietoediening"
* item[verpleegkundigAssessment].item[medicatietoediening].type = #group
* item[verpleegkundigAssessment].item[vitaleParameters].linkId = "Vitaleparameters"
* item[verpleegkundigAssessment].item[vitaleParameters].type = #group
* item[verpleegkundigAssessment].item[verbandInsteekplaats].linkId = "Observatieverbandinsteekplaats"
* item[verpleegkundigAssessment].item[verbandInsteekplaats].type = #group
* item[verpleegkundigAssessment].item[observatieInsteekplaats].linkId = "Observatieinsteekplaats"
* item[verpleegkundigAssessment].item[observatieInsteekplaats].type = #group
* item[verpleegkundigAssessment].item[observatieKatheter].linkId = "Observatiekatheter"
* item[verpleegkundigAssessment].item[observatieKatheter].type = #group
* item[verpleegkundigAssessment].item[nevenwerkingen].linkId = "Nevenwerkingen"
* item[verpleegkundigAssessment].item[nevenwerkingen].type = #group
