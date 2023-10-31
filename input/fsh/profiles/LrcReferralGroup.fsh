Profile: LrcReferralGroup
Parent: ILCoreServiceRequest
Id: lrc-referral-group
Title: "LRC Lab Test Referral Group"
Description: """הפניה מרכזת. להפניה הזו אין קוד בדיקה, אלא היא כוללת קישורים לכל הבדיקות הספציפיות שיש לבצע.
פרופיל זה מהווה טריגר לתחילת הטיפול בתהליך מצד הארגון המבצע."""
* ^url = "http://outburn.co.il/fhir/oncology/StructureDefinition/lrc-referral-group"
* ^status = #draft
* identifier 1..
  * system 1..
  * value 1..
* basedOn 1..
* basedOn only Reference(ILCoreServiceRequest)
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
    * display = "Laboratory procedure"
* priority = #urgent (exactly)
* code
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
    * code = #11502-2 (exactly)
    * display = "Laboratory report" (exactly)
* subject only Reference(ILCorePatient)
* requester 1..