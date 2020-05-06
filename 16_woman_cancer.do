*w_papsmear	Women received a pap smear  (1/0)

gen w_papsmear =.

*w_mammogram	Women received a mammogram (1/0)
gen w_mammogram =.


*Add reference period.
gen w_papsmear_ref = ""

if inlist(name, "Benin2017") {
	replace w_papsmear_ref = "ever"
}


gen w_mammogram_ref = ""

if inlist(name, "Benin2017") {
	replace w_mammogram_ref = "ever"
}


* Add Age Group.

gen w_mammogram_age = ""

if inlist(name, "Benin2017") {
	replace w_mammogram_age = "20-49"
}

gen w_papsmear_age = ""

if inlist(name, "Benin2017") {
	replace w_papsmear_age = "20-49"
}



