Profile: JCPMEncounterPregnancySZMC
Parent: JCPMJCPMEncounterPregnancy
Id: jcpm-enc-pregnancy-szmc
Title: "JCPM Encounter-pregnancy-szmc Profile"
Description: "Proposed constraints and extensions on the JCPM Encounter-pregnancy-szmc Resource"
* ^language = #he-IL
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-enc-pregnancy-szmc"
* ^status = #draft
* ^date = "2022-03-20"
* ^publisher = "Outburn LTD."
* . ^short = "JCPM Encounter-pregnancy-szmc Profile"
  * ^definition = "Definitions for the JCPM profile Encounter-pregnancy-szmc resource profile."
* reasonReference.identifier.system = "$szmc-preg-id"
* location.location.identifier.system = "http://fhir.szmc.org.il/identifier/locations"
* serviceProvider.identifier.system = "http://fhir.szmc.org.il/identifier/organization"