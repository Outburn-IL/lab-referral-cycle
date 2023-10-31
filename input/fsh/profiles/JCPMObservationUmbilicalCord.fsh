Profile: JCPMObservationUmbilicalCord
Parent: ILCoreObservation
Id: jcpm-obs-umbilical-cord
Title: "JCPM Observation Umbilical Cord Profile"
Description: "Proposed constraints and extensions on JCPM Umbilical Cord Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-umbilical-cord"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #final
* category.coding from JCPMResourceCategory (required)
  * system 1..
  * system = "http://terminology.hl7.org/CodeSystem/condition-category"
  * code 1..
* code.coding
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * code = #118185001 (exactly)
  * display = "Finding related to pregnancy" (exactly)
* subject 1..
* subject only Reference(JCPMPatient)
* focus 1..
  * type = "condition"
  * identifier 1..
    * system 1..
    * value 1..
  * display 1..
* component 1..
  * code.coding 1..
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #11996-6 (exactly)
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