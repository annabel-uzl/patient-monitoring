Invariant: 1-20-int-range
Description: "valueInteger must be between 1 and 20 inclusive"
Severity: #error
Expression: "value.ofType(integer).exists() implies (value.ofType(integer) >= 1 and value.ofType(integer) <= 20)"

Profile: WexnerCCISScoreObservation
Parent: Observation
Id: wexner-ccis-score-observation
Title: "Wexner/CCIS Score Observation"
Description: "Wexner/CCIS score observation"
* code = $snomed#782487009 "Assessment score"
* value[x] only integer
* obeys 1-20-int-range