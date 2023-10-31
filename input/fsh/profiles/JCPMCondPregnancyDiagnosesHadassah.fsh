Profile: JCPMCondPregnancyDiagnosesHadassah
Parent: JCPMCondPregnancyDiagnoses
Id: jcpm-cond-pregnancy-diags-hadassah
Title: "JCPM Condition Pregnancy Diags - Hadassah profile"
Description: "Pregnancy conditions / problems / diagnoses"
* ^language = #he-IL
* ^url = "http://fhir.outburn.co.il/StructureDefinition/jcpm-cond-pregnancy-diags-hadassah"
* ^status = #draft
* ^date = "2022-01-30"
* ^publisher = "Outburn LTD."
* ^contact.name = "Outburn LTD"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://outburn.co.il"
* extension[cond-rel].valueReference
  * type = "Condition" (exactly)
  * identifier.system = "$hadassah-preg-id" (exactly)
  * display = "הריון" (exactly)