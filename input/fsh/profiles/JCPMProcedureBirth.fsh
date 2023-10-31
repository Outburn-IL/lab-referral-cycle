Profile: JCPMProcedureBirth
Parent: ILCoreProcedure
Id: jcpm-proc-birth
Title: "JCPM Procedure Birth profile"
Description: "Proposed constraints and extensions on JCPM Procedure Birth profile"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Summary"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-proc-birth"
* ^version = "0.3.0"
* ^status = #draft
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* partOf 1..1
* partOf only Reference(JCPMProcedureDelivery)
  * reference 1..
* status = #completed
* category 1..
  * coding ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "system"
    * ^slicing.rules = #open
    * ^mustSupport = false
  * coding contains
      delivery-procedure 1..1 and
      method 0..1
  * coding[delivery-procedure]
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * code = #236973005 (exactly)
    * display 1..
    * display = "Delivery procedure" (exactly)
  * coding[method] from DeliveryMethodCategory (required)
    * system 1..
    * system = "http://snomed.info/sct" (exactly)
    * code 1..
    * display 1..
* code.coding 1..
* code.coding from DeliveryMethodCategory (required)
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..
  * display 1..
* subject only Reference(JCPMPatient)
* performedPeriod 1..1
* performedPeriod only Period
* reasonReference 1..
* reasonReference only Reference(JCPMObservationUmbilicalCord)
  * reference 1..
* complicationDetail only Reference(JCPMConditionUmbilicalCordComplications)