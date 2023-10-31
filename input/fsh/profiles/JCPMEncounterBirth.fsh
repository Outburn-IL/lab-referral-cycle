Profile: JCPMEncounterBirth
Parent: ILCoreEncounter
Id: jcpm-enc-birth
Title: "JCPM Encounter-birth Profile"
Description: "Proposed constraints and extensions on the JCPM Encounter-birth Resource"
* ^language = #he-IL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Management"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-enc-birth"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-03-20"
* ^publisher = "Outburn LTD."
* . ^short = "JCPM Encounter-birth Profile"
  * ^definition = "Definitions for the JCPM profile Encounter-birth resource profile."
  * ^isModifier = false
* status = #finished (exactly)
* statusHistory.status from EncounterStatus (required)
* class
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
  * code 1..
  * code = #IMP
  * display 1..
  * display = "inpatient encounter"
* classHistory.class from EncounterClass (required)
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
  * code 1..
  * code = #IMP
  * display 1..
  * display = "inpatient encounter"
* type.coding
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * code = #9153009 (exactly)
  * display 1..
  * display = "Newborn care service" (exactly)
* serviceType.coding
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/service-type"
  * code 1..
  * code = #409 (exactly)
  * display 1..
  * display = "Postnatal" (exactly)
* subject 1..
  * reference 1..
* hospitalization.admitSource.coding 1..1
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/admit-source"
  * code 1..
  * code = #born
  * display 1..
  * display = "Born in hospital"
* location.location.identifier 1..
  * system 1..
  * value 1..
* serviceProvider.identifier 1..
  * system 1..
  * value 1..