Profile: LrcResult
Parent: ILCoreObservation
Id: lrc-result
Title: "LRC Test Result"
Description: "LRC Test Result"
* ^url = "http://outburn.co.il/fhir/oncology/StructureDefinition/lrc-onco-result"
* ^status = #draft
* identifier 1..
  * system 1..
  * value 1..
* basedOn ..1
* basedOn only Reference(LrcReferral)
* category ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[=].path = "coding"
  * ^slicing.rules = #open
  * ^slicing.description = "Slice for hl7 category codes"
* category contains hl7-lab 1..1
* category[hl7-lab]
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.rules = #open
    * ^slicing.description = "Slice for hl7 code for laboratory result"
  * coding contains hl7 1..1
  * coding[hl7]
    * system 1..
    * system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
    * code 1..
    * code = #laboratory (exactly)
    * display = "Laboratory"
* code from LrcResultCodes (extensible)
  * ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
  * ^binding.extension.valueCanonical = "http://loinc.org"
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "$this"
    * ^slicing.rules = #open
    * ^slicing.description = "Loinc Lab report"
    * ^slicing.ordered = false
  * coding contains loinc-lab 1..1
  * coding[loinc-lab]
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
* subject only Reference(ILCorePatient)
  * reference 1..
* performer 1..
* valueQuantity only Quantity
  * system 1..
* referenceRange
  * low 1..
  * low from $ucum-common (required)
    * system = "http://unitsofmeasure.org"
  * high 1..
  * high from $ucum-common (required)
    * system = "http://unitsofmeasure.org"
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Textual or Nominal"
  * ^slicing.ordered = false
* component contains
    textual 0..1 and
    nominal 0..1
* component[textual]
  * code.coding 1..
    * system = "http://snomed.info/sct" (exactly)
    * code = #117444000 (exactly)
    * display = "Text value"
  * value[x] 1..
  * value[x] only string
  * valueString 1..1
  * valueString only string
    * ^sliceName = "valueString"
* component[nominal]
  * code.coding 1..
    * system = "http://snomed.info/sct" (exactly)
    * code = #117362005 (exactly)
    * display = "Nominal value"
  * value[x] only CodeableConcept
  * valueCodeableConcept only CodeableConcept
    * coding 1..