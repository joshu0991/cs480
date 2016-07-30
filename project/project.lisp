;; Matt Carlstrom
;; David DiMenna
;; Thomas Kegal
;; Joshua Lilly

;; CS 480 Summer 2016
;; Dr. Duric
;; Project

(defvar *australia* '( (WA (NT SA)) 
                       (NT (WA SA Q )) 
                       (SA (WA NT Q SW V)) 
                       (Q (NT SA SW)) 
                       (SW (SA Q V)) 
                       (V (SA SW)) 
                       (TS  () ) ))

(defvar *50-states* '(
                    (AL (GA FL MS TN))             ; AL = Alabama
                    (AK ())                        ; AK = Alaska
                    (AZ (CA NV UT CO NM))          ; AZ = Arizona
                    (AR (TX OK MO TN MS LA))       ; AR = Arkansas
                    (CA (OR NV AZ))                ; CA = California
                    (CO (NM AZ UT WY NE KS OK))    ; CO = Colorado
                    (CT (RI NY MA))                ; CT = Conneticut
                    (DE (MD PA NJ))                ; DE = Delaware
                    (DC (MD VA))                   ; DC = D.C.
                    (FL (GA AL))                   ; FL = Florida
                    (GA (SC NC TN AL FL))          ; GA = Georgia
                    (HI ())                        ; HI = Hawaii
                    (ID (WA OR NV UT WY MT))       ; ID = Idaho
                    (IL (WI IA MO KY IN))          ; IL = Illinois
                    (IN (IL KY OH MI))             ; IN = Indiana
                    (IA (MN SD NE MO IL WI))       ; IA = Iowa
                    (KS (CO OK MO NE))             ; KS = Kansas
                    (KY (MO TN VA WV OH IN IL))    ; KY = Kentucky
                    (LA (TX AR MS))                ; LA = Lousiana
                    (ME (NH))                      ; ME = Maine
                    (MD (DE PA WV DC VA))          ; MD = Maryland
                    (MA (RI CT NY VT NH))          ; MA = Mass
                    (MI (OH IN WI))                ; MI = Michigan
                    (MN (WI IA SD ND))             ; MN = Minnesota
                    (MS (LA AR TN AL))             ; MS = Mississippi
                    (MO (KS NE IA IL KY TN AR OK)) ; MO = Missouri
                    (MT (ID WY SD ND))             ; MT = Montana
                    (NE (WY SD IA MO KS CO))       ; NE = Nebraska
                    (NV (CA OR ID UT AZ))          ; NV = Nevada
                    (NH (ME MA VT))                ; NH = New Hampshire
                    (NJ (NY PA DE))                ; NJ = New Jersey
                    (NM (AZ UT CO OK TX))          ; NM = New Mexico
                    (NY (PA NJ CT MA VT))          ; NY = New York
                    (NC (VA TN GA SC))             ; NC = North Carolina
                    (ND (MT SD MN))                ; ND = North Dakota
                    (OH (PA WV KY IN MI))          ; OH = Ohio
                    (OK (TX NM CO KS MO AR))       ; OK = Oklahoma
                    (OR (WA ID NV CA))             ; OR = Oregon
                    (PA (NY NJ DE MD WV OH))       ; PA = Pennsylvania
                    (RI (CT MA))                   ; RI = Rhode Island
                    (SC (GA NC))                   ; SC = South Carolina
                    (SD (WY MT ND MN IA NE))       ; SD = South Dakota
                    (TN (AR MO KY VA NC GA AL MS)) ; TN = Tennessee
                    (TX (NM OK AR LA))             ; TX = Texas
                    (UT (CO NM AZ NV ID WY))       ; UT = Utah
                    (VT (NY MA NH))                ; VT = Vermont
                    (VA (NC TN KY WV MD DC))       ; VA = Virginia
                    (WA (ID OR))                   ; WA = Washington
                    (WV (KY OH PA MD VA))          ; WV = West Virginia
                    (WI (MN IA  IL MI))            ; WI = Wisconsin
                    (WY (ID MT SD NE CO UT))))     ; WY = Wyoming
                    
                    
(defvar extra '
(( "Adélie Land" ("Australian Antarctic Territory"
)) ( "Afghanistan" ("People's Republic of China"
 "Iran"
 "Pakistan"
 "Tajikistan"
 "Turkmenistan"
 "Uzbekistan"
)) ( "Akrotiri and Dhekelia" ("Cyprus"
)) ( "Albania" ("Greece"
 "Kosovo"
 "Macedonia"
 "Montenegro"
)) ( "Algeria" ("Libya"
 "Mali"
 "Mauritania"
 "Morocco"
 "Niger"
 "Tunisia"
 "Western Sahara"
)) ( "American Samoa" (
)) ( "Amsterdam Island and Île Saint-Paul" (
)) ( "Andorra" ("France"
 "Spain"
)) ( "Angola" ("Democratic Republic of the Congo"
 "Republic of the Congo"
 "Namibia"
 "Zambia"
)) ( "Anguilla" (
)) ( "Antártica Chilena Province" ("Argentine Antarctica"
 "British Antarctic Territory"
)) ( "Antigua and Barbuda" (
)) ( "Argentina" ("Bolivia"
 "Brazil"
 "Chile"
 "Paraguay"
 "Uruguay"
)) ( "Armenia" ("Azerbaijan"
 "Georgia"
 "Iran"
 "Turkey"
)) ( "Aruba" (
)) ( "Ashmore and Cartier Islands" (
)) ( "Australia" (
)) ( "Australian Antarctic Territory" ("Adélie Land"
 "Queen Maud Land"
 "Ross Dependency"
)) ( "Austria" ("Czech Republic"
 "Germany"
 "Hungary"
 "Italy"
 "Liechtenstein"
 "Slovakia"
 "Slovenia"
 "Switzerland"
)) ( "Azerbaijan" ("Armenia"
 "Georgia"
 "Iran"
 "Russia"
 "Turkey"
)) ( "Azores" (
)) ( "Bahamas" (
)) ( "Bahrain" (
)) ( "Baker Island and Howland Island" (
)) ( "Bangladesh" ("Burma"
 "India"
)) ( "Barbados" (
)) ( "Bassas da India, Europa Island, and Juan de Nova Island" (
)) ( "Belarus" ("Latvia"
 "Lithuania"
 "Poland"
 "Russia"
 "Ukraine"
)) ( "Belgium" ("France"
 "Germany"
 "Luxembourg"
 "Netherlands"
)) ( "Belize" ("Guatemala"
 "Mexico"
)) ( "Benin" ("Burkina Faso"
 "Niger"
 "Nigeria"
 "Togo"
)) ( "Bermuda" (
)) ( "Bhutan" ("People's Republic of China"
 "India"
)) ( "Bolivia" ("Argentina"
 "Brazil"
 "Chile"
 "Paraguay"
 "Peru"
)) ( "Bosnia and Herzegovina" ("Croatia"
 "Montenegro"
 "Serbia"
)) ( "Botswana" ("Namibia"
 "South Africa"
 "Zambia"
 "Zimbabwe"
)) ( "Bouvet Island" (
)) ( "Brazil" ("Argentina"
 "Bolivia"
 "Colombia"
 "French Guiana"
 "Guyana"
 "Paraguay"
 "Peru"
 "Suriname"
 "Uruguay"
 "Venezuela"
)) ( "British Antarctic Territory" ("Antártica Chilena Province"
 "Argentine Antarctica"
 "Queen Maud Land"
)) ( "British Indian Ocean Territory" (
)) ( "British Virgin Islands" (
)) ( "Brunei" ("Malaysia"
)) ( "Bulgaria" ("Greece"
 "Macedonia"
 "Romania"
 "Serbia"
 "Turkey"
)) ( "Burkina Faso" ("Benin"
 "Côte d'Ivoire"
 "Ghana"
 "Mali"
 "Niger"
 "Togo"
)) ( "Burma" ("Bangladesh"
 "People's Republic of China"
 "India"
 "Laos"
 "Thailand"
)) ( "Burundi" ("Democratic Republic of the Congo"
 "Rwanda"
 "Tanzania"
)) ( "Cambodia" ("Laos"
 "Thailand"
 "Vietnam"
)) ( "Cameroon" ("Central African Republic"
 "Chad"
 "Republic of the Congo"
 "Equatorial Guinea"
 "Gabon"
 "Nigeria"
)) ( "Canada" ("United States"
)) ( "Cape Verde" (
)) ( "Cayman Islands" (
)) ( "Central African Republic" ("Cameroon"
 "Chad"
 "Democratic Republic of the Congo"
 "Republic of the Congo"
 "South Sudan"
 "Sudan"
)) ( "Chad" ("Cameroon"
 "Central African Republic"
 "Libya"
 "Niger"
 "Nigeria"
 "Sudan"
)) ( "Chile" ("Argentina"
 "Bolivia"
 "Peru"
)) ( "People's Republic of China" ("Afghanistan"
 "Bhutan"
 "Burma"
 "Hong Kong"
 "India"
 "Kazakhstan"
 "North Korea"
 "Kyrgyzstan"
 "Laos"
 "Macau"
 "Mongolia"
 "Nepal"
 "Pakistan"
 "Russia"
 "Tajikistan"
 "Vietnam"
)) ( "Christmas Island" (
)) ( "Clipperton Island" (
)) ( "Cocos Islands" (
)) ( "Colombia" ("Brazil"
 "Ecuador"
 "Panama"
 "Peru"
 "Venezuela"
)) ( "Comoros" (
)) ( "Democratic Republic of the Congo" ("Angola"
 "Burundi"
 "Central African Republic"
 "Republic of the Congo"
 "Rwanda"
 "South Sudan"
 "Tanzania"
 "Uganda"
 "Zambia"
)) ( "Republic of the Congo" ("Angola"
 "Cameroon"
 "Central African Republic"
 "Democratic Republic of the Congo"
 "Gabon"
)) ( "Cook Islands" (
)) ( "Costa Rica" ("Nicaragua"
 "Panama"
)) ( "Côte d'Ivoire" ("Burkina Faso"
 "Ghana"
 "Guinea"
 "Liberia"
 "Mali"
)) ( "Croatia" ("Bosnia and Herzegovina"
 "Hungary"
 "Montenegro"
 "Serbia"
 "Slovenia"
)) ( "Crozet Islands" (
)) ( "Cuba" (
)) ( "Curaçao" (
)) ( "Cyprus" ("Akrotiri and Dhekelia"
)) ( "Northern Cyprus" ("Akrotiri and Dhekelia"
 "Cyprus"
)) ( "Czech Republic" ("Austria"
 "Germany"
 "Poland"
 "Slovakia"
)) ( "Denmark" ("Germany"
)) ( "Djibouti" ("Eritrea"
 "Ethiopia"
 "Somalia"
)) ( "Dominica" (
)) ( "Dominican Republic" ("Haiti"
)) ( "East Timor" ("Indonesia"
)) ( "Ecuador" ("Colombia"
 "Peru"
)) ( "Egypt" ("Gaza Strip"
 "Israel"
 "Libya"
 "Sudan"
)) ( "El Salvador" ("Guatemala"
 "Honduras"
)) ( "Equatorial Guinea" ("Cameroon"
 "Gabon"
)) ( "Eritrea" ("Djibouti"
 "Ethiopia"
 "Sudan"
)) ( "Estonia" ("Latvia"
 "Russia"
)) ( "Ethiopia" ("Djibouti"
 "Eritrea"
 "Kenya"
 "Somalia"
 "South Sudan"
 "Sudan"
)) ( "European Union" ("Albania"
 "Andorra"
 "Belarus"
 "Bosnia and Herzegovina"
 "Brazil"
 "Liechtenstein"
 "Macedonia"
 "Monaco"
 "Montenegro"
 "Morocco"
 "Norway"
 "Russia"
 "San Marino"
 "Serbia"
 "Suriname"
 "Switzerland"
 "Turkey"
 "Ukraine"
 "Vatican City"
)) ( "Falkland Islands" (
)) ( "Faroe Islands" (
)) ( "Fiji" (
)) ( "Finland" ("Norway"
 "Sweden"
 "Russia"
)) ( "France" ("Andorra"
 "Belgium"
 "Germany"
 "Italy"
 "Luxembourg"
 "Monaco"
 "Spain"
 "Switzerland"
)) ( "French Guiana" ("Brazil"
 "Suriname"
)) ( "French Polynesia" (
)) 

;( "French Southern and Antarctic Lands" (
;)) 

( "Gabon" ("Cameroon"
 "Republic of the Congo"
 "Equatorial Guinea"
)) ( "The Gambia" ("Senegal"
)) ( "Gaza Strip" ("Egypt"
 "Israel"
)) ( "Georgia" ("Armenia"
 "Azerbaijan"
 "Russia"
 "Turkey"
)) ( "Germany" ("Austria"
 "Belgium"
 "Czech Republic"
 "Denmark"
 "France"
 "Luxembourg"
 "Netherlands"
 "Poland"
 "Switzerland"
)) ( "Ghana" ("Burkina Faso"
 "Côte d'Ivoire"
 "Togo"
)) ( "Gibraltar" ("Spain"
)) ( "Glorioso Islands" (
)) ( "Greece" ("Albania"
 "Bulgaria"
 "Turkey"
 "Macedonia"
)) ( "Greenland" (
)) ( "Grenada" (
)) ( "French Southern and Antarctic Lands" (
)) ( "Guadeloupe" (
)) ( "Guam" (
)) ( "Guatemala" ("Belize"
 "El Salvador"
 "Honduras"
 "Mexico"
)) ( "Guernsey" (
)) ( "Guinea" ("Côte d'Ivoire"
 "Guinea-Bissau"
 "Liberia"
 "Mali"
 "Senegal"
 "Sierra Leone"
)) ( "Guinea-Bissau" ("Guinea"
 "Senegal"
)) ( "Guyana" ("Brazil"
 "Suriname"
 "Venezuela"
)) ( "Haiti" ("Dominican Republic"
)) ( "Heard Island and McDonald Islands" (
)) ( "Honduras" ("Guatemala"
 "El Salvador"
 "Nicaragua"
)) ( "Hong Kong" ("People's Republic of China"
)) 

;( "Howland Island andBaker Island" (
;))

 ( "Hungary" ("Austria"
 "Croatia"
 "Romania"
 "Serbia"
 "Slovakia"
 "Slovenia"
 "Ukraine"
)) ( "Iceland" (
)) 

;( "Île Saint-Paul andAmsterdam Island" (
;))

 ( "India" ("Bangladesh"
 "Bhutan"
 "Burma"
 "People's Republic of China"
 "Nepal"
 "Pakistan"
 "Sri Lanka"
)) ( "Indonesia" ("East Timor"
 "Malaysia"
 "Papua New Guinea"
)) ( "Iran" ("Afghanistan"
 "Armenia"
 "Azerbaijan"
 "Iraq"
 "Pakistan"
 "Turkey"
 "Turkmenistan"
)) ( "Iraq" ("Iran"
 "Jordan"
 "Kuwait"
 "Saudi Arabia"
 "Syria"
 "Turkey"
)) ( "Ireland" ("United Kingdom"
)) ( "Isle of Man" (
)) ( "Israel" ("Egypt"
 "Gaza Strip"
 "Jordan"
 "Lebanon"
 "Syria"
 "West Bank"
)) ( "Italy" ("Austria"
 "France"
 "San Marino"
 "Slovenia"
 "Switzerland"
 "Vatican City"
)) ( "Jamaica" (
)) ( "Japan" (
)) ( "Jarvis Island" (
)) ( "Jersey" (
)) ( "Johnston Atoll" (
)) ( "Jordan" ("Iraq"
 "Israel"
 "Saudi Arabia"
 "Syria"
 "West Bank"
)) 

;( "Juan de Nova Island,Bassas da India, and Europa Island" (
;))

 ( "Kazakhstan" ("People's Republic of China"
 "Kyrgyzstan"
 "Russia"
 "Turkmenistan"
 "Uzbekistan"
)) ( "Kenya" ("Ethiopia"
 "Somalia"
 "South Sudan"
 "Tanzania"
 "Uganda"
)) ( "Kerguelen Islands" (
)) ( "Kingman Reef and Palmyra Atoll" (
)) ( "Kiribati" (
)) ( "North Korea" ("People's Republic of China"
 "South Korea"
 "Russia"
)) ( "South Korea" ("North Korea"
)) ( "Kosovo" ("Albania"
 "Macedonia"
 "Montenegro"
 "Serbia"
)) ( "Kuwait" ("Iraq"
 "Saudi Arabia"
)) ( "Kyrgyzstan" ("People's Republic of China"
 "Kazakhstan"
 "Tajikistan"
 "Uzbekistan"
)) ( "Laos" ("Burma"
 "Cambodia"
 "People's Republic of China"
 "Thailand"
 "Vietnam"
)) ( "Latvia" ("Belarus"
 "Estonia"
 "Lithuania"
 "Russia"
)) ( "Lebanon" ("Israel"
 "Syria"
)) ( "Lesotho" ("South Africa"
)) ( "Liberia" ("Guinea"
 "Côte d'Ivoire"
 "Sierra Leone"
)) ( "Libya" ("Algeria"
 "Chad"
 "Egypt"
 "Niger"
 "Sudan"
 "Tunisia"
)) ( "Liechtenstein" ("Austria"
 "Switzerland"
)) ( "Lithuania" ("Belarus"
 "Latvia"
 "Poland"
 "Russia"
)) ( "Luxembourg" ("Belgium"
 "France"
 "Germany"
)) ( "Macau" ("People's Republic of China"
)) ( "Macedonia" ("Albania"
 "Bulgaria"
 "Greece"
 "Kosovo"
 "Serbia"
)) ( "Macquarie Island" (
)) ( "Madagascar" (
)) ( "Madeira" (
)) ( "Malawi" ("Mozambique"
 "Tanzania"
 "Zambia"
)) ( "Malaysia" ("Brunei"
 "Indonesia"
 "Thailand"
)) ( "Maldives" (
)) ( "Mali" ("Algeria"
 "Burkina Faso"
 "Guinea"
 "Côte d'Ivoire"
 "Mauritania"
 "Niger"
 "Senegal"
)) ( "Malta" (
)) ( "Marshall Islands" (
)) ( "Martinique" (
)) ( "Mauritania" ("Algeria"
 "Mali"
 "Senegal"
 "Western Sahara"
)) ( "Mauritius" (
)) ( "Mayotte" (
)) ( "Mexico" ("Belize"
 "Guatemala"
 "United States"
)) ( "Federated States of Micronesia" (
)) ( "Midway Atoll" (
)) ( "Moldova" ("Romania"
 "Ukraine"
)) ( "Monaco" ("France"
)) ( "Mongolia" ("People's Republic of China"
 "Russia"
)) ( "Montenegro" ("Albania"
 "Bosnia and Herzegovina"
 "Croatia"
 "Kosovo"
 "Serbia"
)) ( "Montserrat" (
)) ( "Morocco" ("Algeria"
 "Western Sahara"
 "Spain"
)) ( "Mozambique" ("Malawi"
 "South Africa"
 "Swaziland"
 "Tanzania"
 "Zambia"
 "Zimbabwe"
)) ( "Nagorno-Karabakh Republic" ("Armenia"
 "Azerbaijan"
 "Iran"
)) ( "Namibia" ("Angola"
 "Botswana"
 "South Africa"
 "Zambia"
)) ( "Nauru" (
)) ( "Navassa Island" (
)) ( "Nepal" ("People's Republic of China"
 "India"
)) ( "Netherlands" ("Belgium"
 "Germany"
)) ( "New Caledonia" (
)) ( "New Zealand" (
)) ( "Nicaragua" ("Costa Rica"
 "Honduras"
)) ( "Niger" ("Algeria"
 "Benin"
 "Burkina Faso"
 "Chad"
 "Libya"
 "Mali"
 "Nigeria"
)) ( "Nigeria" ("Benin"
 "Cameroon"
 "Chad"
 "Niger"
)) ( "Niue" (
)) ( "Norfolk Island" (
)) ( "Northern Mariana Islands" (
)) ( "Norway" ("Finland"
 "Sweden"
 "Russia"
)) ( "Oman" ("Saudi Arabia"
 "United Arab Emirates"
 "Yemen"
)) ( "Pakistan" ("Afghanistan"
 "People's Republic of China"
 "India"
 "Iran"
)) ( "Palau" (
)) ( "Palestinian territories" ("Egypt"
 "Israel"
 "Jordan"
)) 

;( "Palmyra Atoll andKingman Reef" (
;)) 

( "Panama" ("Colombia"
 "Costa Rica"
)) ( "Papua New Guinea" ("Indonesia"
)) ( "Paraguay" ("Argentina"
 "Bolivia"
 "Brazil"
)) ( "Peru" ("Bolivia"
 "Brazil"
 "Chile"
 "Colombia"
 "Ecuador"
)) ( "Peter I Island" (
)) ( "Philippines" (
)) ( "Pitcairn Islands" (
)) ( "Poland" ("Belarus"
 "Czech Republic"
 "Germany"
 "Lithuania"
 "Russia"
 "Slovakia"
 "Ukraine"
)) ( "Portugal" ("Spain"
)) ( "Puerto Rico" (
)) ( "Qatar" ("Saudi Arabia"
 "United Arab Emirates"
)) ( "Queen Maud Land" ("Australian Antarctic Territory"
 "British Antarctic Territory"
)) ( "Réunion" (
)) ( "Romania" ("Bulgaria"
 "Hungary"
 "Moldova"
 "Serbia"
 "Ukraine"
)) ( "Ross Dependency" ("Australian Antarctic Territory"
)) ( "Russia" ("Azerbaijan"
 "Belarus"
 "People's Republic of China"
 "Estonia"
 "Finland"
 "Georgia"
 "Kazakhstan"
 "North Korea"
 "Latvia"
 "Lithuania"
 "Mongolia"
 "Norway"
 "Poland"
 "Ukraine"
)) ( "Rwanda" ("Burundi"
 "Democratic Republic of the Congo"
 "Tanzania"
 "Uganda"
)) ( "Saint Barthélemy" (
)) ( "Saint Helena, Ascension and Tristan da Cunha" (
)) ( "Saint Kitts and Nevis" (
)) ( "Saint Lucia" (
)) ( "Saint Martin" ("Sint Maarten"
)) ( "Saint Pierre and Miquelon" (
)) ( "Saint Vincent and the Grenadines" (
)) ( "Samoa" (
)) ( "San Marino" ("Italy"
)) ( "São Tomé and Príncipe" (
)) ( "Saudi Arabia" ("Iraq"
 "Jordan"
 "Kuwait"
 "Oman"
 "Qatar"
 "United Arab Emirates"
 "Yemen"
)) ( "Senegal" ("The Gambia"
 "Guinea"
 "Guinea-Bissau"
 "Mali"
 "Mauritania"
)) ( "Serbia" ("Bosnia and Herzegovina"
 "Bulgaria"
 "Croatia"
 "Hungary"
 "Kosovo"
 "Macedonia"
 "Montenegro"
 "Romania"
)) ( "Seychelles" (
)) ( "Sierra Leone" ("Guinea"
 "Liberia"
)) ( "Singapore" (
)) ( "Sint Maarten" ("Saint Martin"
)) ( "Slovakia" ("Austria"
 "Czech Republic"
 "Hungary"
 "Poland"
 "Ukraine"
)) ( "Slovenia" ("Austria"
 "Croatia"
 "Italy"
 "Hungary"
)) ( "Solomon Islands" (
)) ( "Somalia" ("Djibouti"
 "Ethiopia"
 "Kenya"
)) ( "Somaliland" ("Djibouti"
 "Ethiopia"
 "Somalia"
)) ( "South Africa" ("Botswana"
 "Lesotho"
 "Mozambique"
 "Namibia"
 "Swaziland"
 "Zimbabwe"
)) ( "South Georgia and the South Sandwich Islands" (
)) ( "South Sudan" ("Central African Republic"
 "Democratic Republic of the Congo"
 "Ethiopia"
 "Kenya"
 "Sudan"
 "Uganda"
)) ( "Spain" ("Andorra"
 "France"
 "Gibraltar"
 "Portugal"
 "Morocco"
)) ( "Sri Lanka" ("India"
)) ( "Sudan" ("Central African Republic"
 "Chad"
 "Egypt"
 "Eritrea"
 "Ethiopia"
 "Libya"
 "South Sudan"
)) ( "Suriname" ("Brazil"
 "French Guiana"
 "Guyana"
)) ( "Svalbard" (
)) ( "Swaziland" ("Mozambique"
 "South Africa"
)) ( "Sweden" ("Finland"
 "Norway"
)) ( "Switzerland" ("Austria"
 "France"
 "Italy"
 "Liechtenstein"
 "Germany"
)) ( "Syria" ("Iraq"
 "Israel"
 "Jordan"
 "Lebanon"
 "Turkey"
)) ( "Taiwan" (
)) ( "Tajikistan" ("Afghanistan"
 "People's Republic of China"
 "Kyrgyzstan"
 "Uzbekistan"
)) ( "Tanzania" ("Burundi"
 "Democratic Republic of the Congo"
 "Kenya"
 "Malawi"
 "Mozambique"
 "Rwanda"
 "Uganda"
 "Zambia"
)) ( "Thailand" ("Burma"
 "Cambodia"
 "Laos"
 "Malaysia"
)) ( "Togo" ("Benin"
 "Burkina Faso"
 "Ghana"
)) ( "Tokelau" (
)) ( "Tonga" (
)) ( "Transnistria" ("Moldova"
 "Ukraine"
)) ( "Tromelin Island" (
)) ( "Trinidad and Tobago" (
)) ( "Tunisia" ("Algeria"
 "Libya"
)) ( "Turkey" ("Armenia"
 "Azerbaijan"
 "Bulgaria"
 "Georgia"
 "Greece"
 "Iran"
 "Iraq"
 "Syria"
)) ( "Turkmenistan" ("Afghanistan"
 "Iran"
 "Kazakhstan"
 "Uzbekistan"
)) ( "Turks and Caicos Islands" (
)) ( "Tuvalu" (
)) ( "Uganda" ("Democratic Republic of the Congo"
 "Kenya"
 "Rwanda"
 "South Sudan"
 "Tanzania"
)) ( "Ukraine" ("Belarus"
 "Hungary"
 "Moldova"
 "Poland"
 "Romania"
 "Russia"
 "Slovakia"
)) ( "United Arab Emirates" ("Oman"
 "Qatar"
 "Saudi Arabia"
)) ( "United Kingdom" ("Ireland"
)) ( "United States" ("Canada"
 "Mexico"
)) ( "United States Virgin Islands" (
)) ( "Uruguay" ("Argentina"
 "Brazil"
)) ( "Uzbekistan" ("Afghanistan"
 "Kazakhstan"
 "Kyrgyzstan"
 "Tajikistan"
 "Turkmenistan"
)) ( "Vanuatu" (
)) ( "Vatican City" ("Italy"
)) ( "Venezuela" ("Brazil"
 "Colombia"
 "Guyana"
)) ( "Vietnam" ("Cambodia"
 "People's Republic of China"
 "Laos"
)) ( "Wake Island" (
)) ( "Wallis and Futuna" (
)) ( "West Bank" ("Israel"
 "Jordan"
)) ( "Western Sahara" ("Algeria"
 "Mauritania"
 "Morocco"
)) ( "Yemen" ("Oman"
 "Saudi Arabia"
)) ( "Zambia" ("Angola"
 "Botswana"
 "Democratic Republic of the Congo"
 "Malawi"
 "Mozambique"
 "Namibia"
 "Tanzania"
 "Zimbabwe"
)) ( "Zimbabwe" ("Botswana"
 "Mozambique"
 "South Africa"
 "Zambia"
))))

;;Matt Carlstrom ******************************************************************************
(let ((explored '()))

    (defun has-cycle-rec (map parent)
  
      ;set children to the list of nodes connected to parent
    (let ((children (second (find-if #'(lambda (x) (equal (first x) parent)) map))))
      ;add parent to the list of explored nodes
      (setf explored (cons parent explored))
      (cond ((null map) nil) ;if map is nil, then we've explored everything
        (t (let ((cycle-found nil));otherwise
            ;perform has-cycle-rec on each of the children
            ;until we've reached a node we have already explored (return false)
            (dolist (e children cycle-found)
              (if (and (not (equal parent e)) (find e explored))
                (setf cycle-found t)
                (has-cycle-rec map e)
              )
            )
          )
        )
      )
    )
  )
 
  ;wrapper function that starts out has-cycle-rec
  (defun has-cycle (map)
  ;start out parent as the very first node that will be explored
    (let ((return_val (has-cycle-rec map (car (car map)))))
      (setf explored '())
      return_val
    )
  )
)

;; *******************************************************************************

;; Joshua Lilly ******************************************************************

;; example call  (remove-from-neighbors *australia* (second (first *australia*)) 'WA)
  ;; will remove wa from the list portion of all elements in *australia*
;; assocList - the list to cheack
;; associationsList - the list of associations our target symbol
  ;; is associated with
;; symbol the symbol to remove from the nodes
(defun remove-from-neighbors (map associationsList symbol)
  (let ((sym1 () ) )
    (progn
      (loop for x in associationsList do
        ;; store the symbol in the association list
        ;; that we need to find and delete.
        (setq sym1 x)
        ;; find the list that contains a reference to
        ;; the element we are about to delete and remove 
        ;; the element we are deleting from that elements list.
        (loop for y in map do
          (if (eq (first y) sym1)        
            ;; this is the list with the edge we want to remove
            ;; which means the second element of y is the list which
            ;; contains that element.
            (loop for z in (second y) do
              (if (eq z symbol)
                (progn
                  (format t "removing ")
                  (princ z)
                  (format t " from ")
                  (princ y)
                  (format t "~%") 
 
                  (setf (second y) (remove z (second y)))
                )              
              )
            )
          )
        )
      )
    )
  )
)

(defun remove-zero-one (list)

  (format t "list is ")
  (princ list)
  (format t "~%")

  (setq list (sort list #'(lambda(x y)(< (length (second x)) (length (second y))))))
  (loop while (and (not (null list)) (or (eq 0 (length (second (first list)))) 
    (eq 1 (length (second (first list)))))) do
    (remove-from-neighbors list (second (first list)) (first (first list)))
    (setf list (delete (first list) list))
    (setf list (sort list #'(lambda(x y)(< (length (second x)) (length (second y))))))
    (format t "list after deleting ")
    (princ list)
    (format t "~%")
  )
  list
)

;; return the largest degree in the given lst
(defun find-largest-degree (lst)
  (let ( (i 0) (largest () ) )
    (loop while (< i (length lst)) do
      (if (> (length (second (nth i lst))) (length (second largest)))
        (setq largest (nth i lst)) 
      )
      (setq i (+ 1 i))
    )
    largest
  )
)

(defun copy (lst)
  (let ((cop () ) (temp1 ()) (temp2 ()) )
    (loop for x in lst do
      (setq temp1 (first x))
      (setq temp2 (copy-list (second x)))
      (setf cop (append cop (list (list temp1 temp2))))
    )
    cop
  )
)

;; This function returns the cutset and mutates countryList 
;; into the desired tree
;; *** Note the first entry in the adjancency list after th
;; the tree has been created is the back edge for the given node.
(defun MGA (countryList) 
  (let ((F () ) (Gi () ) (largest () ) (copy ()) )
    ;; make a deep copy for the functions to mutate
    ;; since we don't want to destry the origional just yet
    (setf copy (copy countryList))

    (setf copy (remove-zero-one copy))
    (setq Gi copy)
    (loop while (has-cycle Gi) do
      ;; At this point in the algorithm weight is going to
      ;; always be 1 so the smallest weight to degree ration
      ;; will be the node with the largest degree. Which is at
      ;; the end of the list
      (setq largest (last copy))

      (format t "Removing ")
      (princ largest)
      (format t "~%")
       
      (setq F (append F  largest))
      (format t "The cutset is now ")
      (princ F)
      (format t "~%")

      (setf copy (delete (first (last copy)) copy))
      (remove-from-neighbors copy (second (first largest)) (first (first largest)))

      ;; G1 at this point should be === to countryList \ all verticies
      ;; with 0 or one as their degree and without the largest
      ;; node we just found in this iteration. Since the difference
      ;; between country list is such. We should be able to run the
      ;; remove-zero-one algorithm on the countryList graph and receive
      ;; a new G1 which is equivalent to countryList without any nodes with
      ;; degree 0 or 1 (without the node we extracted in this iteration) and
      ;; that should be what we want... I think... that still needs to be tested
      (setf copy (remove-zero-one copy))
      (setq Gi copy)
    )
    ;; return the cut set
    F
  )
)

;; makes the tree portion on the list
(defun get-tree (countryList minCut)
  ;;make tree
  (loop for m in minCut do
    (setf countryList (delete m countryList :test #'equal))
    (remove-from-neighbors countryList (second minCut) (first minCut))
  )   
)
;; End Joshua Lilly ************************************************************************

;;; DD *******************************************************************
;;; Everything added between here and the next DD *********** line
;;; added by David DiMenna originally.
;;;
;;; Just doing this to make it easier to note and so that I don't mess up any
;;; other code.


;;; Takes generated cutset and creates an assoc list by referencing
;;; original assoc-list.  This new assoc list is self-contained, the only edges 
;;; included are ones which connect to other vertices in the cutset.
(defun gen-cutset-assoc (cutset assoc-list)

  (let ((cutset-assoc)
        (assoc-copy))
    (setf assoc-copy (copy-tree assoc-list))

    (dolist (current cutset)
      (setf cutset-assoc (cons (find current assoc-copy :test #'equal :key #'car) 
        cutset-assoc))
    )

    ;; scrub new assoc-list, removing edges to vertices outside of cutset
    (dolist (current cutset-assoc)
      (dolist (x (cadr current))
        (if (not (member x cutset :test #'equal))
          (setf (cadr current) (remove x (cadr current)))
        )
      )
    )
    (reverse cutset-assoc)
  )
)


;;; helper to allow sorting by degree (length of cdr in assoc list)
(defun deg-sort (x y)
  (< (length (cadr x)) (length (cadr y)))
)


;;; helper, sort alphabetically by vertex name in assoc-list
(defun alp-sort (x y)
  (string-lessp (car x) (car y))
)


;;; Shuffling function that I found on the internet - I take zero credit for this
;;; function, I'm just using it because I needed a shuffle and since it was to get 
;;; the world-map to work (ie, not required for the project) I went with an easy
;;; option.
;;; Original found at:
;;; http://codegists.com/snippet/common-lisp/list-shufflerlisp_shortsightedsid_common-lisp
(defun list-shuffler-iterative (input-list)
  ;;"Shuffle a list iteratively using a loop"

  ;; minor addition to leave original list intact
  (let ((input-list-copy))
  		(setf input-list-copy (copy-tree input-list))

	  (loop with l = (length input-list-copy)
	     for i below l
	     do (rotatef (nth i input-list-copy)
	         (nth (random l) input-list-copy))
	     )
	  input-list-copy)
	)



;;; New coloring function. Attempts to find legal color assignment for entire
;;; assoc list by starting at high degree vertices first (mode 1) or randomly
;;; (mode 2).
;;;
;;; This function is extremely greedy and will simply ignore states that dont
;;; have any legal color options, so don't feed it a big assoc-list that hasnt
;;; been cutsetted (is that a word?)
;;;
;;; This will naturally color with the fewest possible colors.
;;;
;;; Requires an assoc-list, color-list, and any predetermined colorings (used
;;; when integrating a cutset coloring with the rest of the map, otherwise 3rd
;;; argument is just nil)
;;;
;;; Returns list of cons pairs of (VERTEX . COLOR), sorted by VERTEX
(defun color-greedy (assoc-list color-list coloring mode)
  (let ((color-assignment)
  		(fail-count 0)
      	(sorted-list))

    (setf color-assignment coloring)
    (cond
    	((= mode 1)
    		(setf sorted-list (reverse (sort (copy-tree assoc-list) #'deg-sort)))
    	)
    	((= mode 2)
    		(setf sorted-list (list-shuffler-iterative (copy-tree assoc-list)))
    	)

    )
    ;(setf sorted-list (reverse (sort (copy-tree assoc-list) #'deg-sort)))

    (dolist (current sorted-list)
      (let ((red-flag)  ; t if a neighbor is red (or whatever 1st color is)
          (green-flag)  ; t if a neighbor is green (2nd)
          (blue-flag) ; t if a neighbor is blue (3rd)
          (yellow-flag)); t if a neighbor is yellow (4th in color list)


        (dolist (x (cadr current))
          (let ((temp-check))
            (setf temp-check (find x color-assignment :test #'equal :key #'car))
            (if temp-check
              (cond
                ((eql (cdr temp-check) (nth 0 color-list)) 
                  (setf red-flag t))
                ((eql (cdr temp-check) (nth 1 color-list)) 
                  (setf green-flag t))
                ((eql (cdr temp-check) (nth 2 color-list)) 
                  (setf blue-flag t))
                ((eql (cdr temp-check) (nth 3 color-list)) 
                  (setf yellow-flag t))
                (t nil)
              )
            )
          )
        )

        ;; color according to flags if the vertex isnt already in list
        ;; of color assignments
        (if (not (find (car current) color-assignment :test #'equal :key #'car))
          (cond 
            ((not red-flag)
              (setf color-assignment (cons (cons (car current) (nth 0 color-list))
                color-assignment)))
            ((not green-flag)
              (setf color-assignment (cons (cons (car current) (nth 1 color-list))
                color-assignment)))
            ((not blue-flag)
              (setf color-assignment (cons (cons (car current) (nth 2 color-list))
                color-assignment)))
            ((not yellow-flag)
              (setf color-assignment (cons (cons (car current) (nth 3 color-list))
                color-assignment)))
            (t 	(return-from color-greedy) 
            	;(format t "~%     NO LEGAL COLOR ASSIGNMENT FOR ~a~%Cancelling this attempt..." current)
            	;(setf fail-count (1+ fail-count))
            	)
          )
        )
        
      )
    )
    (if (not (= fail-count 0)) (format t "	fail-count: ~a" fail-count))
    color-assignment
  )
)


;;; Simple function to scrub output from MGA function to a list of vertices only
(defun scrub-mga (mga-out)
  (let ((new-out))
    (dolist (current mga-out)
      (setf new-out (cons (car current) new-out))
    )
    new-out
  )
)


;;; Wrapper function to handle coloring of map in several steps.
;;; Requires the original assoc-list and the color list.
;;; Example function call: (color-map *50-states* '(R G B Y))
;;;
;;; Returns a list of cons pairs indicating color assignments in 
;;; alphabetical order according to vertex name
;;; Example output: ((AK R) (CA B) (MD R) (NM G) (WY B))
;;;
;;; Attempts an educated guess (highest deg first) for coloring the first time.
;;; If that fails, it starts coloring in random order until it finishes a legal
;;; color assignment for the entire map.
(defun color-map (assoc-list color-list)
  (let ((cutset-assoc)
      (cutset-coloring)
      (tree-coloring)
      (cutset))

    (setf cutset (scrub-mga (mga assoc-list)))
    (setf cutset-assoc (gen-cutset-assoc cutset assoc-list))
    (setf cutset-coloring (color-greedy cutset-assoc color-list nil 1))
    (setf tree-coloring (color-greedy assoc-list color-list cutset-coloring 1))
    
    (do ((i 0 (1+ i)))
    	((= (length tree-coloring) (length assoc-list))
    		(format t "~%Success on attempt ~a:" (1+ i)))
    	
    	(format t "~%Attempt ~a failed, trying again...." (1+ i))

    	(setf cutset-coloring (color-greedy cutset-assoc color-list nil 2))
    	(setf tree-coloring (color-greedy assoc-list color-list cutset-coloring 2))
    )

    (sort tree-coloring #'alp-sort)
  )
)


;;; Function just to show an example run
(defmacro pr (form)
  `(format t "~%~a~%~%~a~%" ',form ,form)
)

(defun run-proj ()

  (format t "~%-------------------------------------~%*50-states* with 4 colors:~%")
  (pr (color-map *50-states* '(R G B Y)))
  
  (format t "~%-------------------------------------~%Australia Map with 4 colors (note only 3 used):~%")
  (pr (color-map *australia* '(R G B Y)))

)


;;; end of DD contribution
;;; DD *********************************************************************

