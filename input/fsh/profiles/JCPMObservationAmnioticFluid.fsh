Profile: JCPMObservationAmnioticFluid
Parent: ILCoreObservation
Id: jcpm-obs-amniotic-fluid
Title: "JCPM Observation Amniotic Fluid Profile"
Description: "Proposed constraints and extensions on JCPM Observation Amniotic Fluid Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-amniotic-fluid"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* code.coding 1..
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * code = #249129009 (exactly)
  * display = "Condition of amniotic fluid" (exactly)
* subject 1..
* subject only Reference(JCPMPatient)
* focus 1..1
  * type = "condition" (exactly)
  * identifier 1..
    * system 1..
    * value 1..
  * display = "הריון" (exactly)
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "code.coding.system"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "code.coding.code"
  * ^slicing.rules = #open
  * ^mustSupport = false
* component contains
    fluid-index-sum 1..1 and
    space-diameter 1..1 and
    AFI 1..1
* component[fluid-index-sum]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #11627-7 (exactly)
    * display = "Fetal Amniotic fluid index.sum derived by US" (exactly)
  * value[x] 1..
  * value[x] only Quantity
  * valueQuantity 1..1
    * value 1..
    * unit 1..
    * unit = "cm"
    * code = #cm (exactly)
    * code 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * system 1..
* component[space-diameter]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #11817-4 (exactly)
    * display = "Fetal Amniotic fluid space Diameter largest pocket US" (exactly)
  * value[x] 1..
  * value[x] only Quantity
  * valueQuantity 1..1
    * value 1..
    * unit 1..
    * unit = "cm"
    * code = #cm (exactly)
    * code 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * system 1..
* component[AFI]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #12167-3 (exactly)
    * display = "Fetal Amniotic fluid space [Interpretation] Volume.amniotic fluid US" (exactly)
  * value[x] 1..
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1
  * valueCodeableConcept from AmnioticFluidIndex (required)
    * coding
      * system 1..
      * system = "http://snomed.info/sct" (exactly)
      * code 1..