
.NOTPARALLEL:

all:

clean:
	rm -rf e18???-1-b?_10??.*

vex:
	vex2difx -f e18e22-1-b3.v2d
	vex2difx -f e18c25-1-b3.v2d
	vex2difx -f e18d28-1-b3.v2d
	calcifMixed *.calc
	genmachines *.input

run:
	startdifx --dont-calc -f --nomachines *.input

check:
	rm -rf 3645 3647 3649
	difx2mark4 -s ../ehtc-template.codes -e 3645 e18e22-1-b?_10??.difx
	difx2mark4 -s ../ehtc-template.codes -e 3647 e18c25-1-b?_10??.difx
	difx2mark4 -s ../ehtc-template.codes -e 3649 e18d28-1-b?_10??.difx

ff:
	rm -rf 36*/*/*.B.*
	../parFourfit.sh ../cf_1234 3645/* 3647/* 3649/*

ffAutos:
	# exhaustiveAutocorrs: DiFX 2.6.x
	../parFourfit_autoOnly.sh ../cf_1234 3645/* 3647/* 3649/*

alist:
	rm -f 3645.alist_v6; alist -o 3645.alist_v6 -v6 3645
	rm -f 3647.alist_v6; alist -o 3647.alist_v6 -v6 3647
	rm -f 3649.alist_v6; alist -o 3649.alist_v6 -v6 3649
