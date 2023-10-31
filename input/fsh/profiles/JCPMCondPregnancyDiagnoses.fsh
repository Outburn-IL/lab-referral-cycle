Profile: JCPMCondPregnancyDiagnoses
Parent: ILCoreCondition
Id: jcpm-cond-pregnancy-diags
Title: "JCPM Condition Pregnancy Diags"
Description: "Pregnancy conditions / problems / diagnoses"
* ^language = #he-IL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-cond-pregnancy-diags"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-01-30"
* ^publisher = "Outburn LTD."
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* . ^short = "JCPM Condition-PregnancyDiagnoses profile"
  * ^definition = "This Profile is based upon the ILCore Condition Resource"
  * ^isModifier = false
* extension 1..
* extension contains $condition-related named cond-rel 1..1
* extension[cond-rel].valueReference 1..1
  * type 1..
  * identifier
    * system 1..
    * value 1..
  * display 1..
* clinicalStatus 1..
  * coding 1..
  * coding from ConditionClinicalStatus (required)
    * system 1..
    * code 1..
* verificationStatus.coding 1..1
* verificationStatus.coding from ConditionVerificationStatus (required)
  * system 1..
  * code 1..
* category ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code.coding.system"
  * ^slicing.rules = #open
  * ^mustSupport = false
* category contains
    encounter-diagnosis 0..1 and
    jcpm-resource-category 0..1
* category[encounter-diagnosis].coding 1..
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/condition-category" (exactly)
  * code 1..
  * code = #problem-list-item (exactly)
* category[jcpm-resource-category].coding 1..
  * system 1..
  * system = "http://fhir.outburn.co.il/CodeSystem/jcpm-resource-category" (exactly)
  * code 1..
  * code from PregnancyDiagnoses (required)
* code from PregnancyDiagnoses (extensible)
  * coding 1..1
    * system 1..
* subject only Reference(JCPMPatient)