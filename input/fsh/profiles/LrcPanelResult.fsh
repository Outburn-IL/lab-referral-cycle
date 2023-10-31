Profile: LrcPanelResult
Parent: ILCoreObservation
Id: lrc-panel-result
Title: "LRC Panel Lab Test Result"
Description: """פאנל תוצאות, עבור מקרים בהם ServiceRequest אחד כולל בתוכו קוד אשר מייצג קבוצת בדיקות (פאנל\סוללה).
פרופיל זה אינו כולל את התוצאות עצמן אלא מצביע עליהן."""
* ^url = "http://outburn.co.il/fhir/oncology/StructureDefinition/lrc-panel-lab-test-result"
* ^status = #draft
* identifier 1..
  * system 1..
  * value 1..
* basedOn ..1
* basedOn only Reference(LrcReferral)
  * reference 1..
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
* code
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "$this"
    * ^slicing.rules = #open
    * ^slicing.description = "Loinc Lab report"
    * ^slicing.ordered = false
  * coding contains loinc-lab 1..1
  * coding[loinc-lab] from LrcOncoPanelResultCodes (required)
    * system 1..
    * code 1..
* subject 1..
* subject only Reference(ILCorePatient)
* performer 1..
* value[x] only Quantity
* valueQuantity only Quantity
  * system = "http://unitsofmeasure.org"