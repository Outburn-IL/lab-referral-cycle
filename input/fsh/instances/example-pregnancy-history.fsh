Instance: example-pregnancy-history
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#10163-4 "History of pregnancies"
  * text = "היסטוריה של הריון"
* component[0]
  * code = $loinc#11996-6 "[#] Pregnancies"
    * text = "מספר הריונות קודמים"
  * valueQuantity = 2 '{#}'
* component[+]
  * code = $loinc#11636-8 "[#] Births.live"
    * text = "מספר לידות חיות"
  * valueQuantity = 2 '{#}'
* component[+]
  * code = $loinc#68497-7 "Previous cesarean deliveries #"
    * text = "מספר לידות בניתוח קיסרי"
  * valueQuantity = 1 '{#}'