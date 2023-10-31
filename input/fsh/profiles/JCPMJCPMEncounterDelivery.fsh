Profile: JCPMJCPMEncounterDelivery
Parent: ILCoreEncounter
Id: jcpm-enc-delivery
Title: "JCPM Encounter-delivery Profile"
Description: "Proposed constraints and extensions on the JCPM Encounter-delivery Resource"
* ^language = #he-IL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Management"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-enc-delivery"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-04-05"
* ^publisher = "Outburn LTD."
* . ^short = "JCPM Encounter-delivery Profile"
  * ^definition = "Definitions for the JCPM profile Encounter-delivery resource profile."
  * ^isModifier = false
* status = #finished (exactly)
* statusHistory.status from EncounterStatus (required)
* class from EncounterClass (required)
  * system 1..
  * code 1..
  * display 1..
* classHistory.class from EncounterClass (required)
  * system 1..
  * code 1..
  * display 1..
* type.coding
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * code = #236973005 (exactly)
  * display 1..
  * display = "Delivery procedure" (exactly)
* serviceType.coding
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/service-type"
  * code 1..
  * code = #263 (exactly)
  * display 1..
  * display = "Birth" (exactly)
* subject 1..
  * reference 1..
* reasonReference 1..
  * type 1..
  * identifier 1..
    * system 1..
    * value 1..
  * display 1..
* hospitalization
  * origin only Reference(ILCoreLocation)
  * admitSource.coding 1..1
  * admitSource.coding from EncounterAdmitSource (required)
    * system 1..
    * code 1..
    * display 1..
* location
  * location.identifier 1..
    * system 1..
    * value 1..
  * status = #completed (exactly)
* serviceProvider.identifier 1..
  * system 1..
  * value 1..