Profile: LrcHospitalCommunityOncoLabResult
Parent: LrcResult
Id: lrc-hospital-community-onco-lab-result
Title: "Lrc Hospital Community Onco Lab Result"
Description: "Lrc Hospital Community Onco Lab Result"
* ^url = "http://outburn.co.il/fhir/oncology/StructureDefinition/lrc-test-result"
* ^status = #draft
* code from LrcOncoResultCodes (extensible)
* value[x] 1..
* value[x] only Quantity
* valueQuantity only Quantity
* valueQuantity from $ucum-common (required)