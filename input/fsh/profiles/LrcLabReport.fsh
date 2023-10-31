Profile: LrcLabReport
Parent: ILCoreDiagnosticReport
Id: lrc-lab-report
Title: "Lrc Lab Test Report"
Description: "דוח מסכם עבור תוצאות הפניה מרכזת."
* ^url = "http://outburn.co.il/fhir/oncology/StructureDefinition/lrc-lab-report"
* ^status = #draft
* extension contains DiagnosticReportNote named note 0..1
* identifier 1..
  * system 1..
  * value 1..
* basedOn ..1
* basedOn only Reference(LrcReferralGroup)
  * reference 1..
* category ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^slicing.description = "Slice for hl7 category code"
* category contains hl7-lab 1..1
* category[hl7-lab] = $v2-0074#LAB
* code
  * coding ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
    * ^slicing.description = "Loinc Lab report code"
    * ^slicing.ordered = false
  * coding contains loinc-lab 1..1
  * coding[loinc-lab].code = $loinc#11502-2
* subject 1..
* subject only Reference(ILCorePatient)
* performer 1..
* result 1..