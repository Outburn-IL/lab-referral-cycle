Profile: JCPMObservationPregnancyFindings
Parent: ILCoreObservation
Id: jcpm-obs-pregnancy-findings
Title: "JCPM Observation Pregnancy-Findings Profile"
Description: "Proposed constraints and extensions on JCPM Pregnancy-Findings Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-pregnancy-findings"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* category.coding from JCPMResourceCategory (required)
  * system 1..
  * code 1..
* code.coding
  * system 1..
  * system = "http://loinc.org" (exactly)
  * code 1..
  * code = #89492-3 (exactly)
  * display = "Umbilical cord exam findings" (exactly)
* subject 1..
* subject only Reference(JCPMPatient)
* focus 1..1
  * type = "condition" (exactly)
  * identifier 1..
    * system 1..
    * value 1..
  * display = "הריון" (exactly)
* encounter 1..
* encounter only Reference(JCPMEncounterBirth)
* component 1..
  * code.coding 1..
  * code.coding from UmbilicalCordObservationCodes (required)
    * system 1..
    * system = "http://snomed.info/sct"
    * code 1..
    * display = "[#] Pregnancies" (exactly)
  * value[x] only CodeableConcept
  * valueCodeableConcept 0..1
  * valueCodeableConcept from ClinicalFindingsYesSuspected (required)
    * coding
      * system 1..
      * system = "http://snomed.info/sct" (exactly)
      * code 1..
  * interpretation.coding from ObservationInterpretation (required)
    * system 1..
    * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
    * code 1..
    * display 1..