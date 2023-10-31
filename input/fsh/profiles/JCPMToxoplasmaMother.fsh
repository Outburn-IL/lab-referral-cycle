Profile: JCPMToxoplasmaMother
Parent: ILCoreObservation
Id: jcpm-obs-toxoplasma-mother
Title: "JCPM Toxoplasma-Mother Profile"
Description: "Proposed constraints and extensions on JCPM Toxoplasma-Mother Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-toxoplasma-mother"
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
  * code = #22577-1 (exactly)
  * display = "Toxoplasma gondii Ab [Presence] in Serum" (exactly)
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
    IgG 0..1 and
    IgM 0..1
* component[IgG]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #22580-5 (exactly)
    * display = "Toxoplasma gondii IgG Ab [Presence] in Serum" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsPosNeg (required)
* component[IgM]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #25542-2 (exactly)
    * display = "Toxoplasma gondii IgM Ab [Presence] in Serum" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsPosNeg (required)