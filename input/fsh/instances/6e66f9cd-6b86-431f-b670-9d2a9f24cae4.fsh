Instance: 6e66f9cd-6b86-431f-b670-9d2a9f24cae4
InstanceOf: List
Usage: #inline
* identifier
  * system = "http://fhir.tlvmc.gov.il/identifier/EMR-MIrshamID"
  * value = "4A310EAE-E181-44B8-8834-2B53540F4AEF"
* status = #current
* mode = #working
* title = "2021-10-07 4A310EAE-E181-44B8-8834-2B53540F4AEF איכילוב אורטופדית 015596570 "
* code = $list-example-use-codes#medications "Medication List"
* subject
  * type = "Patient"
  * identifier
    * system = "http://fhir.health.gov.il/identifier/il-national-id"
    * value = "015596570"
* encounter = Reference(Encounter/9e1a1e8a-773b-46a7-b73a-ba85c2045902) "איכילוב - אורטופדית"
  * type = "Encounter"
* source = Reference(c7869a3b-b0f9-4e1a-8de4-7d17bc7edb19)
  * type = "Practitioner"
* entry.item = Reference(Medication/uscore-med2) "Nizatidine 15 MG/ML Oral Solution [Axid]"
  * type = "Medication"