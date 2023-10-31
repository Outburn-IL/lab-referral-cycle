ValueSet: EncounterStatus
Id: vs-encounter-status
Title: "Encounter Status"
Description: "Encounter Status codes"
* ^status = #draft
* ^version = "0.1.0"
* ^url = "http://fhir.outburn.co.il/ValueSet/jcpm-encounter-status"
* ^language = #en-US
* EncounterStatus#arrived "Arrived"
* EncounterStatus#in-progress "In Progress"
* EncounterStatus#triaged "Triaged"
* EncounterStatus#onleave "On Leave"
* EncounterStatus#finished "Finished"