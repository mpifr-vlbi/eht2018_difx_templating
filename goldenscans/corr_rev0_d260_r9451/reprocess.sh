
# Execute under DiFX 2.6.1
# Recorrelates and polconverts the three goldenscans in all four bands.
# Compares A-list files of pre- and post-polconvert against those of a "reference" DiFX version.
REFERENCE=d253

if [ "$DIFX_VERSION" == "" ]; then
	echo "No DiFX environment configured. Cannot continue."
	return
fi

function recorrelationSteps {
	echo -n ""
	make clean
	make vex
	make run
	make check
	make ff
	make ffAutos
	make alist
}

function polconversionSteps {
	make clean
	make prepQA2
	make prep
	make pc
	make ff
	make ffAutos
	make alist
}

function recorrelate {
	for band in b1 b2 b3 b4; do
		pushd $band
		recorrelationSteps
		popd
	done
}

function repolconvert {
	pushd polconvert
	polconversionSteps
	popd
}

function pristine {
	make -C b1 clean; make -C b2 clean; make -C b3 clean; make -C b4 clean
	make -C polconvert clean
}

function compare {
	LEFT=.
	RIGHT=../corr_rev0_${REFERENCE}/
	for band in b1 b2 b3 b4; do
		echo "Band $band DiFX d261 vs ${REFERENCE}"
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3645.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3647.alist_v6 -b $RIGHT/$band/3647.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3649.alist_v6 -b $RIGHT/$band/3649.alist_v6 -f | grep -i difference
	done
}

function comparePolconverted {
	LEFT=./polconvert/
	RIGHT=../corr_rev0_${REFERENCE}/polconvert/
	for band in b1 b2 b3 b4; do
		echo "Polconverted band $band DiFX d261 vs ${REFERENCE}"
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3645.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3647.alist_v6 -b $RIGHT/$band/3647.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3649.alist_v6 -b $RIGHT/$band/3649.alist_v6 -f | grep -i difference
	done
}

# pristine
# recorrelate
# repolconvert
compare
comparePolconverted
