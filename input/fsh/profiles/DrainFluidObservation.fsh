ValueSet: FluidDrainVS
Title: "Fluid Drain Value Set"
Description: "Valid UCUM units for drain fluid measurement"
* ^experimental = false
* include $UCUM#mL/d "mL/d"

Profile: DrainFluidObservation
Parent: Observation
Id: drain-fluid-observation
Title: "Drain fluid Observation"
Description: "An observation drain fluid observations. Drain fluid is measured in mL per 24h"
* code = $snomed#251843005 "Fluid output from drain"
* value[x] only Quantity
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code from FluidDrainVS (required)