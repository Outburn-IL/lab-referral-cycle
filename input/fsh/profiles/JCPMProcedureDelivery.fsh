Profile: JCPMProcedureDelivery
Parent: ILCoreProcedure
Id: jcpm-proc-delivery
Title: "JCPM Procedure Delivery profile"
Description: "Proposed constraints and extensions on JCPM Procedure Delivery profile"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-proc-delivery"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #completed
* category 1..
  * coding 1..
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #236973005 (exactly)
    * display = "Delivery procedure" (exactly)
* code.coding 1..
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * code = #236973005 (exactly)
  * display 1..
  * display = "Delivery procedure" (exactly)
* subject only Reference(JCPMPatient)
* encounter 1..
* encounter only Reference(JCPMJCPMEncounterDelivery)