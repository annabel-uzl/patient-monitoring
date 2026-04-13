### Careset Mapping Tables

There is a lot of overlap between the different Caresets, but also between the Caresets and Carepaths. Caresets build
upon the basic semantic foundation of Carepaths, intentionally re-using the SNOMED CT and LOINC codes defined for
standalone parameters (for example, Heart Rate or Body Weight as seen in the Carepaths). However, because Caresets also
track Encounters, advanced Questionnaires, and procedural outcomes, they expand upon that core set. We list here the
expanded mappings used in the Caresets and their connection to the base Carepath parameters.

#### General mappings

If there is a distinction between OPAT and ONCO (Antitumoral therapy) this is noted in the table. It might be that in
the future we can align these caresets even more.
The <span class="cell-info">yellow marked codes</span> are codes that do not appear in the corresponding carepath in
this IG.

<div class="table-md"></div>

| Description                                                                                                                                                                  | Code(s)                                                                                                                                                 | Possible Answers                                                                                                                                                                                                                                     |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Are there any remarks or concerns regarding the (correct) home storage of medication?                                                                                        | <span class="cell-info">SNOMED 422413002</span>                                                                                                         | SNOMED: 710977001 (safe storage / medication correctly stored), 424363005 (improper storage / concern about correct home storage)                                                                                                                    |
| Medication fully dissolved into a clear solution without visible particles                                                                                                   | <span class="cell-info">SNOMED 396076000   </span>                                                                                                      | SNOMED: 31874001 (true), 64100000 (false)                                                                                                                                                                                                            |
| Weight after disconnecting empty infusion device                                                                                                                             | SNOMED 1381260006                                                                                                                                       | Not applicable                                                                                                                                                                                                                                       |
| Weight of full infusion device just before new administration                                                                                                                | SNOMED 1381257004                                                                                                                                       | Not applicable                                                                                                                                                                                                                                       |
| Additional observation (if applicable) (during medication preparation)                                                                                                       | <span class="cell-info"> SNOMED 396078004  </span>                                                                                                      | Not applicable                                                                                                                                                                                                                                       |
| Could the medication be prepared according to procedure?                                                                                                                     | <span class="cell-info"> SNOMED 385796006  </span>                                                                                                      | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Could the medication be administered exactly according to procedure (no deviations)?                                                                                         | <span class="cell-info"> SNOMED 373149000 </span>                                                                                                       | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Body temperature                                                                                                                                                             | LOINC 8310-5                                                                                                                                            | Not applicable                                                                                                                                                                                                                                       |
| Pulse                                                                                                                                                                        | SNOMED 364075005                                                                                                                                        | Not applicable                                                                                                                                                                                                                                       |
| Blood pressure (systolic mmHg)                                                                                                                                               | LOINC 8480-6                                                                                                                                            | Not applicable                                                                                                                                                                                                                                       |
| Blood pressure (diastolic mmHg)                                                                                                                                              | LOINC 8462-4                                                                                                                                            | Not applicable                                                                                                                                                                                                                                       |
| Oxygen saturation (%)                                                                                                                                                        | LOINC 2708-6                                                                                                                                            | Not applicable                                                                                                                                                                                                                                       |
| Body weight                                                                                                                                                                  | LOINC 29463-7                                                                                                                                           | Not applicable                                                                                                                                                                                                                                       |
| Pre-medication correctly taken (dexamethasone, H1-antihistamine, paracetamol before administration)                                                                          | <span class="cell-info"> SNOMED 182833002  </span>                                                                                                      | SNOMED ONCO: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Observation of insertion site dressing                                                                                                                                       | SNOMED 364554009                                                                                                                                        | SNOMED OPAT: 17621005 (Normal), 263654008 (Abnormal)                                                                                                                                                                                                 |
| Bloody                                                                                                                                                                       | SNOMED 297968009                                                                                                                                        | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Purulent                                                                                                                                                                     | SNOMED 225550006                                                                                                                                        | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Loose                                                                                                                                                                        | SNOMED 78799005                                                                                                                                         | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Serous                                                                                                                                                                       | SNOMED 447112000                                                                                                                                        | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Moist                                                                                                                                                                        | SNOMED 17461003                                                                                                                                         | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Other observation problems with dressing                                                                                                                                     | <span class="cell-info"> SNOMED 1481000124102  </span>                                                                                                  | Not applicable                                                                                                                                                                                                                                       |
| Observation insertion site                                                                                                                                                   | SNOMED 386141001                                                                                                                                        | SNOMED OPAT: 17621005 (Normal), 263654008 (Abnormal)                                                                                                                                                                                                 |
| Blistering                                                                                                                                                                   | SNOMED 339008                                                                                                                                           | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Red                                                                                                                                                                          | SNOMED 371240000                                                                                                                                        | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Hematoma                                                                                                                                                                     | SNOMED 35566002                                                                                                                                         | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Pus                                                                                                                                                                          | SNOMED 367646009                                                                                                                                        | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Crust formation                                                                                                                                                              | SNOMED 69640009                                                                                                                                         | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Swelling                                                                                                                                                                     | SNOMED 65124004                                                                                                                                         | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Extravasation/Infiltration                                                                                                                                                   | SNOMED 76676007                                                                                                                                         | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Damaged catheter                                                                                                                                                             | SNOMED 1156074004                                                                                                                                       | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Other observation problems at insertion site                                                                                                                                 | <span class="cell-info"> SNOMED 364554009 </span>                                                                                                       | Not applicable                                                                                                                                                                                                                                       |
| Observation catheter                                                                                                                                                         | SNOMED 1156071007                                                                                                                                       | SNOMED OPAT: 17621005 (Normal), 263654008 (Abnormal)                                                                                                                                                                                                 |
| Catheter type                                                                                                                                                                | <span class="cell-info"> SNOMED 246138005 </span>                                                                                                       | SNOMED OPAT: 52124006 (central venous), 445085009 (tunneled central venous), 1344705000 (midline), 398176008 (peripherally inserted central), 423954007 (peripheral) <br>Extension lumen: 257279004 (single), 257280001 (double), 397970004 (triple) |
| Color lumen                                                                                                                                                                  | <span class="cell-info"> New SNOMED code request done - color-coded hub, observable entity </span>                                                      | SNOMED OPAT: 371253002 (Gray color), 371251000 (White color), 371240000 (red color), 371250004 (Purple color)                                |
| Blood aspiration                                                                                                                                                             | <span class="cell-info"> SNOMED 25797006     </span>                                                                                                    | SNOMED OPAT: 36203004 (easy), 52925006 (difficult), 385671000 (unsuccessful)                                                                                                                                                                         |
| Infusion                                                                                                                                                                     | SNOMED 36576007                                                                                                                                         | SNOMED OPAT: 36203004 (easy), 52925006 (difficult), 385671000 (unsuccessful)                                                                                                                                                                         |
| Skin rash                                                                                                                                                                    | SNOMED 271807003                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Itching                                                                                                                                                                      | SNOMED 418290006                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                               |
| Blisters / skin peeling                                                                                                                                                      | SNOMED 271767006                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                               |
| Nausea                                                                                                                                                                       | SNOMED 422587007                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Vomiting                                                                                                                                                                     | SNOMED 249497008                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Diarrhea                                                                                                                                                                     | SNOMED 62315008                                                                                                                                         | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Constipation                                                                                                                                                                 | SNOMED 14760008                                                                                                                                         | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Decreased appetite / taste change                                                                                                                                            | SNOMED 64379006                                                                                                                                         | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Pain during administration                                                                                                                                                   | SNOMED 698749006                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                               |
| Localized pain                                                                                                                                                               | SNOMED 112104007                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Fatigue / tiredness                                                                                                                                                          | SNOMED 224960004                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Psychosocial burden                                                                                                                                                          | SNOMED 384821006                                                                                                                                        | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                                                                                                                      |
| Chills                                                                                                                                                                       | SNOMED 43724002                                                                                                                                         | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                               |
| Candidiasis (fungal infection)                                                                                                                                               | SNOMED 78048006                                                                                                                                         | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                                    |
| Joint pain                                                                                                                                                                   | SNOMED 57676002                                                                                                                                         | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                                    |
| Respiratory problems / shortness of breath                                                                                                                                   | SNOMED 267036007                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                           |
| Facial / tongue swelling                                                                                                                                                     | SNOMED 278528006                                                                                                                                        | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe)                                                                                                                                                               |
| Cough                                                                                                                                                                        | SNOMED 49727002                                                                                                                                         | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                                                                                                                      |
| Muscle and joint pain                                                                                                                                                        | SNOMED 57676002                                                                                                                                         | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                                                                                                                      |
| Motor neuropathy                                                                                                                                                             | SNOMED 95663000                                                                                                                                         | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                                                                                                                      |
| Edema                                                                                                                                                                        | SNOMED 79654002                                                                                                                                         | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                                                                                                                      |
| Tingling or numbness in fingers or toes                                                                                                                                      | SNOMED 91019004                                                                                                                                         | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3)                                                                                                                                                      |
| Any other symptom burden or relevant clinical/psychosocial observations? (contact hospital care team if clinically concerned)                                                | <span class="cell-info"> SNOMED 365275006   </span>                                                                                                     | Not applicable                                                                                                                                                                                                                                       |
| Any contraindications for administration?                                                                                                                                    | <span class="cell-info"> SNOMED 395008009     </span>                                                                                                   | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Fever, chills, feeling unwell                                                                                                                                                | SNOMED 39104002                                                                                                                                         | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Pre-medication not taken                                                                                                                                                     | <span class="cell-info">  SNOMED 371900001  </span>                                                                                                     | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Blood pressure on repetition below 100/60 mmHg                                                                                                                               | SNOMED 12763006                                                                                                                                         | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Heart rate above 100 bpm at rest or irregular heartbeat unless known chronic                                                                                                 | SNOMED 361137007                                                                                                                                        | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Severe sensory neuropathy                                                                                                                                                    | SNOMED 95662005                                                                                                                                         | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Severe motor neuropathy                                                                                                                                                      | <span class="cell-info">SNOMED 299737009 </span>                                                                                                        | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Weight increase of 3 kg/3 weeks or 5 kg/6 weeks, especially with increased edema                                                                                             | SNOMED 262286000                                                                                                                                        | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Increased edema in hands and/or feet                                                                                                                                         | <span class="cell-info"> SNOMED 267038008 </span>                                                                                                       | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| New or increased productive/dry cough, with/without dyspnea                                                                                                                  | SNOMED 11833005                                                                                                                                         | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Severe nausea (insufficient oral intake)                                                                                                                                     | <span class="cell-info"> SNOMED 73335002  </span>                                                                                                       | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| No oral intake (due to decreased appetite or taste change)                                                                                                                   | <span class="cell-info"> SNOMED 247318005     </span>                                                                                                   | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| General deterioration                                                                                                                                                        | <span class="cell-info"> SNOMED 154091000119106 </span>                                                                                                 | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Grade 3 dyspnea (resting) or increased shortness of breath                                                                                                                   | <span class="cell-info"> SNOMED 297216006        </span>                                                                                                | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| Decision after hospital consultation                                                                                                                                         | <span class="cell-info"> SNOMED 182836005    </span>                                                                                                    | Administration, no administration, other                                                                                                                                                                                                             |
| Medication administered (task / not in questionnaire)                                                                                                                        | <span class="cell-info"> SNOMED 18629005  </span>                                                                                                       | SNOMED: 31874001 (true), 64100000 (false)                                                                                                                                                                                                            |
| Dressing change (task / not in questionnaire)                                                                                                                                | <span class="cell-info"> SNOMED 18949003  </span>                                                                                                       | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Replace needleless connector (task / not in questionnaire)                                                                                                                   | <span class="cell-info"> SNOMED 705995006    </span>                                                                                                    | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Replace statlock (task / not in questionnaire)                                                                                                                               | <span class="cell-info"> SNOMED 448439004    </span>                                                                                                    | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Replace gripper needle (task / not in questionnaire)                                                                                                                         | <span class="cell-info">SNOMED 302358004     </span>                                                                                                    | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Remove gripper needle (task / not in questionnaire)                                                                                                                          | <span class="cell-info">SNOMED 233553003     </span>                                                                                                    | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Remove catheter (task / not in questionnaire)                                                                                                                                | <span class="cell-info">SNOMED 103715008     </span>                                                                                                    | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Blood sample taken (task / not in questionnaire)                                                                                                                             | <span class="cell-info">SNOMED 82078001  </span>                                                                                                        | SNOMED OPAT: 31874001 (true), 64100000 (false)                                                                                                                                                                                                       |
| Catheter stabilization type                                                                                                                                                  | <span class="cell-info"> SNOMED 448439004</span>                                                                                                        | SNOMED OPAT: 398013009 (Implantable venous access port), 84756000 (Adhesive tape)                                                                                                                                                                    |
| Was there a reaction during the home observation period?                                                                                                                     | <span class="cell-info">SNOMED 281647001  </span>                                                                                                       | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| > If yes: (one question per possible reaction - ONCO only)                                                                                                                   | <span class="cell-info"> SNOMED 386661006 (fever), 422587007 (nausea), 255365009 (tightness), 43724002 (chill), 95891005 (influenza-like illness) </span> | SNOMED: 373066001 (yes), 373067005 (no)                                                                                                                                                                                                              |
| > If yes (on reaction): specify                                                                                                                                              | <span class="cell-info">SNOMED 62014003   </span>                                                                                                       | Not applicable                                                                                                                                                                                                                                       |
| Any remarks or concerns regarding patient registration, data sharing, communication with hospital, material availability, or other aspects of oncology home hospitalization? | <span class="cell-info">SNOMED 276238005  </span>                                                                                                       | Not applicable                                                                                                                                                                                                                                       |
| *Other: (if applicable) during catheter observation*                                                                                                                         | <span class="cell-info">SNOMED 406148008   </span>                                                                                                      | Not applicable                                                                                                                                                                                                                                       |
| *Other: (if applicable) during contra-indication*                                                                                                                            | <span class="cell-info">SNOMED 438833006   </span>                                                                                                      | Not applicable                                                                                                                                                                                                                                       |

#### Note on parameters with units

Parameters with a unit (such as temperature, weight, etc.) are being exchanged as valueDecimal (so simply a number
without a unit). The unit is in the question (Questionnaire).

This was not noticed until enrolling the POC because the examples from hl7 also include the unit in the questionnaire
and then do not repeat it in the questionnaire response, e.g.
birthWeight [https://hl7.org/fhir/R4/questionnaireresponse-example-bluebook.json.html](https://hl7.org/fhir/R4/questionnaireresponse-example-bluebook.json.html)

It would be reasonable to consider using valueQuantity instead in the future.

#### Note on cathetermapping for OPAT

For OPAT questionnaires, we also want to include the catheter type in a structured manner. This actually consists of two
parts:

1. the type (central venous, tunneled central venous, midline, peripherally inserted central, and peripheral)
2. the number of lumens (single, double, triple).
   However, because we do not want home nurses to perform an unnecessary amount of registration work, we attempted to
   provide a 1-to-1 mapping - being one question about catheter type and one answer - even though no pre-coordinated
   SNOMED concepts exist that take both catheter type and number of lumens into account. This led us to the following
   mapping:

<div class="table-md"></div>

| Catheter Description                        | SNOMED Mapping                                                                                                                     |
|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| Port catheter                               | 52124006 \| Central venous catheter, device (physical object) \|                                                                   |
| Tunneled catheter with 1 lumen              | 445085009 \| Tunneled central venous catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \|       |
| Tunneled catheter with 2 lumens             | 445085009 \| Tunneled central venous catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \|       |
| Tunneled catheter with 3 lumens             | 445085009 \| Tunneled central venous catheter (physical object) \| + 397970004 \| Triple lumen catheter (physical object) \|       |
| Single lumen Midline with Statlock fixation | 1344705000 \| Midline catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \|                      |
| Double lumen Midline with Statlock fixation | 1344705000 \| Midline catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \|                      |
| Single lumen PICC with Statlock fixation    | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \| |
| Single lumen PICC with SecurAcath fixation  | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \| |
| Double lumen PICC with Statlock fixation    | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \| |
| Double lumen PICC with SecurAcath fixation  | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \| |
| Peripheral catheter                         | 423954007 \| Peripheral catheter (physical object) \|                                                                              |

In the background, this segment will look as follows:

```json
{
  "item": [
    {
      "linkId": "263",
      "text": "Type katheter",
      "type": "choice",
      "answerOption": [
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "52124006",
            "display": "Poortkatheter"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "445085009",
            "display": "Getunnelde katheter met 1 lumen",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257279004",
                  "display": "Single lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "445085009",
            "display": "Getunnelde katheter met 2 lumen",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257280001",
                  "display": "Double lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "445085009",
            "display": "Getunnelde katheter met 3 lumen",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "397970004",
                  "display": "Triple lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1344705000",
            "display": "Single lumen Midline met statlock fixatie",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257279004",
                  "display": "Single lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1344705000",
            "display": "Dubbel lumen Midline met statlock fixatie",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257280001",
                  "display": "Double lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "398176008",
            "display": "Single lumen PICK met statlock fixatie",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257279004",
                  "display": "Single lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "398176008",
            "display": "Single lumen PICK met securacath fixatie",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257279004",
                  "display": "Single lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "398176008",
            "display": "Dubbel lumen PICK met statlock fixatie",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257280001",
                  "display": "Double lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "398176008",
            "display": "Dubbel lumen PICK met securacath fixatie",
            "extension": [
              {
                "url": "http://example.org/fhir/StructureDefinition/lumen",
                "valueCoding": {
                  "system": "http://snomed.info/sct",
                  "code": "257280001",
                  "display": "Double lumen catheter"
                }
              }
            ]
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "423954007",
            "display": "Perifere katheter"
          }
        }
      ]
    }
  ]
}
```

for the Questionnaire. The main question is about the catheter type and the amount of lumen can be written as an
extension. In the extension we can use Single, Double or Triple lumen:

* 257279004 |Single lumen catheter (physical object)|
* 257280001 |Double lumen catheter (physical object)|
* 397970004 |Triple lumen catheter (physical object)|
  An example of a QuestionnaireResponse with this kind of question would be

```json
{
  "resourceType": "QuestionnaireResponse",
  "questionnaire": "http://example.org/fhir/Questionnaire/catheter-questionnaire",
  "status": "completed",
  "subject": {
    "reference": "Patient/123"
  },
  "item": [
    {
      "linkId": "catheter-type",
      "answer": [
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "445085009",
            "display": "Tunneled central venous catheter"
          },
          "extension": [
            {
              "url": "http://example.org/fhir/StructureDefinition/lumen",
              "valueCoding": {
                "system": "http://snomed.info/sct",
                "code": "257279004",
                "display": "Single lumen catheter"
              }
            }
          ]
        }
      ]
    }
  ]
}
```
<div class="dragon">

Remark that in the Questionnaire, extensions are nested within valueCoding to define complex options where a single
SNOMED code isn't descriptive enough for machine logic.

In the QuestionnaireResponse, the extension 'promotes' to the answer level (next to the code). This follows the FHIR
principle where the answer object acts as the primary container for all data points - both the primary code and its
supporting metadata - associated with a user's selection.
</div>