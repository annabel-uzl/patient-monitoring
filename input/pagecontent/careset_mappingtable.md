<div class="stu-note">
This FHIR implementation content is currently under development and may be subject to significant changes. Use this information with caution, as it may not yet reflect finalized or fully validated guidance. Always verify details before relying on them for production use.
</div>

**DRAFT: 2026-03-18**

### Mappingtables

There is a lot of overlap between the different caresets but also between the caresets and carepaths. We try to align as much as possible and note here the mappings used in the caresets with connection to the carepaths.

#### General mappings

If there is a distinction between OPAT and ONCO (Antitumoral therapy) this is noted in the table. It might be that in the future we can align these caresets even more.

| Description | Code(s) | Possible Answers |
|-------------|---------|----------------|
| Are there any remarks or concerns regarding the (correct) home storage of medication? | SNOMED 422413002 | SNOMED: 710977001 (safe storage / medication correctly stored), 424363005 (improper storage / concern about correct home storage) |
| Medication fully dissolved into a clear solution without visible particles | SNOMED 396076000 | SNOMED: 31874001 (true), 64100000 (false) |
| Weight after disconnecting empty infusion device | SNOMED 1381260006 | Not applicable |
| Weight of full infusion device just before new administration | SNOMED 1381257004 | Not applicable |
| Additional observation (if applicable) (during medication preparation) | SNOMED 396078004 | Not applicable |
| Could the medication be prepared according to procedure? | SNOMED 385796006 | SNOMED: 373066001 (yes), 373067005 (no) |
| Could the medication be administered exactly according to procedure (no deviations)? | SNOMED 373149000 | SNOMED: 373066001 (yes), 373067005 (no) |
| Body temperature | LOINC 8310-5 | Not applicable |
| Pulse | SNOMED 364075005 | Not applicable |
| Blood pressure (systolic mmHg) | LOINC 8480-6 | Not applicable |
| Blood pressure (diastolic mmHg) | LOINC 8462-4 | Not applicable |
| Oxygen saturation (%) | LOINC 2708-6 | Not applicable |
| Body weight | LOINC 29463-7 | Not applicable |
| Pre-medication correctly taken (dexamethasone, H1-antihistamine, paracetamol before administration) | SNOMED 182833002 | SNOMED ONCO: 31874001 (true), 64100000 (false) |
| Observation of insertion site dressing | SNOMED 364554009 | SNOMED OPAT: 17621005 (Normal), 263654008 (Abnormal) |
| Bloody | SNOMED 297968009 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Purulent | SNOMED 225550006 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Loose | SNOMED 78799005 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Serous | SNOMED 447112000 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Moist | SNOMED 17461003 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Other observation problems with dressing | SNOMED 1481000124102 | Not applicable |
| Observation insertion site | SNOMED 386141001 | SNOMED OPAT: 17621005 (Normal), 263654008 (Abnormal) |
| Blistering | SNOMED 339008 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Red | SNOMED 371240000 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Hematoma | SNOMED 35566002 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Pus | SNOMED 367646009 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Crust formation | SNOMED 69640009 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Swelling | SNOMED 65124004 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Extravasation/Infiltration | SNOMED 76676007 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Damaged catheter | SNOMED 1156074004 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Other observation problems at insertion site | SNOMED 364554009 | Not applicable |
| Observation catheter | SNOMED 1156071007 | SNOMED OPAT: 17621005 (Normal), 263654008 (Abnormal) |
| Catheter type | SNOMED 246138005 | SNOMED OPAT: 52124006 (central venous), 445085009 (tunneled central venous), 1344705000 (midline), 398176008 (peripherally inserted central), 423954007 (peripheral) <br>Extension lumen: 257279004 (single), 257280001 (double), 397970004 (triple) |
| Blood aspiration | SNOMED 25797006 | SNOMED OPAT: 36203004 (easy), 52925006 (difficult), 385671000 (unsuccessful) |
| Infusion | SNOMED 36576007 | SNOMED OPAT: 36203004 (easy), 52925006 (difficult), 385671000 (unsuccessful) |
| Skin rash | SNOMED 271807003 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Itching | SNOMED 418290006 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Blisters / skin peeling | SNOMED 271767006 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Nausea | SNOMED 422587007 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Vomiting | SNOMED 249497008 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Diarrhea | SNOMED 62315008 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Constipation | SNOMED 14760008 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Decreased appetite / taste change | SNOMED 64379006 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Pain during administration | SNOMED 698749006 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Localized pain | SNOMED 112104007 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Fatigue / tiredness | SNOMED 224960004 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Psychosocial burden | SNOMED 384821006 | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Chills | SNOMED 43724002 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Candidiasis (fungal infection) | SNOMED 78048006 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Joint pain | SNOMED 57676002 | SNOMED: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Respiratory problems / shortness of breath | SNOMED 267036007 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) <br>SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Facial / tongue swelling | SNOMED 278528006 | SNOMED OPAT: 2667000 (Absent), 255604002 (Mild), 6736007 (Moderate), 24484000 (Severe) |
| Cough | SNOMED 49727002 | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Muscle and joint pain | SNOMED 57676002 | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Motor neuropathy | SNOMED 95663000 | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Edema | SNOMED 79654002 | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Tingling or numbness in fingers or toes | SNOMED 91019004 | SNOMED ONCO: 444431007 (Grade 0), 444456001 (Grade 1), 444457005 (Grade 2), 444447009 (Grade 3) |
| Any other symptom burden or relevant clinical/psychosocial observations? (contact hospital care team if clinically concerned) | SNOMED 365275006 | Not applicable |
| Any contraindications for administration? | SNOMED 395008009 | SNOMED: 373066001 (yes), 373067005 (no) |
| Fever, chills, feeling unwell | SNOMED 39104002 | SNOMED: 373066001 (yes), 373067005 (no) |
| Pre-medication not taken | SNOMED 371900001 | SNOMED: 373066001 (yes), 373067005 (no) |
| Blood pressure on repetition below 100/60 mmHg | SNOMED 12763006 | SNOMED: 373066001 (yes), 373067005 (no) |
| Heart rate above 100 bpm at rest or irregular heartbeat unless known chronic | SNOMED 361137007 | SNOMED: 373066001 (yes), 373067005 (no) |
| Severe sensory neuropathy | SNOMED 95662005 | SNOMED: 373066001 (yes), 373067005 (no) |
| Severe motor neuropathy | SNOMED 299737009 | SNOMED: 373066001 (yes), 373067005 (no) |
| Weight increase of 3 kg/3 weeks or 5 kg/6 weeks, especially with increased edema | SNOMED 262286000 | SNOMED: 373066001 (yes), 373067005 (no) |
| Increased edema in hands and/or feet | SNOMED 267038008 | SNOMED: 373066001 (yes), 373067005 (no) |
| New or increased productive/dry cough, with/without dyspnea | SNOMED 11833005 | SNOMED: 373066001 (yes), 373067005 (no) |
| Severe nausea (insufficient oral intake) | SNOMED 73335002 | SNOMED: 373066001 (yes), 373067005 (no) |
| No oral intake (due to decreased appetite or taste change) | SNOMED 247318005 | SNOMED: 373066001 (yes), 373067005 (no) |
| General deterioration | SNOMED 154091000119106 | SNOMED: 373066001 (yes), 373067005 (no) |
| Grade 3 dyspnea (resting) or increased shortness of breath | SNOMED 297216006 | SNOMED: 373066001 (yes), 373067005 (no) |
| Decision after hospital consultation | SNOMED 182836005 | Administration, no administration, other |
| Medication administered | SNOMED 18629005 | SNOMED: 31874001 (true), 64100000 (false) |
| Dressing change (task / not in questionnaire) | SNOMED 18949003 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Replace needleless connector (task / not in questionnaire) | SNOMED 705995006 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Replace statlock (task / not in questionnaire) | SNOMED 448439004 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Replace gripper needle (task / not in questionnaire) | SNOMED 302358004 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Remove gripper needle (task / not in questionnaire) | SNOMED 233553003 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Remove catheter (task / not in questionnaire) | SNOMED 103715008 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Blood sample taken (task / not in questionnaire) | SNOMED 82078001 | SNOMED OPAT: 31874001 (true), 64100000 (false) |
| Catheter type | SNOMED 246138005 | SNOMED OPAT: 52124006 (Central venous), 445085009 (Tunneled central venous), 1344705000 (Midline), 398176008 (Peripherally inserted central) |
| Catheter stabilization type | SNOMED 448439004 | SNOMED OPAT: 398013009 (Implantable venous access port), 84756000 (Adhesive tape) |
| Was there a reaction during the home observation period? | SNOMED 281647001 | SNOMED: 373066001 (yes), 373067005 (no) |
| > If yes: (one question per possible reaction – ONCO only) |  | 386661006 (fever), 422587007 (nausea), 255365009 (tightness), 43724002 (chill), 95891005 (influenza-like illness) |
| > If yes (on reaction): specify | SNOMED 62014003 | Not applicable |
| Any remarks or concerns regarding patient registration, data sharing, communication with hospital, material availability, or other aspects of oncology home hospitalization? | SNOMED 276238005 | Not applicable |
| *Other: (if applicable) during catheter observation* | SNOMED 406148008 | Not applicable |
| *Other: (if applicable) during contraindication* | SNOMED 438833006 | Not applicable |


#### Note on parameters with units

Parameters with a unit (such as temperature, weight, etc.) are atm being exchanged as valueDecimal (so simply a number without a unit). The unit is in the question (Questionnaire), but it is actually logical that it is also in the answer (QuestionnaireResponse). So that, for example, you get “weight: 56kg” instead of “weight:56”.

This was not noticed until enrolling the POC because the examples from hl7 also include the unit in the questionnaire and then do not repeat it in the questionnaire response, e.g. birthWeight https://hl7.org/fhir/R4/questionnaireresponse-example-bluebook.json.html

Specifically, the answers to parameter queries with units would then become valueQuantity instead of valueDecimal, and the answer to the question would take a form similar to the following:
```json
{
"value" : <decimal>, // Numerical value (with implicit precision)
"code" : "<code>" // Coded form of the unit
}
```

The code is already in the questionnaire and the value is already in valueDecimal.

However, due to the rollout of the initial POC, this would be a rather late change that has a significant impact on the structure and offers no huge added value (since the unit is also present in the Questionnaire). Therefore, and due to time constraints, we decided not to implement this as such at the moment and retained the units in the questionnaire and the use of valueDecimal in the QuestionnaireResponse.

This should be looked at in the future.


#### Note on cathetermapping for OPAT
For OPAT questionnaires, we also want to include the catheter type in a structured manner. This actually consists of two parts:
1. the type (central venous, tunneled central venous, midline, peripherally inserted central, and peripheral)
2. the number of lumens (single, double, triple).
   However, because we do not want home nurses to perform an unnecessary amount of registration work, we attempted to provide a 1-to-1 mapping—being one question about catheter type and one answer—even though no pre-coordinated SNOMED concepts exist that take both catheter type and number of lumens into account. This led us to the following mapping:

| Catheter Description | SNOMED Mapping |
|---------------------|----------------|
| Port catheter | 52124006 \| Central venous catheter, device (physical object) \| |
| Tunneled catheter with 1 lumen | 445085009 \| Tunneled central venous catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \| |
| Tunneled catheter with 2 lumens | 445085009 \| Tunneled central venous catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \| |
| Tunneled catheter with 3 lumens | 445085009 \| Tunneled central venous catheter (physical object) \| + 397970004 \| Triple lumen catheter (physical object) \| |
| Single lumen Midline with Statlock fixation | 1344705000 \| Midline catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \| |
| Double lumen Midline with Statlock fixation | 1344705000 \| Midline catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \| |
| Single lumen PICC with Statlock fixation | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \| |
| Single lumen PICC with SecurAcath fixation | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257279004 \| Single lumen catheter (physical object) \| |
| Double lumen PICC with Statlock fixation | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \| |
| Double lumen PICC with SecurAcath fixation | 398176008 \| Peripherally inserted central catheter (physical object) \| + 257280001 \| Double lumen catheter (physical object) \| |
| Peripheral catheter | 423954007 \| Peripheral catheter (physical object) \| |

In the background, this segment will look as follows:
```json
{
  "item": [
    {
      "linkId": "catheter-type",
      "text": "Select catheter type",
      "type": "choice",
      "code": [
        {
          "system": "http://snomed.info/sct",
          "code": "246138005",
          "display": "Type of catheter (attribute)"
        }
      ],
      "answerOption": [
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "52124006",
            "display": "Central venous catheter"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "445085009",
            "display": "Tunneled central venous catheter"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1344705000",
            "display": "Midline catheter"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "398176008",
            "display": "Peripherally inserted central catheter"
          }
        },
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "423954007",
            "display": "Peripheral catheter"
          }
        }
      ]
    }
  ]
}
```
for the Questionnaire. The main question is about the catheter type and the amount of lumen can be written as an extension. In the extension we can use Single, Double or Triple lumen:
* 257279004 |Single lumen catheter (physical object)|
* 257280001 |Double lumen catheter (physical object)|
* 397970004 |Triple lumen catheter (physical object)|
  The example of Questionnaire above and QuestionnaireResponse below is just for reference but in practice only one catheter type and one lumen type is possible.
  For QuestionnaireResponse this looks like
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
    },
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
                "code": "257280001",
                "display": "Double lumen catheter"
              }
            }
          ]
        }
      ]
    },
    {
      "linkId": "catheter-type",
      "answer": [
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "1344705000",
            "display": "Midline catheter"
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
    },
    {
      "linkId": "catheter-type",
      "answer": [
        {
          "valueCoding": {
            "system": "http://snomed.info/sct",
            "code": "398176008",
            "display": "Peripherally inserted central catheter"
          },
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
      ]
    }
  ]
}
```
