include Makefile.inc

.NOTPARALLEL:

all:

run:	
	# test run
	./tvex2vex.py -v -I./band1/ -I./common/ base/e18c21.vext out/e18c21-$(REL)-b1.vex.obs

## Full sets

b1: c21b1 e22b1 a24b1 c25b1 g27b1 d28b1
#b1: c21b1 e22b1 a24b1 c25b1 g27b1 d28b1 install_b1

b2: c21b2 e22b2 a24b2 c25b2 g27b2 d28b2

b3: c21b3 e22b3 a24b3 c25b3 g27b3 d28b3

b4: c21b4 e22b4 a24b4 c25b4 g27b4 d28b4
#b4: c21b4 e22b4 a24b4 c25b4 g27b4 d28b4 install_b4

## File lists

filelists_b1:
	make -j1 -C filelists_$(SITE) fdistB1

filelists_b4:
	make -j1 -C filelists_$(SITE) fdistB4

####################################################################################
## Dress Rehersal 2020  bands 1,2,3,4
####################################################################################

e20j23:
	./tvex2vex.py -I./band1_noema/ -I./common/ base/e20j23.vext out/e20j23-b1.vex.obs
	./tvex2vex.py -I./band1_noema/ -I./common/ base/e20j23.v2dt out/e20j23-b1.v2d
	# cp -a out/e20j23-b1.vex.obs out/e20j23-b1.v2d /Exps/e20j23/FRINGE/b1/
	cp -a out/e20j23-b1.vex.obs /Exps/e20j23/FRINGE/b1/

	./tvex2vex.py -I./band2_noema/ -I./common/ base/e20j23.vext out/e20j23-b2.vex.obs
	./tvex2vex.py -I./band2_noema/ -I./common/ base/e20j23.v2dt out/e20j23-b2.v2d
	# cp -a out/e20j23-b2.vex.obs out/e20j23-b2.v2d /Exps/e20j23/FRINGE/b2/
	cp -a out/e20j23-b2.vex.obs /Exps/e20j23/FRINGE/b2/

	./tvex2vex.py -I./band3_noema/ -I./common/ base/e20j23.vext out/e20j23-b3.vex.obs
	./tvex2vex.py -I./band3_noema/ -I./common/ base/e20j23.v2dt out/e20j23-b3.v2d
	# cp -a out/e20j23-b3.vex.obs out/e20j23-b3.v2d /Exps/e20j23/FRINGE/b3/
	# cp -a out/e20j23-b3.vex.obs /Exps/e20j23/FRINGE/b3/
	# Note: need to edit b3 vex afterwards, set Pico to DR2020 b3 (dbbc3)

	./tvex2vex.py -I./band4_noema/ -I./common/ base/e20j23.vext out/e20j23-b4.vex.obs
	./tvex2vex.py -I./band4_noema/ -I./common/ base/e20j23.v2dt out/e20j23-b4.v2d
	# cp -a out/e20j23-b4.vex.obs out/e20j23-b4.v2d /Exps/e20j23/FRINGE/b4/
	cp -a out/e20j23-b4.vex.obs /Exps/e20j23/FRINGE/b4/


####################################################################################
## EHT 2018 -- Band 1
####################################################################################

e18all:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18all.vext out/e18all-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18all.v2dt out/e18all-$(REL)-b1.v2d

c21b1:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18c21.vext out/e18c21-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18c21.v2dt out/e18c21-$(REL)-b1.v2d
	sed -i "s/e18c21-0-b/e18c21-${REL}-b/g" out/e18c21-$(REL)-b1.v2d

e22b1:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18e22.vext out/e18e22-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18e22.v2dt out/e18e22-$(REL)-b1.v2d
	sed -i "s/e18e22-0-b/e18e22-${REL}-b/g" out/e18e22-$(REL)-b1.v2d

a24b1:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18a24.vext out/e18a24-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18a24.v2dt out/e18a24-$(REL)-b1.v2d
	sed -i "s/e18a24-0-b/e18a24-${REL}-b/g" out/e18a24-$(REL)-b1.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = -0.035 # SMA extra offsets/g' out/e18a24-$(REL)-b1.v2d

c25b1:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18c25.vext out/e18c25-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18c25.v2dt out/e18c25-$(REL)-b1.v2d
	sed -i "s/e18c25-0-b/e18c25-${REL}-b/g" out/e18c25-$(REL)-b1.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = -0.035 # SMA extra offsets/g' out/e18c25-$(REL)-b1.v2d

g27b1:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18g27.vext out/e18g27-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18g27.v2dt out/e18g27-$(REL)-b1.v2d
	sed -i "s/e18g27-0-b/e18g27-${REL}-b/g" out/e18g27-$(REL)-b1.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = -0.035 # SMA extra offsets/g' out/e18g27-$(REL)-b1.v2d

d28b1:
	@echo
	./tvex2vex.py -I./band1/ -I./common/ base/e18d28.vext out/e18d28-$(REL)-b1.vex.obs
	./tvex2vex.py -I./band1/ -I./common/ base/e18d28.v2dt out/e18d28-$(REL)-b1.v2d
	sed -i "s/e18d28-0-b/e18d28-${REL}-b/g" out/e18d28-$(REL)-b1.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = -0.110 # SMA extra offsets/g' out/e18d28-$(REL)-b1.v2d

install_b1:
	mkdir -p /Exps/e18c21/band1/$(REV)/
	mkdir -p /Exps/e18e22/band1/$(REV)/
	mkdir -p /Exps/e18a24/band1/$(REV)/
	mkdir -p /Exps/e18c25/band1/$(REV)/
	mkdir -p /Exps/e18g27/band1/$(REV)/
	mkdir -p /Exps/e18d28/band1/$(REV)/
	cp -a out/e18c21-$(REL)-b1.v* /Exps/e18c21/band1/$(REV)/
	cp -a out/e18e22-$(REL)-b1.v* /Exps/e18e22/band1/$(REV)/
	cp -a out/e18a24-$(REL)-b1.v* /Exps/e18a24/band1/$(REV)/
	cp -a out/e18c25-$(REL)-b1.v* /Exps/e18c25/band1/$(REV)/
	cp -a out/e18g27-$(REL)-b1.v* /Exps/e18g27/band1/$(REV)/
	cp -a out/e18d28-$(REL)-b1.v* /Exps/e18d28/band1/$(REV)/

####################################################################################
## EHT 2018 -- Band 4
####################################################################################

c21b4:
	./tvex2vex.py -I./band4/ -I./common/ base/e18c21.vext out/e18c21-$(REL)-b4.vex.obs
	./tvex2vex.py -I./band4/ -I./common/ base/e18c21.v2dt out/e18c21-$(REL)-b4.v2d
	sed -i "s/e18c21-0-b/e18c21-${REL}-b/g" out/e18c21-$(REL)-b4.v2d
	sed -i 's/b1.vex.obs/b4.vex.obs/g' out/e18c21-$(REL)-b4.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = +0.225 # SMA extra offsets/g' out/e18c21-$(REL)-b4.v2d

e22b4:
	./tvex2vex.py -I./band4/ -I./common/ base/e18e22.vext out/e18e22-$(REL)-b4.vex.obs
	./tvex2vex.py -I./band4/ -I./common/ base/e18e22.v2dt out/e18e22-$(REL)-b4.v2d
	sed -i "s/e18e22-0-b/e18e22-${REL}-b/g" out/e18e22-$(REL)-b4.v2d
	sed -i 's/b1.vex.obs/b4.vex.obs/g' out/e18e22-$(REL)-b4.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = +0.218 # SMA extra offsets/g' out/e18e22-$(REL)-b4.v2d

a24b4:
	./tvex2vex.py -I./band4/ -I./common/ base/e18a24.vext out/e18a24-$(REL)-b4.vex.obs
	./tvex2vex.py -I./band4/ -I./common/ base/e18a24.v2dt out/e18a24-$(REL)-b4.v2d
	sed -i "s/e18a24-0-b/e18a24-${REL}-b/g" out/e18a24-$(REL)-b4.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = +0.178 # SMA extra offsets/g' out/e18a24-$(REL)-b4.v2d
	sed -i 's/b1.vex.obs/b4.vex.obs/g' out/e18a24-$(REL)-b4.v2d

c25b4:
	./tvex2vex.py -I./band4/ -I./common/ base/e18c25.vext out/e18c25-$(REL)-b4.vex.obs
	./tvex2vex.py -I./band4/ -I./common/ base/e18c25.v2dt out/e18c25-$(REL)-b4.v2d
	sed -i "s/e18c25-0-b/e18c25-${REL}-b/g" out/e18c25-$(REL)-b4.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = +0.163 # SMA extra offsets/g' out/e18c25-$(REL)-b4.v2d
	sed -i 's/b1.vex.obs/b4.vex.obs/g' out/e18c25-$(REL)-b4.v2d

g27b4:
	./tvex2vex.py -I./band4/ -I./common/ base/e18g27.vext out/e18g27-$(REL)-b4.vex.obs
	./tvex2vex.py -I./band4/ -I./common/ base/e18g27.v2dt out/e18g27-$(REL)-b4.v2d
	sed -i "s/e18g27-0-b/e18g27-${REL}-b/g" out/e18g27-$(REL)-b4.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = +0.118 # SMA extra offsets/g' out/e18g27-$(REL)-b4.v2d
	sed -i 's/b1.vex.obs/b4.vex.obs/g' out/e18g27-$(REL)-b4.v2d

d28b4:
	./tvex2vex.py -I./band4/ -I./common/ base/e18d28.vext out/e18d28-$(REL)-b4.vex.obs
	./tvex2vex.py -I./band4/ -I./common/ base/e18d28.v2dt out/e18d28-$(REL)-b4.v2d
	sed -i "s/e18d28-0-b/e18d28-${REL}-b/g" out/e18d28-$(REL)-b4.v2d
	sed -i 's/deltaClock = 0 # SMA extra offsets/deltaClock = +0.118 # SMA extra offsets/g' out/e18d28-$(REL)-b4.v2d
	sed -i 's/b1.vex.obs/b4.vex.obs/g' out/e18d28-$(REL)-b4.v2d

install_b4:
	mkdir -p /Exps/e18c21/band4/$(REV)/
	mkdir -p /Exps/e18e22/band4/$(REV)/
	mkdir -p /Exps/e18a24/band4/$(REV)/
	mkdir -p /Exps/e18c25/band4/$(REV)/
	mkdir -p /Exps/e18g27/band4/$(REV)/
	mkdir -p /Exps/e18d28/band4/$(REV)/
	cp -a out/e18c21-$(REL)-b4.v* /Exps/e18c21/band4/$(REV)/
	cp -a out/e18e22-$(REL)-b4.v* /Exps/e18e22/band4/$(REV)/
	cp -a out/e18a24-$(REL)-b4.v* /Exps/e18a24/band4/$(REV)/
	cp -a out/e18c25-$(REL)-b4.v* /Exps/e18c25/band4/$(REV)/
	cp -a out/e18g27-$(REL)-b4.v* /Exps/e18g27/band4/$(REV)/
	cp -a out/e18d28-$(REL)-b4.v* /Exps/e18d28/band4/$(REV)/


####################################################################################
## EHT 2018 -- Band 2  golden scans
####################################################################################

c21b2:
	./tvex2vex.py -I./band2/ -I./common/ base/e18c21.vext out/e18c21-$(REL)-b2.vex.obs
	./tvex2vex.py -I./band2/ -I./common/ base/e18c21.v2dt out/e18c21-$(REL)-b2.v2d
	sed -i "s/-0-b1/-${REL}-b2/g" out/e18c21-$(REL)-b2.v2d
	mkdir -p /Exps/e18c21/band2/$(REV)/
	cp -a out/e18c21-$(REL)-b2.v* /Exps/e18c21/band2/$(REV)/

e22b2:
	./tvex2vex.py -I./band2/ -I./common/ base/e18e22.vext out/e18e22-$(REL)-b2.vex.obs
	./tvex2vex.py -I./band2/ -I./common/ base/e18e22.v2dt out/e18e22-$(REL)-b2.v2d
	sed -i "s/-0-b1/-${REL}-b2/g" out/e18e22-$(REL)-b2.v2d
	mkdir -p /Exps/e18e22/band2/$(REV)/
	cp -a out/e18e22-$(REL)-b2.v* /Exps/e18e22/band2/$(REV)/

a24b2:
	./tvex2vex.py -I./band2/ -I./common/ base/e18a24.vext out/e18a24-$(REL)-b2.vex.obs
	./tvex2vex.py -I./band2/ -I./common/ base/e18a24.v2dt out/e18a24-$(REL)-b2.v2d
	sed -i "s/-0-b1/-${REL}-b2/g" out/e18a24-$(REL)-b2.v2d
	mkdir -p /Exps/e18a24/band2/$(REV)/
	cp -a out/e18a24-$(REL)-b2.v* /Exps/e18a24/band2/$(REV)/

c25b2:
	./tvex2vex.py -I./band2/ -I./common/ base/e18c25.vext out/e18c25-$(REL)-b2.vex.obs
	./tvex2vex.py -I./band2/ -I./common/ base/e18c25.v2dt out/e18c25-$(REL)-b2.v2d
	sed -i "s/-0-b1/-${REL}-b2/g" out/e18c25-$(REL)-b2.v2d
	mkdir -p /Exps/e18c25/band2/$(REV)/
	cp -a out/e18c25-$(REL)-b2.v* /Exps/e18c25/band2/$(REV)/

g27b2:
	./tvex2vex.py -I./band2/ -I./common/ base/e18g27.vext out/e18g27-$(REL)-b2.vex.obs
	./tvex2vex.py -I./band2/ -I./common/ base/e18g27.v2dt out/e18g27-$(REL)-b2.v2d
	sed -i "s/-0-b1/-${REL}-b2/g" out/e18g27-$(REL)-b2.v2d
	mkdir -p /Exps/e18g27/band2/$(REV)/
	cp -a out/e18g27-$(REL)-b2.v* /Exps/e18g27/band2/$(REV)/

d28b2:
	./tvex2vex.py -I./band2/ -I./common/ base/e18d28.vext out/e18d28-$(REL)-b2.vex.obs
	./tvex2vex.py -I./band2/ -I./common/ base/e18d28.v2dt out/e18d28-$(REL)-b2.v2d
	sed -i "s/-0-b1/-${REL}-b2/g" out/e18d28-$(REL)-b2.v2d
	mkdir -p /Exps/e18d28/band2/$(REV)/
	cp -a out/e18d28-$(REL)-b2.v* /Exps/e18d28/band2/$(REV)/

####################################################################################
## EHT 2018 -- Band 3  golden scans
####################################################################################

c21b3:
	./tvex2vex.py -I./band3/ -I./common/ base/e18c21.vext out/e18c21-$(REL)-b3.vex.obs
	./tvex2vex.py -I./band3/ -I./common/ base/e18c21.v2dt out/e18c21-$(REL)-b3.v2d
	sed -i "s/-0-b1/-${REL}-b3/g" out/e18c21-$(REL)-b3.v2d
	mkdir -p /Exps/e18c21/band3/$(REV)/
	cp -a out/e18c21-$(REL)-b3.v* /Exps/e18c21/band3/$(REV)/

e22b3:
	./tvex2vex.py -I./band3/ -I./common/ base/e18e22.vext out/e18e22-$(REL)-b3.vex.obs
	./tvex2vex.py -I./band3/ -I./common/ base/e18e22.v2dt out/e18e22-$(REL)-b3.v2d
	sed -i "s/-0-b1/-${REL}-b3/g" out/e18e22-$(REL)-b3.v2d
	mkdir -p /Exps/e18e22/band3/$(REV)/
	cp -a out/e18e22-$(REL)-b3.v* /Exps/e18e22/band3/$(REV)/

a24b3:
	./tvex2vex.py -I./band3/ -I./common/ base/e18a24.vext out/e18a24-$(REL)-b3.vex.obs
	./tvex2vex.py -I./band3/ -I./common/ base/e18a24.v2dt out/e18a24-$(REL)-b3.v2d
	sed -i "s/-0-b1/-${REL}-b3/g" out/e18a24-$(REL)-b3.v2d
	mkdir -p /Exps/e18a24/band3/$(REV)/
	cp -a out/e18a24-$(REL)-b3.v* /Exps/e18a24/band3/$(REV)/

c25b3:
	./tvex2vex.py -I./band3/ -I./common/ base/e18c25.vext out/e18c25-$(REL)-b3.vex.obs
	./tvex2vex.py -I./band3/ -I./common/ base/e18c25.v2dt out/e18c25-$(REL)-b3.v2d
	sed -i "s/-0-b1/-${REL}-b3/g" out/e18c25-$(REL)-b3.v2d
	mkdir -p /Exps/e18c25/band3/$(REV)/
	cp -a out/e18c25-$(REL)-b3.v* /Exps/e18c25/band3/$(REV)/

g27b3:
	./tvex2vex.py -I./band3/ -I./common/ base/e18g27.vext out/e18g27-$(REL)-b3.vex.obs
	./tvex2vex.py -I./band3/ -I./common/ base/e18g27.v2dt out/e18g27-$(REL)-b3.v2d
	sed -i "s/-0-b1/-${REL}-b3/g" out/e18g27-$(REL)-b3.v2d
	mkdir -p /Exps/e18g27/band3/$(REV)/
	cp -a out/e18g27-$(REL)-b3.v* /Exps/e18g27/band3/$(REV)/

d28b3:
	./tvex2vex.py -I./band3/ -I./common/ base/e18d28.vext out/e18d28-$(REL)-b3.vex.obs
	./tvex2vex.py -I./band3/ -I./common/ base/e18d28.v2dt out/e18d28-$(REL)-b3.v2d
	sed -i "s/-0-b1/-${REL}-b3/g" out/e18d28-$(REL)-b3.v2d
	mkdir -p /Exps/e18d28/band3/$(REV)/
	cp -a out/e18d28-$(REL)-b3.v* /Exps/e18d28/band3/$(REV)/

