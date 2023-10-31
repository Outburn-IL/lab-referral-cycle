Invariant: il-id-chk
Description: "Israeli ID must be 9-digits with a correct check-digit at the end."
Severity: #error
Expression: "\r\nmatches('[0-9]{9}') and\r\nsubstring(8,1).toInteger()=\r\n(10-((substring(0,1).toInteger() +\r\nsubstring(1,1).toInteger()*2 mod 10 +\r\nsubstring(1,1).toInteger()*2 div 10 +\r\nsubstring(2,1).toInteger() +\r\nsubstring(3,1).toInteger()*2 mod 10 +\r\nsubstring(3,1).toInteger()*2 div 10 +\r\nsubstring(4,1).toInteger() +\r\nsubstring(5,1).toInteger()*2 mod 10 +\r\nsubstring(5,1).toInteger()*2 div 10 +\r\nsubstring(6,1).toInteger() +\r\nsubstring(7,1).toInteger()*2 mod 10 +\r\nsubstring(7,1).toInteger()*2 div 10) mod 10)) mod 10\r\n"