Profile: JCPMRelatedPerson
Parent: RelatedPerson
Id: jcpm-related-person
Title: "JCPM JCPMRelatedPerson Profile"
Description: "Proposed constraints and extensions on the JCPMRelatedPerson Resource"
* ^language = #he-IL
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-related-person"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-01-30"
* ^publisher = "Outburn LTD"
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* . MS
  * ^short = "JCPMRelatedPerson Profile"
  * ^definition = "Definitions for the profile-JCPMRelatedPerson resource profile."
* identifier 1..
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    il-id 0..1 MS and
    pna-id 0..1 and
    ppn 0..* and
    enc 0..* and
    hadassah-temp 0..1 and
    meuhedet-temp 0..1 and
    szmc-temp 0..1
  * system 1.. MS
  * value 1.. MS
    * ^short = "The value that is unique within the system."
* identifier[il-id] ^short = "Israeli National Identifier"
  * ^definition = "Israeli ID number (9 digit unchangeable number, including leading zeros and includes a control digit), including temporarily identification numbers assigned by Israeli National Insurance"
  * ^patternIdentifier.system = "http://fhir.health.gov.il/identifier/il-national-id"
  * value obeys il-id-chk
    * ^short = "An Israeli ID number"
* identifier[pna-id] ^short = "Palestinian National Identifier"
  * ^definition = "Palestinian ID number"
  * ^patternIdentifier.system = "http://fhir.health.gov.il/identifier/pna-national-id"
  * ^mustSupport = false
  * value ^short = "A Palestininan ID number"
* identifier[ppn] ^short = "Passport Number"
  * ^definition = "Passport number"
  * ^patternIdentifier.type = $v2-0203#PPN
  * ^mustSupport = false
  * type 1..
  * system from PassportUri (required)
  * value ^short = "Passport Number"
* identifier[enc] ^short = "Person's Identifier - MoH encrypted"
  * ^definition = "The person’s identifier after applying MoH’s standard primary encryption algorithm"
  * ^patternIdentifier.system = "http://fhir.health.gov.il/identifier/encrypted-id-primary-moh"
  * ^mustSupport = false
  * value ^short = "An encrypted identifier"
* identifier[hadassah-temp] ^short = "Person's Identifier - hadassah temporary id"
  * ^definition = "The person’s temporary identifier in Hadassah hospital "
  * ^patternIdentifier.system = "http://fhir.hadassah.org.il/identifier/temporary-patient-id"
  * ^mustSupport = false
  * value ^short = "A Hadassah temporary identifier"
* identifier[meuhedet-temp] ^short = "Person's Identifier - meuhedet temporary id"
  * ^definition = "The person’s temporary identifier in Meuhedet HMO "
  * ^patternIdentifier.system = "http://fhir.meuhedet.org.il/identifier/temporary-patient-id"
  * ^mustSupport = false
  * value ^short = "A Meuhedet temporary identifier"
* identifier[szmc-temp] ^short = "Person's Identifier - szmc temporary id"
  * ^definition = "The person’s temporary identifier in SZMC hospital "
  * ^patternIdentifier.system = "http://fhir.szmc.org.il/identifier/temporary-patient-id"
  * ^mustSupport = false
  * value ^short = "A SZMC temporary identifier"
* patient only Reference(ILCorePatient)
* relationship.coding
  * system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
  * code = #NMTH