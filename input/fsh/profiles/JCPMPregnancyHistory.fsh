Profile: JCPMPregnancyHistory
Parent: ILCoreObservation
Id: jcpm-obs-pregnancy-history
Title: "JCPM Pregnancy-History Profile"
Description: "Proposed constraints and extensions on JCPM Pregnancy-History Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-pregnancy-history"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* code.coding
  * system 1..
  * system = "http://loinc.org" (exactly)
  * code 1..
  * code = #10163-4 (exactly)
  * display = "Findings of pregnancies" (exactly)
* value[x] ..0
* specimen ..0
* referenceRange ..0
* component ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "code.coding.system"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "code.coding.code"
  * ^slicing.rules = #open
  * ^mustSupport = false
* component contains
    num-pregnancies 1..1 and
    num-births-live 1..1 and
    num-births-total 1..1 and
    num-previous-cesarian 1..1
* component[num-pregnancies]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #11996-6 (exactly)
    * display = "[#] Pregnancies" (exactly)
  * value[x] only Quantity
  * valueQuantity 0..1
    * system = "http://unitsofmeasure.org" (exactly)
    * code = #{#} (exactly)
* component[num-births-live]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #11636-8 (exactly)
    * display = "[#] Births.live" (exactly)
  * value[x] only Quantity
  * valueQuantity 0..1
    * system = "http://unitsofmeasure.org" (exactly)
    * code = #{#} (exactly)
* component[num-births-total]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #11640-0 (exactly)
    * display = "[#] Births total" (exactly)
  * value[x] only Quantity
  * valueQuantity 0..1
    * system = "http://unitsofmeasure.org" (exactly)
    * code = #{#} (exactly)
* component[num-previous-cesarian]
  * code.coding 1..
    * system 1..
    * system = "http://loinc.org" (exactly)
    * code 1..
    * code = #68497-7 (exactly)
    * display = "Previous cesarean deliveries #" (exactly)
  * value[x] only Quantity
  * valueQuantity 0..1
    * system = "http://unitsofmeasure.org" (exactly)
    * code = #{#} (exactly)