Profile: JCPMMedicationAdministrationDelivery
Parent: MedicationAdministration
Id: jcpm-medication-administration-delivery
Title: "JCPM-Medication Administration Delivery"
Description: "Proposed constraints and extensions on JCPM MedicationAdministration Delivery profile"
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-proc-complication-treatment"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* partOf 1..1
* partOf only Reference(JCPMProcedureDeliveryProcedures)
* status = #comleted
* medicationCodeableConcept 1..1
* medicationCodeableConcept only CodeableConcept
  * coding
    * system 1..
    * system = "http://www.whocc.no/atc"
    * code 1..
    * display 1..
* subject only Reference(JCPMPatient)
* effective[x] only dateTime
* effectiveDateTime 1..1
* dosage 1..
  * dose 1..
    * value 1..
    * unit 1..
    * unit = "U"
    * code = #U
    * code 1..
    * system = "http://unitsofmeasure.org" (exactly)
    * system 1..