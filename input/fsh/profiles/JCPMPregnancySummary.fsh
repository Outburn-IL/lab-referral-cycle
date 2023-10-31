Profile: JCPMPregnancySummary
Parent: ILCoreObservation
Id: jcpm-pregnancy-summary
Title: "JCPM Pregnancy-Summary Profile"
Description: "Proposed constraints and extensions on JCPM Pregnancy-Summary Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-pregnancy-summary"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* code.coding 1..1
  * system 1..
  * system = "http://loinc.org" (exactly)
  * code 1..
  * code = #90767-5 (exactly)
  * display = "Pregnancy summary Document" (exactly)
* subject 1..
* subject only Reference(JCPMPatient)
* focus 1..1
  * type = "condition" (exactly)
  * identifier 1..
    * system 1..
    * value 1..
  * display = "הריון" (exactly)
* effective[x] only Period
* effectivePeriod 0..1
* value[x] ..0
* specimen ..0
* referenceRange ..0
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "code.coding.system"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "code.coding.code"
  * ^slicing.rules = #open
  * ^mustSupport = false
* component contains
    outcome 1..* and
    method-induced-abortion 0..* and
    date-end-pregnancy 0..1 and
    last-menstruation-start 0..* and
    delivery-date 0..1 and
    gestational-age 0..1 and
    diagnostic-procedures 0..* and
    weight-pre-pregnancy 0..1 and
    weight-at-delivery 0..1 and
    pregnancy-induced-hypertension 0..1 and
    gestational-proteinuria 0..1 and
    gestational-diabetes 0..1 and
    type-1-diabetes 0..1 and
    type-2-diabetes 0..1 and
    IgG 0..1 and
    IgM 0..1 and
    hospitalization 0..1 and
    num-of-fetuses 0..1 and
    num-of-current-pregnancy 1..1 and
    num-of-birth 0..1 and
    num-live-births 0..1 and
    num-stillborn-births 0..1
* component[outcome]
  * code
    * coding ^slicing.discriminator[0].type = #value
      * ^slicing.discriminator[=].path = "system"
      * ^slicing.rules = #open
      * ^mustSupport = false
    * coding contains
        loinc 1..1 and
        snomed 1..1
    * coding[loinc]
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #63893-2 (exactly)
      * display = "Outcome of pregnancy" (exactly)
    * coding[snomed]
      * system 1..
      * system = "http://snomed.info/sct" (exactly)
      * code 1..
      * code = #267013003 (exactly)
      * display = "Past pregnancy outcome" (exactly)
    * text = "תוצאות הריון" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from $LL1475-4 (required)
* component[method-induced-abortion]
  * code
    * coding 1..
      * system 1..
      * system = "http://fhir.outburn.co.il/CodeSystem/TBD-Codes" (exactly)
        * ^comment = "Should be Loinc, but no loinc code currently exists. Will be updated if status changes. Kippi 30/1/21"
      * code 1..
      * code = #method-of-induced-abortion (exactly)
      * display = "method of induced abortion" (exactly)
    * text = "שיטת הפלה"
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from MethodOfInducedAbortion (required)
* component[date-end-pregnancy]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #63963-3 (exactly)
      * display = "Date of end of pregnancy" (exactly)
    * text = "תאריך סיום הריון"
  * value[x] 1..
  * value[x] only dateTime
  * valueDateTime 1..1
* component[last-menstruation-start]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #8665-2 (exactly)
      * display = "Last menstrual period start date" (exactly)
    * text = "תאריך תחילת וסת אחרון"
  * value[x] 1..
  * value[x] only dateTime
  * valueDateTime 1..1
* component[delivery-date]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #93857-1 (exactly)
      * display = "Date and time of obstetric delivery" (exactly)
    * text = "תאריך לידה"
  * value[x] 1..
  * value[x] only dateTime
  * valueDateTime 1..1
* component[gestational-age]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #76516-4 (exactly)
      * display = "gestational age at birth" (exactly)
    * text = "שבוע לידה"
  * value[x] 1..
  * value[x] only Quantity
  * valueQuantity 1..1
    * code = #wk (exactly)
    * system = "http://unitsofmeasure.org" (exactly)
    * unit = "wk" (exactly)
* component[diagnostic-procedures]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #LP130361-1 (exactly)
      * display = "Diagnostic procedures performed" (exactly)
    * text = "פרוצדורה אבחנתית שבוצעה"
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from DiagnosticProcedures (extensible)
* component[weight-pre-pregnancy]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #69460-4 (exactly)
      * display = "Body weight pre current pregnancy" (exactly)
    * text = "משקל בתחילת הריון"
  * value[x] only Quantity
  * valueQuantity 0..1
    * value 1..
    * system 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * code 1..
    * code from http://hl7.org/fhir/ValueSet/ucum-bodyweight|4.0.1 (required)
      * ^short = "Coded responses from the common UCUM units for vital signs value set."
      * ^definition = "Coded responses from the common UCUM units for vital signs value set."
      * ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
      * ^binding.extension.valueString = "BodyWeightUnits"
      * ^binding.description = "Common UCUM units for Body Weight."
* component[weight-at-delivery]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #69461-2 (exactly)
      * display = "Body weight at delivery" (exactly)
    * text = "משקל בסיום הריון"
  * value[x] only Quantity
  * valueQuantity 0..1
    * value 1..
    * unit 1..
    * system 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * code 1..
    * code from http://hl7.org/fhir/ValueSet/ucum-bodyweight|4.0.1 (required)
      * ^short = "Coded responses from the common UCUM units for vital signs value set."
      * ^definition = "Coded responses from the common UCUM units for vital signs value set."
      * ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
      * ^binding.extension.valueString = "BodyWeightUnits"
      * ^binding.description = "Common UCUM units for Body Weight."
* component[pregnancy-induced-hypertension]
  * code
    * coding 1..
      * system 1..
      * system = "http://snomed.info/sct" (exactly)
      * code 1..
      * code = #48194001 (exactly)
      * display = "Pregnancy-induced hypertension" (exactly)
    * text = "יתר לחץ דם בהריון"
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from ClinicalFindingsDetectionFlag (required)
* component[gestational-proteinuria]
  * code.coding 1..
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #34165000 (exactly)
    * display = "gestational proteinuria" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from ClinicalFindingsDetectionFlag (required)
* component[gestational-diabetes]
  * code.coding 1..
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #11687002 (exactly)
    * display = "gestational diabetes mellitus" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from ClinicalFindingsDetectionFlag (required)
* component[type-1-diabetes]
  * code.coding 1..
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #609564002 (exactly)
    * display = "Pre-existing type 1 diabetes mellitus in pregnancy" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsPosNeg (required)
* component[type-2-diabetes]
  * code.coding 1..
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #609567009 (exactly)
    * display = "Pre-existing type 2 diabetes mellitus in pregnancy" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsPosNeg (required)
* component[IgG]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #22244-8 (exactly)
    * display = "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsPosNeg (required)
* component[IgM]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #30325-5 (exactly)
    * display = "Cytomegalovirus  IgM Ab [Presence] in Serum or Plasma" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsPosNeg (required)
* component[hospitalization]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #71590-4 (exactly)
    * display = "Hospitalized or emergency room [ESRD]" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from $LL2141-1 (required)
* component[num-of-fetuses]
  * code
    * coding 1..
      * system 1..
      * system = "http://snomed.info/sct" (exactly)
      * code 1..
      * code = #127363001 (exactly)
      * display = "Number of fetuses" (exactly)
    * text = "מס׳ עוברים"
  * value[x] only Quantity
  * valueQuantity 0..1
    * value 1..
    * unit 1..
    * unit = "#"
    * code = ##
    * code 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * system 1..
* component[num-of-current-pregnancy]
  * code
    * coding 1..
      * system 1..
      * system = "http://snomed.info/sct" (exactly)
      * code 1..
      * code = #127363001 (exactly)
      * display = "Number of pregnancies, currently pregnant" (exactly)
    * text = "מספר הריון"
  * value[x] only integer
* component[num-of-birth]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #63894-0 (exactly)
      * display = "Number of birth" (exactly)
    * text = "מספר לידה"
  * value[x] only integer
* component[num-live-births]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #11636-8 (exactly)
      * display = "[#] Births.live" (exactly)
    * text = "ילודים חיים" (exactly)
  * value[x] only Quantity
  * valueQuantity 0..1
    * value 1..
    * unit 1..
    * unit = "#"
    * code = ##
    * code 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * system 1..
* component[num-stillborn-births]
  * code
    * coding 1..
      * system 1..
      * system = "http://loinc.org" (exactly)
      * code 1..
      * code = #57062-2 (exactly)
      * display = "[#] Births.stillborn" (exactly)
    * text = "ילודים מתים" (exactly)
  * value[x] only Quantity
  * valueQuantity 0..1
    * value 1..
    * unit 1..
    * unit = "#"
    * code = ##
    * code 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * system 1..