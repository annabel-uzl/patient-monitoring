# HL7 Belgium – Patient Monitoring Outcome

This **FHIR Implementation Guide (IG)** provides standardized guidance for integrating data between **Electronic Health Record (EHR)** systems and **Telemonitoring (TM) Providers** in Belgium.  
It is fully aligned with the national **Telemonitoring Prescription initiative**, ensuring seamless and interoperable care coordination.

For more background information, visit: [https://telemonitoring-prescription.com](https://telemonitoring-prescription.com)

---

## Core Concepts: Carepath vs Careset

This IG contains two distinct concepts that are important to distinguish:

### Carepath
The **Carepath** definitions describe how telemonitoring data is exchanged between systems. This exchange typically happens between **providers of patient monitoring data** (e.g., vital signs monitors, home devices) and **consumers** (e.g., EHRs, dashboards). It defines the specific data points that need to be collected from the patient as part of their pathway.

### Careset
The **Careset** definitions describe how data is collected in a structured report that can be shared between Electronic Patient Dossiers (EPDs) or specific healthcare actors. A Careset report may include data from Carepath definitions, but it can also include extra information such as Encounters, PatientQuestionnaires, or mappings between observations and other concepts. 
*Example: A patient is home hospitalized and a nurse is scheduled to come by and take care of the patient. The communication (e.g., the Careset report) happens between the care team in the hospital (e.g., the OPAT team) and the home nurse or home nursing organization.*

---

## Guide Publication

You can view the IG at the following locations:

- **Stable (Main Branch):**  
  [https://hl7-be.github.io/patient-monitoring/](https://hl7-be.github.io/patient-monitoring/)

- **Continuous Build (from `main` branch):**  
  [http://build.fhir.org/ig/hl7-be/patient-monitoring/branches/main/index.html](http://build.fhir.org/ig/hl7-be/patient-monitoring/branches/main/index.html)

---

## Issues and Change Requests

Please report bugs, improvement ideas, or change requests here:  
[https://github.com/hl7-be/patient-monitoring/issues](https://github.com/hl7-be/patient-monitoring/issues)

---

## Running Locally

To build and view the IG locally:

### Prerequisites

Make sure the following tools are installed:

- **Java** – required to run the IG Publisher
- **Node.js + npm** – optional, for IGs using Node-based tooling
- **FHIR IG Publisher** – download the latest `publisher.jar` from the [official HL7 release page](https://github.com/HL7/fhir-ig-publisher/releases) and place it in: `input-cache/publisher.jar``

### Run the IG Publisher

`java -jar input-cache/publisher.jar -ig ig.ini`

The output will be generated at: `output/index.html`

---

## Adding a New Carepath or Careset

To propose a new **carepath** or **careset** for inclusion in this Implementation Guide:

1. **Create a GitHub Issue**  
   Describe the clinical need, scope, and stakeholders involved.

2. **Propose a Pull Request (PR)**  
   Fork the repo, create a branch, and add:

   - Relevant FHIR profiles
   - Any ValueSets or CodeSystems
   - Documentation (markdown pages)

3. **Validate with the Field**  
   Gather feedback from clinicians, telemonitoring providers, and other relevant actors.  
   The more stakeholders involved, the better.

4. **Present to the HL7 Belgium Workgroup**  
   Share the proposal during a meeting of the **HL7 Belgium Patient Monitoring Workgroup**, which meets every two weeks.  
   Agenda and details: [https://wiki.hl7belgium.org/index.php?title=Patient_Monitoring_Outcome_Workgroup](https://wiki.hl7belgium.org/index.php?title=Patient_Monitoring_Outcome_Workgroup)

Once approved, your carepath or careset can be merged and included in future IG publications.

