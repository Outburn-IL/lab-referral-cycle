ValueSet: EncounterAdmitSource
Id: vs-encounter-admit-source
Title: "Encounter Admit Source"
Description: "Encounter Admit Source codes"
* ^status = #draft
* ^version = "0.1.0"
* ^url = "http://fhir.outburn.co.il/ValueSet/jcpm-encounter-admit-source"
* ^language = #en-US
* AdmitSource#emd "From accident/emergency department"
* AdmitSource#outp "From outpatient department"
* AdmitSource#hosp-trans "Transferred from other hospital"
* AdmitSource#other "Other"