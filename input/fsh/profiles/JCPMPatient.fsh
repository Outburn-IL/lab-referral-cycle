Profile: JCPMPatient
Parent: ILCorePatient
Id: jcpm-patient
Title: "JCPM Patient Profile"
Description: "Proposed constraints and extensions on the JCPMPatient Resource."
* ^language = #he-IL
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Base.Individuals"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-patient"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-01-30"
* ^publisher = "Outburn LTD."
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* . ^short = "JCPM Patient profile"
  * ^isModifier = false
* identifier contains
    hadassah-temp 0..1 and
    meuhedet-temp 0..1 and
    szmc-temp 0..1
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