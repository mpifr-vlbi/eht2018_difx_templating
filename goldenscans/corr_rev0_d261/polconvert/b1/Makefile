TOP:=../../
QA_DIR:=../../../qa2_unpacked/
PC_OPTS:=-v -A 0.0240526 -S LM,PV,SW,AX,SZ -f 4 -P 4

.NOTPARALLEL:

all:

clean:
	rm -rf e18???-1-b?_10??.* 3645 3647 3649 *alist* *casa-logs*

pc:
	drivepolconvert.py $(PC_OPTS) -r -q v9 -l $(QA_DIR)/tracke  e18e22-1-b?_1000.input
	drivepolconvert.py $(PC_OPTS) -r -q v9 -l $(QA_DIR)/track-e18c25 e18c25-1-b?_1000.input
	drivepolconvert.py $(PC_OPTS) -r -q v8 -l $(QA_DIR)/2017.1.01181.V_cena_trackD e18d28-1-b?_1000.input e18d28-1-b?_1001.input

ff:
	rm -rf 3645 3647 3649
	difx2mark4 -s $(TOP)/ehtc-template.codes -e 3645 e18e22-1-b?_10??.difx
	difx2mark4 -s $(TOP)/ehtc-template.codes -e 3647 e18c25-1-b?_10??.difx
	difx2mark4 -s $(TOP)/ehtc-template.codes -e 3649 e18d28-1-b?_10??.difx
	$(TOP)/parFourfit.sh $(TOP)/cf_1234 3645/* 3647/* 3649/*

ffAutos:
	# exhaustiveAutocorrs: DiFX 2.6.1+
	$(TOP)/parFourfit_autoOnly.sh $(TOP)/cf_1234 3645/* 3647/* 3649/*

alist:
	rm -f 3645.alist_v6; alist -o 3645.alist_v6 -v6 3645
	rm -f 3647.alist_v6; alist -o 3647.alist_v6 -v6 3647
	rm -f 3649.alist_v6; alist -o 3649.alist_v6 -v6 3649

