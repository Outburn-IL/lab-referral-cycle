Profile: JCPMOBodyWeightUS
Parent: ILCoreObservation
Id: jcpm-obs-body-weight-us
Title: "JCPM Observation Body Weight US Profile"
Description: "Proposed constraints and extensions on JCPM Body Weight US Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-body-weight-us"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* code.coding 1..
  * system 1..
  * system = "http://loinc.org" (exactly)
  * code 1..
  * code = #11727-5 (exactly)
  * display = "Fetal Body weight estimated by US" (exactly)
* subject 1..
* subject only Reference(JCPMPatient)
* focus 1..1
  * type = "condition" (exactly)
  * identifier 1..
    * system 1..
    * value 1..
  * display = "הריון" (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity 1..1
  * value 1..
  * unit 1..
  * unit = "g" (exactly)
  * code = #g (exactly)
  * code 1..
  * system = "http://unitsofmeasure.org" (exactly)
  * system 1..