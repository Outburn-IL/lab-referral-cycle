Profile: JCPMObservationBloodPressure
Parent: ILCoreObservation
Id: jcpm-obs-bp
Title: "JCPM Observation Blood pressure Profile"
Description: "Proposed constraints and extensions on JCPM Blood Pressure Resource"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-obs-bp"
* ^version = "0.3.0"
* ^status = #active
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* category 1..1
  * coding 1..
    * system 1..
    * system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
    * code 1..
    * code = #vital-signs (exactly)
    * display = "Vital Signs" (exactly)
* code = $loinc#85354-9
* code MS
  * ^short = "Blood Pressure"
* subject 1..
* subject only Reference(JCPMPatient)
* encounter 1..
* encounter only Reference(JCPMJCPMEncounterDelivery or JCPMJCPMEncounterPregnancy)
* component MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
* component contains
    systolic 1..1 MS and
    diastolic 1..1 MS
* component[systolic] ^short = "Systolic Blood Pressure"
  * code = $loinc#8480-6
  * code MS
    * ^short = "Systolic Blood Pressure Code"
  * valueQuantity 0..1 MS
  * valueQuantity only Quantity
    * value 1.. MS
    * unit 1.. MS
    * system 1.. MS
    * system = "http://unitsofmeasure.org" (exactly)
    * code 1.. MS
    * code = #mm[Hg] (exactly)
* component[diastolic] ^short = "Diastolic Blood Pressure"
  * code = $loinc#8462-4
  * code MS
    * ^short = "Diastolic Blood Pressure Code"
  * valueQuantity 0..1 MS
  * valueQuantity only Quantity
    * value 1.. MS
    * unit 1.. MS
    * system 1.. MS
    * system = "http://unitsofmeasure.org" (exactly)
    * code 1.. MS
    * code = #mm[Hg] (exactly)