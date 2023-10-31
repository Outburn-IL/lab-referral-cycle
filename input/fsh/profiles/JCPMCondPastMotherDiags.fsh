Profile: JCPMCondPastMotherDiags
Parent: ILCoreCondition
Id: jcpm-past-mother-diags
Title: "JCPM Past Mother Diags"
Description: "Mother's past conditions / problems / diagnoses"
* ^language = #he-IL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-cond-past-mother-diags"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-01-30"
* ^publisher = "Outburn LTD."
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* . ^short = "JCPM Condition-PastMotherDiags profile"
  * ^definition = "This Profile is based upon the ILCore Condition Resource"
  * ^isModifier = false
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
    condition-category 0..1 and
    jcpm-resource-category 0..1
* category[condition-category].coding 1..
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/condition-category" (exactly)
  * code 1..
  * code = #problem-list-item (exactly)
  * display = "Problem List Item" (exactly)
* category[jcpm-resource-category].coding 1..
  * system 1..
  * system = "http://fhir.outburn.co.il/CodeSystem/jcpm-resource-category" (exactly)
  * code 1..
  * code from $jcpm-past-mother-diagnoses (required)
* code from $jcpm-past-mother-diagnoses (extensible)
  * coding 1..1
    * system 1..
* subject only Reference(ILCorePatient)