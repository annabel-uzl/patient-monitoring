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

Mapping: HomehospQRToLogical
Source: HomehospQuestionnaireResponse
Target: "http://hl7belgium.org/fhir/patient-monitoring/StructureDefinition/homehosp-questionnaire-response-lm"
Id: homehosp-qr-lm-mapping
Title: "Mapping to CarestQuestionnaireResponse Logical Model"
* -> "CarestQuestionnaireResponse"
* questionnaire -> "CarestQuestionnaireResponse.questionnaire"
* status -> "CarestQuestionnaireResponse.status"
* subject -> "CarestQuestionnaireResponse.subject"
* encounter -> "CarestQuestionnaireResponse.encounter"
* authored -> "CarestQuestionnaireResponse.authored"
* author -> "CarestQuestionnaireResponse.author"
* item -> "CarestQuestionnaireResponse.item"
* item.linkId -> "CarestQuestionnaireResponse.item.linkId"
* item.answer -> "CarestQuestionnaireResponse.item.answer"
