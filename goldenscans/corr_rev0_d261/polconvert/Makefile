TOP:=../../
QA2_ROOT:=/Exps/TESTS/EHT_2018/goldenscans/qa2/

.NOTPARALLEL:

all:

clean:
	make -C b1 clean
	make -C b2 clean
	make -C b3 clean
	make -C b4 clean

prepQA2:
	mkdir -p $(TOP)/qa2_unpacked/
	tar xzvf $(QA2_ROOT)/tracke-20191026.APP_DELIVERABLES.tgz -C $(TOP)/qa2_unpacked/ ; mv $(TOP)/qa2_unpacked/README.DRIVEPOLCONVERT $(TOP)/qa2_unpacked/README.DRIVEPOLCONVERT.tracke-20191026
	tar xzvf $(QA2_ROOT)/track-e18c25-20191027.APP_DELIVERABLES.tgz -C $(TOP)/qa2_unpacked/ ; mv $(TOP)/qa2_unpacked/README.DRIVEPOLCONVERT $(TOP)/qa2_unpacked/README.DRIVEPOLCONVERT.track-e18c25-20191027
	tar xzvf $(QA2_ROOT)/2017.1.01181.V_cena_trackD-20191103.APP_DELIVERABLES.tgz -C $(TOP)/qa2_unpacked/ ; mv $(TOP)/qa2_unpacked/README.DRIVEPOLCONVERT $(TOP)/qa2_unpacked/README.DRIVEPOLCONVERT.2017.1.01181.V_cena_trackD-20191103
	# drivepolconvert.py -q <version>:   e18e22: v9, e18c25: v9,  e18d28: v8

prep:
	prepolconvert.py --clobber --orig orig --srcdir ../b1/ --dstdir ./b1/ \
		e18e22-1-b1_1000.input e18c25-1-b1_1000.input e18d28-1-b1_1000.input e18d28-1-b1_1001.input
	prepolconvert.py --clobber --orig orig --srcdir ../b2/ --dstdir ./b2/ \
		e18e22-1-b2_1000.input e18c25-1-b2_1000.input e18d28-1-b2_1000.input e18d28-1-b2_1001.input
	prepolconvert.py --clobber --orig orig --srcdir ../b3/ --dstdir ./b3/ \
		e18e22-1-b3_1000.input e18c25-1-b3_1000.input e18d28-1-b3_1000.input e18d28-1-b3_1001.input
	prepolconvert.py --clobber --orig orig --srcdir ../b4/ --dstdir ./b4/ \
		e18e22-1-b4_1000.input e18c25-1-b4_1000.input e18d28-1-b4_1000.input e18d28-1-b4_1001.input

pc:
	make -C b1 pc
	make -C b2 pc
	make -C b3 pc
	make -C b4 pc

ff:
	make -C b1 ff
	make -C b2 ff
	make -C b3 ff
	make -C b4 ff

ffAutos:
	make -C b1 ffAutos
	make -C b2 ffAutos
	make -C b3 ffAutos
	make -C b4 ffAutos

alist:
	make -C b1 alist
	make -C b2 alist
	make -C b3 alist
	make -C b4 alist
