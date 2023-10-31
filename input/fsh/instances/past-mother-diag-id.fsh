Instance: past-mother-diag-id
InstanceOf: JCPMCondPastMotherDiags
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category
  * coding[0] = $condition-category#problem-list-item "Problem List Item"
  * coding[+] = JCPMResourceCategory#infection "זיהומים וחום"
* code = $sct#307534009 "Urinary tract infection in pregnancy"
  * text = "Urinary Tract Infection 646.61"
* subject.reference = "Patient/[Patient_Mother_ID]"
* onsetDateTime = "2012-05-24"
* note.text = "Clinical Comment."