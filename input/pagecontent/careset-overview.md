<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

### What is a Careset?

In the context of this Implementation Guide, the **Careset** definitions describe how clinical data is collected in a
structured report that can be securely shared between Electronic Patient Dossiers (EPDs) or other healthcare systems.

While **[Carepaths](./carepathoverview.html)** focus on how individual data points are exchanged between telemonitoring
providers and consumers, Careset reports provide a more holistic clinical picture. These reports may include data
imported from the Carepath definitions (such as vital signs and symptoms), but can also contain additional, extensive
information including:

- `Encounter` resources (contextualizing the care event)
- `Questionnaire` and `QuestionnaireResponse` (PROMs/PREMs)
- Mappings from raw observations to derived clinical concepts

#### Example Use Case

Consider a scenario where a patient is home-hospitalized and a home nurse is scheduled to come by to take care of the
patient. The critical clinical communication happens between the central care team in the hospital (e.g., an OPAT team)
and the home nurse or home nursing organization. A **Careset** facilitates this communication by bundling all relevant
measurements, questionnaires, and encounter details into a cohesive report that is easily transferable between their
respective EHRs/systems.

<div class="stu-note">
<strong>Legal Distinction:</strong> While this IG currently focuses on home-hospitalization examples, the <code>Careset</code> framework applies to many types of transmural care. Note that not all transmural care qualifies as "home hospitalization" under the strict legal definition established by the <strong>Royal Decree of June 22, 2023</strong>. For the specific legal criteria, refer to the <a href="https://www.riziv.fgov.be/nl/thema-s/verzorging-kosten-en-terugbetaling/wat-het-ziekenfonds-terugbetaalt/thuishospitalisatie-voor-oncologie-en-antimicrobiele-behandeling#:~:text=Onder%20thuishospitalisatie%20verstaan,of%20een%20daghospitalisatie.">official RIZIV/INAMI definition</a>.
</div>