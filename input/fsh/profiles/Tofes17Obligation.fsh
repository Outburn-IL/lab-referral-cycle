Profile: Tofes17Obligation
Parent: Coverage
Id: tofes-17-obligation
Title: "Tofes 17 Obligation Profile"
Description: "Outburn Tofes 17 Obligation Profile on Coverage"
* ^url = "http://fhir.health.gov.il/StructureDefinition/tofes-17-obligation"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-07-06"
* ^publisher = "Outburn LTD."
* . ^short = "Tofes 17 Obligation Profile"
  * ^definition = "Definitions for the Outburn Tofes 17 Obligation Profile on Coverage."
* beneficiary.identifier 1..
  * system 1..
  * system = "http://fhir.health.gov.il/identifier/il-national-id" (exactly)
* payor.identifier 1..
  * system 1..
  * system = "http://fhir.health.gov.il/identifier/legal-entity" (exactly)
* costToBeneficiary 1..
  * valueMoney 1..1
  * valueMoney only Money
    * ^sliceName = "valueMoney"
    * currency = #ILS (exactly)