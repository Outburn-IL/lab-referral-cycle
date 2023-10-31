Profile: Tofes17Response
Parent: CoverageEligibilityResponse
Id: tofes-17-response
Title: "Tofes 17 Response Profile"
Description: "Outburn Tofes 17 Response Profile on CoverageEligibilityResponse"
* ^url = "http://fhir.health.gov.il/StructureDefinition/tofes-17-response"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-07-06"
* ^publisher = "Outburn LTD."
* . ^short = "Tofes 17 Response Profile"
  * ^definition = "Definitions for the Outburn Tofes 17 Response Profile on CoverageEligibilityResponse."
* identifier ..1
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains UUID 1..1
* identifier[UUID].system 1..
* identifier[UUID].system = "urn:ietf:rfc:3986"
* purpose = #validation (exactly)
* patient.identifier 1..
  * system 1..
  * system = "http://fhir.health.gov.il/identifier/il-national-id" (exactly)
* requestor 1..
* requestor only Reference(Organization)
  * identifier 1..
    * system 1..
    * system = "http://fhir.health.gov.il/identifier/legal-entity" (exactly)
* insurer.identifier 1..
  * system 1..
  * system = "http://fhir.health.gov.il/identifier/legal-entity" (exactly)
* insurance.item
  * productOrService
    * coding ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
    * coding contains MohCode 1..1
    * coding[MohCode].system 1..
    * coding[MohCode].system = "http://fhir.health.gov.il/cs/medical-service-moh"
  * provider only Reference(Practitioner)
    * identifier 1..
      * system 1..
      * system = "http://practitioners.health.gov.il/Practitioners"