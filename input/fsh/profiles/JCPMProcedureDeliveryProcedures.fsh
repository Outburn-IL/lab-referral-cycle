Profile: JCPMProcedureDeliveryProcedures
Parent: ILCoreProcedure
Id: jcpm-proc-delivery-procedures
Title: "JCPM Procedure Delivery Procedures profile"
Description: "Proposed constraints and extensions on JCPM Procedure Delivery Procedures profile"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-proc-delivery-procedures"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* partOf 1..1
  * reference 1..
* status = #generated
* category 1..
  * coding ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "system"
    * ^slicing.rules = #open
    * ^mustSupport = false
  * coding contains
      induction 1..1 and
      procedures 0..1
  * coding[induction]
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #177128002 (exactly)
    * display = "Induction and delivery procedures" (exactly)
  * coding[procedures] from JCPMResourceCategory (required)
    * system 1..
    * system = "http://fhir.outburn.co.il/CodeSystem/jcpm-resource-category" (exactly)
    * code 1..
* code.coding 1..
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * display 1..
* subject only Reference(JCPMPatient)
* encounter 1..
* encounter only Reference(JCPMJCPMEncounterDelivery)
* reasonReference ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "reference.resolve()"
  * ^slicing.rules = #open
  * ^mustSupport = false
* reasonReference contains
    obs-delivery 1..1 and
    cond-pregnancy 1..1
* reasonReference[obs-delivery] only Reference(ILCoreCondition or ILCoreObservation or ILCoreProcedure or ILCoreDiagnosticReport or DocumentReference)
  * ^type.profile = "JCPMObservationDelivery"
* reasonReference[cond-pregnancy] only Reference(ILCoreCondition or ILCoreObservation or ILCoreProcedure or ILCoreDiagnosticReport or DocumentReference)
  * ^type.profile = "JCPMConditionPregnancyDiagnoses"