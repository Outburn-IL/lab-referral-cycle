Profile: JCPMEncounterDeliveryHadassah
Parent: JCPMJCPMEncounterDelivery
Id: jcpm-enc-delivery-hadassah
Title: "JCPM Encounter-delivery-hadassah Profile"
Description: "Proposed constraints and extensions on the JCPM Encounter-delivery-hadassah Resource"
* ^language = #he-IL
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-enc-delivery-hadassah"
* ^status = #draft
* ^date = "2022-03-20"
* ^publisher = "Outburn LTD."
* . ^short = "JCPM Encounter-delivery-hadassah Profile"
  * ^definition = "Definitions for the JCPM profile Encounter-delivery-hadassah resource profile."
* reasonReference.identifier.system = "$hadassah-preg-id"
* location.location.identifier.system = "http://fhir.hadassah.org.il/identifier/locations"
* serviceProvider.identifier.system = "http://fhir.hadassah.org.il/identifier/organization"