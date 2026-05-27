CodeSystem: DecisionCS
Id: decision-cs
Title: "Medication Administration Decision Codes"
Description: "Local codes for the nurse's decision following contraindication assessment in ONCO home-hospitalization questionnaires."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #administration "Medication administered" "Medication could be administered according to the procedure."
* #no-administration "Medication NOT administered" "Medication was not administered due to contraindications."
* #other "Other" "A different outcome was agreed upon after consultation with the hospital care team."

ValueSet: DecisionVS
Id: decision
Title: "Medication Administration Decision"
Description: "Codes for the nurse's decision after contraindication assessment — whether to administer, withhold, or take another action following consultation with the hospital care team."
* ^status = #active
* ^experimental = false
* include codes from system DecisionCS
