CodeSystem: HipaaRelationshipCodeSystem
Id:         hipaa-relationship
Title:      "HIPAA Relationship Codes"
Description: "HIPAA standard codes for the relationship of the member to the contract holder"
* #01        "Spouse"                             "Spouse"
* #03        "Father/Mother"                      "Father/Mother"
* #04        "Grandfather/Grandmother"            "Grandfather/Grandmother"
* #05        "Grandson/Granddaughter"             "Grandson/Granddaughter"
* #06        "Uncle/Aunt"                         "Uncle/Aunt"
* #07        "Nephew/Niece"                       "Nephew/Niece"
* #08        "Cousin"                             "Cousin"                        
* #09        "Adopted Child"                      "Adopted dhild"
* #10        "Foster Child"                       "Foster dhild"
* #11        "Son-in-law/Daughter-in-law"         "Son-in-law/Daughter-in-law"
* #12        "Brother-in-law/Sister-in-law"       "Brother-in-law/Sister-in-law"
* #13        "Father-in-law/Mother-in-law"        "Father-in-law/Mother-in-law"
* #14        "Brother/Sister"                     "Brother/Sister"
* #15        "Ward"                               "Ward"
* #17        "Stepson/Stepdaughter"               "Stepson/Stepdaughter"
* #18        "Self"                               "Self"
* #19        "Child"                              "Child"
* #20        "Employee"                           "Employee"
* #21        "Unknown"                            "Unknown"
* #22        "Handicapped Dependent"              "Handicapped dependent"
* #23        "Sponsored Dependent"                "Sponsored dependent"
* #24        "Dependent/Minor Dependent"          "Dependent/Minor dependent"
* #25        "Ex-spouse"                          "Ex-spouse"
* #26        "Guardian"                           "Guardian"
* #29        "Significant Other"                  "Significant other"
* #31        "Court Appointed Guardian"           "Court appointed guardian"
* #32        "Mother"                             "Mother"
* #33        "Father"                             "Father"
* #38        "Collateral Dependent"               "Collateral dependent"
* #39        "Organ Donor"                        "Organ donor"
* #40        "Cadaver Donor"                      "Cadaver donor"
* #41        "Injured Plaintiff"                  "Injured plaintiff"
* #43        "Child Insured has No Finan Res"     "Child Insured has no financial Responsibility"
* #48        "Stepfather"                         "Stepfather"
* #49        "Stepmother"                         "Stepmother"
* #53        "Life Partner"                       "Life partner"
* #G8        "Other Relationship"                 "Other relationship"

ValueSet:       HipaaRelationshipValueSet
Id:             hipaa-relationship
Title:          "HIPAA Relationship Value Set"
Description:    "HIPAA standard value set for the relationship of the member to the contract holder"
* codes from system HipaaRelationshipCodeSystem
