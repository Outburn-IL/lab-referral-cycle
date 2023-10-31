Profile: LrcReferral
Parent: ILCoreServiceRequest
Id: lrc-referral
Title: "LRC Lab Test Referral"
Description: """הפניה לבדיקת מעבדה, או לפאנל (סוללה) של בדיקות מעבדה.
משאב זה בפני עצמו אינו מהווה טריגר לתחילת הטיפול בהפניה, אלא יטופל רק במסגרת referral group."""
* ^url = "http://outburn.co.il/fhir/oncology/StructureDefinition/lrc-referral"
* ^status = #draft
* identifier 1..
  * system 1..
  * value 1..
* intent = #order (exactly)

* category contains snomed-lab 1..1
* category[snomed-lab]
  * coding ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.rules = #open
    * ^slicing.description = "Slice for SNOMED code for laboratory result"
  * coding contains snomed 1..1
  * coding[snomed]
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #108252007 (exactly)
    * display = "Laboratory procedure" (exactly)
* code from LrcReferralCodes (required)
  * ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet"
  * ^binding.extension.valueCanonical = "http://loinc.org"
  * coding
    * system 1..
    * code 1..
* subject only Reference(ILCorePatient)
* requester 1..