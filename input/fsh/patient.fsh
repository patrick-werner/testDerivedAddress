Alias: AddressDeBasis = http://fhir.de/StructureDefinition/address-de-basis

Profile: ISiKPatient
Parent: Patient
Id: ISiKPatient
Description: "Dieses Profil die Nutzung von administrativen Patientendaten in ISiK Szenarien."
* address MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^comment = "In order to differentiate between post box addresses and physical addresses, street names and house numbers, and to add city district names, vendors can opt to support the extensions as suggested in the German Address Base Profile http://fhir.de/StructureDefinition/address-de-basis.\r\nSuch differentiations are however not required within the scope of this specification."
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only AddressDeBasis
  * ^patternAddress.type = #both
  * type 1.. MS
* address[Postfach] only AddressDeBasis
  * ^patternAddress.type = #postal
  * type 1.. MS


