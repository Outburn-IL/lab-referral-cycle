Profile: JCPMEncounterDeliverySZMC
Parent: JCPMJCPMEncounterDelivery
Id: jcpm-enc-delivery-szmc
Title: "JCPM Encounter-delivery-szmc Profile"
Description: "Proposed constraints and extensions on the JCPM Encounter-delivery-szmc Resource"
* ^language = #he-IL
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-enc-delivery-szmc"
* ^status = #draft
* ^date = "2022-03-20"
* ^publisher = "Outburn LTD."
* . ^short = "JCPM Encounter-delivery-szmc Profile"
  * ^definition = "Definitions for the JCPM profile Encounter-delivery-szmc resource profile."
* reasonReference.identifier.system = "$szmc-preg-id"
* location.location.identifier.system = "http://fhir.szmc.org.il/identifier/locations"
* serviceProvider.identifier.system = "http://fhir.szmc.org.il/identifier/organization"