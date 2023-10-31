Profile: JCPMCmvMother
Parent: ILCoreObservation
Id: jcpm-obs-cmv-mother
Title: "JCPM Cmv-Mother Profile"
Description: "Proposed constraints and extensions on JCPM Cmv-Mother Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-cmv-mother"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* code.coding 1..1
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * code = #304289003 (exactly)
  * display = "Cytomegalovirus status" (exactly)
* subject 1..
* subject only Reference(JCPMPatient)
* focus 1..1
  * type = "condition" (exactly)
  * identifier 1..
    * system 1..
    * value 1..
  * display = "הריון" (exactly)
* effective[x] 1..
* effective[x] only dateTime
* effectiveDateTime 1..1
* value[x] ..0
* specimen ..0
* referenceRange ..0
* component 1..
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "code.coding.system"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "code.coding.code"
  * ^slicing.rules = #open
  * ^mustSupport = false
* component contains
    avidity 0..1 and
    IgG 0..1 and
    IgM 0..1
* component[avidity]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #78445-4 (exactly)
    * display = "Cytomegalovirus IgG Ab avidity [Presence] in Serum or Plasma by Immunoassay" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from $LL3257-4 (required)
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