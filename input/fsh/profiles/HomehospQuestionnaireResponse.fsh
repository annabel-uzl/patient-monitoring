Profile: HomehospQuestionnaireResponse
Parent: QuestionnaireResponse
Id: homehosp-questionnaire-response
Title: "Home Hospitalization Careset Questionnaire Response"
Description: "Profile on QuestionnaireResponse for OPAT and ONCO home hospitalization caresets. Links the filled-in nursing observation to the originating Encounter and the canonical Questionnaire. See logical model: [CarestQuestionnaireResponse](StructureDefinition-homehosp-questionnaire-response-lm.html)"

* questionnaire 1..1 MS

* status 1..1 MS

* subject 1..1 MS
* subject only Reference(BePatient)

* encounter 1..1 MS
* encounter only Reference(HomehospEncounter)

* authored 1..1 MS

* author MS
* author only Reference(BePractitioner or BePractitionerRole)

* item 1..* MS
