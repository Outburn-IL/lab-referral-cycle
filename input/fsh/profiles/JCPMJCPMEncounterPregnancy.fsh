Profile: JCPMJCPMEncounterPregnancy
Parent: ILCoreEncounter
Id: jcpm-enc-pregnancy
Title: "JCPM Encounter-pregnancy Profile"
Description: "Proposed constraints and extensions on the JCPM Encounter-pregnancy Resource"
* ^language = #he-IL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Management"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-enc-pregnancy"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-03-20"
* ^publisher = "Outburn LTD."
* . ^short = "JCPM Encounter-pregnancy Profile"
  * ^definition = "Definitions for the JCPM profile Encounter-pregnancy resource profile."
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
  * code = #271992004 (exactly)
  * display 1..
  * display = "Obstetric investigation" (exactly)
* serviceType.coding
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/service-type"
  * code 1..
  * code = #410 (exactly)
  * display 1..
  * display = "Pregnancy" (exactly)
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