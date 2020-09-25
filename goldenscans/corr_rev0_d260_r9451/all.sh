
function localMake {
	echo -n ""
#	make clean ; make vex
#	make run
#	make check
#	make ff
#	make alist
#	make ffAutos
}

function compare {
	LEFT=.
	RIGHT=../corr_rev0_d261/
	for band in b1 b2 b3 b4; do
		echo "Band $band DiFX 2.6.0 r9451 vs 2.6.1"
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3645.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3647.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3645.alist_v6 -f | grep -i difference
	done
}

function comparePolconverted {
	LEFT=./polconvert/
	RIGHT=../corr_rev0_d261/polconvert/
	for band in b1 b2 b3 b4; do
		echo "Polconverted band $band DiFX 2.6.0 r9451 vs 2.6.1"
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3645.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3647.alist_v6 -f | grep -i difference
		compare-baselines-v6.pl -a $LEFT/$band/3645.alist_v6 -b $RIGHT/$band/3645.alist_v6 -f | grep -i difference
	done
}

for band in b1 b2 b3 b4; do
	pushd $band
	localMake
	popd
done

compare
comparePolconverted

