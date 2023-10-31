Instance: outburn-medication-bundle-example
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0]
  * fullUrl = "http://hapi-fhir.outburn.co.il/fhir/List/6e66f9cd-6b86-431f-b670-9d2a9f24cae4"
  * resource = 6e66f9cd-6b86-431f-b670-9d2a9f24cae4
  * search.mode = #match
  * request
    * method = #POST
    * url = "List"
* entry[+]
  * fullUrl = "http://hapi-fhir.outburn.co.il/fhir/Practitioner/c7869a3b-b0f9-4e1a-8de4-7d17bc7edb19"
  * resource = c7869a3b-b0f9-4e1a-8de4-7d17bc7edb19
  * search.mode = #match
  * request
    * method = #POST
    * url = "Practitioner"
* entry[+]
  * fullUrl = "http://hapi-fhir.outburn.co.il/fhir/Encounter/9e1a1e8a-773b-46a7-b73a-ba85c2045902"
  * resource = e06f8ad7-b8c7-4cfd-9a0a-f49ff4d68146
  * search.mode = #match
  * request
    * method = #POST
    * url = "Encounter"