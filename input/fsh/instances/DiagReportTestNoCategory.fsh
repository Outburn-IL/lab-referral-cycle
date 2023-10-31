Instance: DiagReportTestNoCategory
InstanceOf: LrcLabReport
Title: "DiagReportTestNoCategory"
Description: "No Category"
Usage: #example
* identifier
  * system = "http://example.com"
  * value = "000"
* subject.reference = "Patient/123"
* performer.reference = "Practitioner/123"
* result.reference = "Observation/321"
* category
  * coding[0] = $v2-0074#LAB
  * coding[+] = $v2-0074_1#LA
* code
  * coding[0] = $loinc#11502-2
  * coding[+] = $s#s-2
* status = #final