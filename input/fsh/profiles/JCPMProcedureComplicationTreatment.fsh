Profile: JCPMProcedureComplicationTreatment
Parent: ILCoreProcedure
Id: jcpm-proc-complication-treatment
Title: "JCPM Procedure Complication Treatment profile"
Description: "Proposed constraints and extensions on JCPM Procedure Complication Treatment profile"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-proc-complication-treatment"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* status = #completed
* category 1..
  * coding ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "code.coding.system"
    * ^slicing.rules = #open
    * ^mustSupport = false
  * coding contains
      condition-category 1..1 and
      jcpm-resource-category 1..1
  * coding[condition-category]
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #386637004 (exactly)
    * display = "Obstetric procedure" (exactly)
  * coding[jcpm-resource-category] from JCPMResourceCategory (required)
    * system 1..
    * system = "http://fhir.outburn.co.il/CodeSystem/jcpm-resource-category" (exactly)
    * code 1..
* code.coding 1..
  * system 1..
  * system = "http://snomed.info/sct"
  * code 1..
  * display 1..
* subject only Reference(JCPMPatient)
* encounter 1..
* encounter only Reference(JCPMJCPMEncounterDelivery)
* performed[x] only Period
* performedPeriod 1..1
* reasonReference ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "reference.resolve()"
  * ^slicing.rules = #open
  * ^mustSupport = false
* reasonReference contains
    delivery-diags 0..* and
    cond-umbilical 0..1
* reasonReference[delivery-diags] only Reference(ILCoreCondition or ILCoreObservation or ILCoreProcedure or ILCoreDiagnosticReport or DocumentReference)
  * ^type.profile = "JCPMConditionDeliveryDiagnoses"
* reasonReference[cond-umbilical] only Reference(ILCoreCondition or ILCoreObservation or ILCoreProcedure or ILCoreDiagnosticReport or DocumentReference)
  * ^type.profile = "JCPMConditionUmbilicalCordComplications"
* usedCode.coding
  * system 1..
  * system = "http://www.whocc.no/atc"
  * code 1..
  * display 1..