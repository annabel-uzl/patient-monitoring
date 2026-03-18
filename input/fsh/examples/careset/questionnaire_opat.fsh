Alias: $sct = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $loinc = http://loinc.org

Instance: OPATContinuInfuusV1
InstanceOf: Questionnaire
Usage: #example
* title = "OPAT - continu infuus"
* status = #active
* item[0].linkId = "Verpleegkundigassessment"
* item[=].text = "Verpleegkundig assessment"
* item[=].type = #group
* item[=].item[0].linkId = "Bewaring"
* item[=].item[=].text = "Bewaring"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "87Zijneropmerkingenofbezorgdhedenomtrentdecorrectethuisbewaringvandemedicatie"
* item[=].item[=].item[=].text = "Zijn er opmerkingen of bezorgdheden omtrent de (correcte) thuisbewaring van de medicatie?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#422413002 "Ability to store medications (observable entity)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#710977001 "Safe storage of medication"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#424363005 "Improper storage of medication"
* item[=].item[=].item[+].linkId = "45Indienopmerkingenofbezorgdheidspecifieer"
* item[=].item[=].item[=].text = "> Indien opmerkingen of bezorgdheid: specifieer"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen.question = "87Zijneropmerkingenofbezorgdhedenomtrentdecorrectethuisbewaringvandemedicatie"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#424363005 "Improper storage of medication"
* item[=].item[+].linkId = "Voorbereidingmedicatietoediening"
* item[=].item[=].text = "Voorbereiding medicatietoediening"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "52Demedicatiewerdvolledigopgelosttoteenheldereoplossingzonderzichtbaredeeltjes"
* item[=].item[=].item[=].text = "De medicatie werd volledig opgelost tot een heldere oplossing zonder zichtbare deeltjes"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#396076000 "Medication prefill preparation assessment (procedure)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "31Indienneegelievecontactoptenemenmethetzorgteaminhetziekenhuis"
* item[=].item[=].item[=].text = "> Indien nee: gelieve contact op te nemen met het zorgteam in het ziekenhuis"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "52Demedicatiewerdvolledigopgelosttoteenheldereoplossingzonderzichtbaredeeltjes"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "24GewichtvanvolleInfusornetvoornieuwetoediening"
* item[=].item[=].item[=].text = "Gewicht van volle Infusor net voor nieuwe toediening"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#1381257004 "Measured weight of elastomeric continuous infusion pump with medication before infusion (observable entity)"
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#g "g"
* item[=].item[=].item[=].extension[+].url = "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext"
* item[=].item[=].item[=].extension[=].valueString = "Enkel in te vullen indien continu infuus"
* item[=].item[=].item[+].linkId = "79Gewichtbijafkoppelenvanlegeinfusor"
* item[=].item[=].item[=].text = "Gewicht bij afkoppelen van lege infusor"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#1381260006 "Measured weight of elastomeric continuous infusion pump after infusion (observable entity)"
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension[=].valueCoding = $unitsofmeasure#g "g"
* item[=].item[=].item[=].extension[+].url = "http://fhir.wgk.com/StructureDefinition/wgk-ext-helptext"
* item[=].item[=].item[=].extension[=].valueString = "Enkel in te vullen indien continu infuus"
* item[=].item[=].item[+].linkId = "87Bijkomendeobservatieindienvantoepassing"
* item[=].item[=].item[=].text = "Bijkomende observatie:(indien van toepassing)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#396078004 "Medication prefill preparation management (procedure)"
* item[=].item[+].linkId = "Medicatietoediening"
* item[=].item[=].text = "Medicatietoediening"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "13Kondemedicatieexactvolgensdeprocedurewordentoegedienderwarengeenafwijkingen"
* item[=].item[=].item[=].text = "Kon de medicatie exact volgens de procedure worden toegediend  (er waren geen afwijkingen)?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#373149000 "Medication administered following procedure (situation)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "95Indienneenspecifieer"
* item[=].item[=].item[=].text = "> Indien neen: specifieer"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].enableWhen.question = "13Kondemedicatieexactvolgensdeprocedurewordentoegedienderwarengeenafwijkingen"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[+].linkId = "Vitaleparameters"
* item[=].item[=].text = "Vitale parameters"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "98Lichaamstemperatuur"
* item[=].item[=].item[=].text = "Lichaamstemperatuur:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $loinc#8310-5 "Body temperature"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#Cel "°C"
* item[=].item[=].item[+].linkId = "2Pols"
* item[=].item[=].item[=].text = "Pols:"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].code = $sct#364075005 "Heart rate (observable entity)"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#{beats}/min "bpm"
* item[=].item[=].item[+].linkId = "70Bloeddruksystolisch"
* item[=].item[=].item[=].text = "Bloeddruk - systolisch"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].code = $loinc#8480-6 "Systolic blood pressure"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mmHg"
* item[=].item[=].item[+].linkId = "19Bloeddrukdiastolisch"
* item[=].item[=].item[=].text = "Bloeddruk - diastolisch"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].code = $loinc#8462-4 "Diastolic blood pressure"
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = $unitsofmeasure#mm[Hg] "mmHg"
* item[=].item[+].linkId = "Observatieverbandinsteekplaats"
* item[=].item[=].text = "Observatie verband insteekplaats"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "23Observatieverbandinsteekplaats"
* item[=].item[=].item[=].text = "Observatie verband insteekplaats"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#364554009 "Wound observable (observable entity)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#17621005 "Normal (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#263654008 "Abnormal (qualifier value)"
* item[=].item[=].item[+].linkId = "77Indienafwijkendspecifieer"
* item[=].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "23Observatieverbandinsteekplaats"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal (qualifier value)"
* item[=].item[=].item[+].linkId = "18Bloederig"
* item[=].item[=].item[=].text = "Bloederig"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#297968009 "Bleeding skin (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "46Etterig"
* item[=].item[=].item[=].text = "Etterig"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#225550006 "Purulent discharge from wound (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "88Los"
* item[=].item[=].item[=].text = "Los"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#78799005 "Loose (qualifier value)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "48Sereus"
* item[=].item[=].item[=].text = "Sereus"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#447112000 "Serous discharge from wound (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "99Vochtig"
* item[=].item[=].item[=].text = "Vochtig"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#17461003 "Wet (qualifier value)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "48Andereindienvantoepassing"
* item[=].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#1481000124102 "Wound dressing observable (observable entity)"
* item[=].item[+].linkId = "Observatieinsteekplaats"
* item[=].item[=].text = "Observatie insteekplaats"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "1Observatieinsteekplaats"
* item[=].item[=].item[=].text = "Observatie insteekplaats"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#386141001 "Insertion site (morphologic abnormality)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#17621005 "Normal (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#263654008 "Abnormal (qualifier value)"
* item[=].item[=].item[+].linkId = "67Indienafwijkendspecifieer"
* item[=].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "1Observatieinsteekplaats"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal (qualifier value)"
* item[=].item[=].item[+].linkId = "32Blaarvorming"
* item[=].item[=].item[=].text = "Blaarvorming"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#339008 "Blister (morphologic abnormality)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "45Rood"
* item[=].item[=].item[=].text = "Rood"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#371240000 "Red color (qualifier value)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "100Haematoom"
* item[=].item[=].item[=].text = "Haematoom"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#35566002 "Hematoma (morphologic abnormality)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "2Etter"
* item[=].item[=].item[=].text = "Etter"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#367646009 "Pus (morphologic abnormality)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "58Korstvorming"
* item[=].item[=].item[=].text = "Korstvorming"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#69640009 "Crust (morphologic abnormality)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "15Zwelling"
* item[=].item[=].item[=].text = "Zwelling"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#65124004 "Swelling (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "95Extravasatieinfiltratie"
* item[=].item[=].item[=].text = "Extravasatie/infiltratie"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#76676007 "Extravasation (morphologic abnormality)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "45Andereindienvantoepassing"
* item[=].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#364554009 "Wound observable (observable entity)"
* item[=].item[+].linkId = "Observatiekatheter"
* item[=].item[=].text = "Observatie katheter"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "97Observatiekatheter"
* item[=].item[=].item[=].text = "Observatie katheter"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].code = $sct#1156071007 "Catheter observable (observable entity)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#17621005 "Normal (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#263654008 "Abnormal (qualifier value)"
* item[=].item[=].item[+].linkId = "45Indienafwijkendspecifieer"
* item[=].item[=].item[=].text = "> Indien 'afwijkend': specifieer"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[=].enableWhen.question = "97Observatiekatheter"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $sct#263654008 "Abnormal (qualifier value)"
* item[=].item[=].item[+].linkId = "catheter-type"
* item[=].item[=].item[=].text = "Kies kathetertype"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#246138005 "Type of catheter (attribute)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#52124006 "Central venous catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#445085009 "Tunneled central venous catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#1344705000 "Midline catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#398176008 "Peripherally inserted central catheter"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#423954007 "Peripheral catheter"
* item[=].item[=].item[+].linkId = "59Bloedaspiratie"
* item[=].item[=].item[=].text = "Bloedaspiratie"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#25797006 "Pulmonary aspiration of blood (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#36203004 "Easy"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#52925006 "Difficult"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#385671000 "Unsuccessful"
* item[=].item[=].item[+].linkId = "10Infusie"
* item[=].item[=].item[=].text = "Infusie"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#36576007 "Infusion (procedure)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#36203004 "Easy"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#52925006 "Difficult"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#385671000 "Unsuccessful"
* item[=].item[=].item[+].linkId = "55Beschadigdekatheter"
* item[=].item[=].item[=].text = "Beschadigde katheter"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#1156074004 "Device failure (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#373066001 "Yes (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No (qualifier value)"
* item[=].item[=].item[+].linkId = "62Andereindienvantoepassing"
* item[=].item[=].item[=].text = "Andere: (indien van toepassing)"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "Nevenwerkingen"
* item[=].item[=].text = "Nevenwerkingen"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "36Huiduitslag"
* item[=].item[=].item[=].text = "Huiduitslag"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#271807003 "Eruption of skin (disorder)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "99Jeuk"
* item[=].item[=].item[=].text = "Jeuk"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#418290006 "Itching (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "11Blarenloslatenvandehuid"
* item[=].item[=].item[=].text = "Blaren/loslaten van de huid"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#271767006 "Peeling of skin (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "20Misselijkheid"
* item[=].item[=].item[=].text = "Misselijkheid"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#422587007 "Nausea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "37Braken"
* item[=].item[=].item[=].text = "Braken"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#249497008 "Vomiting symptom (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "37Diarree"
* item[=].item[=].item[=].text = "Diarree"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#62315008 "Diarrhea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "18Obstipatie"
* item[=].item[=].item[=].text = "Obstipatie"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#14760008 "Constipation (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "68Verminderdeeetlust"
* item[=].item[=].item[=].text = "Verminderde eetlust"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#64379006 "Decrease in appetite (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "74Pijnbijtoediening"
* item[=].item[=].item[=].text = "Pijn bij toediening"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#698749006 "Pain on flushing of implanted venous access device (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "41Pijnalgemeen"
* item[=].item[=].item[=].text = "Pijn (algemeen)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code =  $sct#"112104007 "Localized pain (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "57Moe"
* item[=].item[=].item[=].text = "Moe"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#224960004 "Tired (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "24Rillingen"
* item[=].item[=].item[=].text = "Rillingen"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#43724002 "Chill (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "1Candidiaseschimmelinfectie"
* item[=].item[=].item[=].text = "Candidiase (schimmelinfectie)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#78048006 "Candidiasis (disorder)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "48Gewrichtspijn"
* item[=].item[=].item[=].text = "Gewrichtspijn"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#57676002 "Pain of joint (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "80Ademhalingsproblemen"
* item[=].item[=].item[=].text = "Ademhalingsproblemen"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#267036007 "Dyspnea (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "79Zwellinggezichttong"
* item[=].item[=].item[=].text = "Zwelling gezicht/tong"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].code = $sct#278528006 "Facial swelling (finding)"
* item[=].item[=].item[=].answerOption[0].valueCoding = $sct#2667000 "Absent (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#255604002 "Mild (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#6736007 "Moderate (qualifier value)"
* item[=].item[=].item[=].answerOption[+].valueCoding = $sct#24484000 "Severe (qualifier value)"
* item[=].item[=].item[+].linkId = "77Iseranderesymptoomlastofzijnerandererelevanteklinischeenofpsychosocialeobservaties\ngelievebijklinischebezorgdheidcontacttenemenmethetzorgteaminhetziekenhuis"
* item[=].item[=].item[=].text = "Is er andere symptoomlast of zijn er andere relevante klinische en/of psychosociale observaties? \n(gelieve bij klinische bezorgdheid contact te nemen met het zorgteam in het ziekenhuis)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].code = $sct#365275006 "General well-being finding (finding)"
* item[+].linkId = "Kwaliteitsopvolging"
* item[=].text = "(Kwaliteits)opvolging"
* item[=].type = #group
* item[=].item.linkId = "54ZijneropmerkingenofbezorgdhedenomtrentdeaanmeldingvandezepatintdegegevensdelingvanuithetziekenhuisdecommunicatiedoorenhetcontactmethetziekenhuisdebeschikbaarheidvandemedicatieenmaterialenofandereaspectenvandetransmuralesamenwerkingrondthuishospitalisatieOPATwevragenjegraagzemetonstedelenAlvastdank"
* item[=].item.text = "Zijn er opmerkingen of bezorgdheden omtrent de aanmelding van deze patient, de gegevensdeling vanuit het ziekenhuis, de communicatie door en het contact met het ziekenhuis, de beschikbaarheid van de medicatie en materialen, of andere aspecten van de transmurale samenwerking rond thuishospitalisatie OPAT, we vragen je graag ze met ons te delen. Alvast dank."
* item[=].item.type = #string
* item[=].item.code = $sct#276238005 "Comments on own writing (finding)"