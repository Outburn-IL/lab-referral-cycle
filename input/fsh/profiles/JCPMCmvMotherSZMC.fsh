Profile: JCPMCmvMotherSZMC
Parent: JCPMCmvMother
Id: jcpm-obs-cmv-mother-szmc
Title: "JCPM Observation CMV Mother Profile - SZMC"
Description: "Proposed constraints and extensions on JCPM CMV Mother SZMC Resource"
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-cmv-mother-szmc"
* ^status = #active
* focus.identifier.system = "http://fhir.szmc.org.il/identifier/pregnancy-identifier"
* encounter only Reference(JCPMEncounterPregnancySZMC or JCPMEncounterDeliverySZMC)