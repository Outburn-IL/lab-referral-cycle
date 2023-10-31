Extension: IssueRegards
Id: issue-regards
Title: "Issue Regards"
Description: "Allows returning of information regarding which item returned an error. For example, an application may want to know why patients from a list of patients were not returned in a search result, the reason for the absence of each one and their MRN. The base OperationOutcome resource may return the coded reason, but there is no discrete standard element that may hold the MRN. There are only ambiguous ways to return this information, such as in the text description of the error."
Context: CoverageEligibilityResponse.error, OperationOutcome.issue
* ^language = #he-IL
* ^url = "http://fhir.outburn.co.il/StructureDefinition/issue-regards"
* ^version = "0.1.1"
* ^status = #draft
* . ^short = "Issue Regards"
  * ^definition = "Allows returning of information regarding which item returned an error. for example, an application may want to know why patients from a list of patients were not returned in a search result, the reason for the absence of each one and their MRN. The base OperationOutcome resource may return the coded reason, but there is no discrete standard element that may hold the MRN. There are only ambiguous ways to return this information, such as in the text description of the error."
* url = "http://fhir.outburn.co.il/StructureDefinition/issue-regards" (exactly)
* value[x] only code or id or CodeableConcept or Coding or Identifier