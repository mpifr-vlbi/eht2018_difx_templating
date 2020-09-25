#######################################################################################
# Generate a new set of filelists, based on location where raw VDIF recordings
# of the RAID5 goldenscans module have been copied to manually before.
#
# Run under DiFX 2.6.2 or other DiFX environment; 'vsum' must be in the search path.
#######################################################################################

RECORDINGS_DIR=/mnt/gsEHT2018/vdif/  # directory on e.g. cluster filesystem where VDIF are found
# RECORDINGS_DIR=/data/eht2018/goldenscans/

FLIST_OUT_DIR=/mnt/gsEHT2018/difx/filelists_localized/ # where to place the new filelists

#######################################################################################

if ! command -v vsum &> /dev/null
then
	echo "Could not find the DiFX utility 'vsum' in the system path. Check your DiFX environment."
	return
fi

find $RECORDINGS_DIR -name *.vdif > vdif_files
echo "Found `wc -l vdif_files`; should be equal to 140"

rm -f vdif_vsums
for fn in `cat vdif_files`; do
	vsum -s $fn | tee -a vdif_vsums
done
echo "Got `wc -l vdif_vsums`; should be equal to 140"

#######################################################################################

for ant in Ax Aa Pv Mg Gl Sz Lm Sw; do
	for band in b1 b2 b3 b4; do
		for slot in 12 34; do
		    grep ${ant}/${band}/${slot} vdif_vsums > ${FLIST_OUT_DIR}/mod-${slot}-${ant}.${band}.flist
		    grep ${ant}/${band}/${slot} vdif_vsums > ${FLIST_OUT_DIR}/mod-${slot}-${ant}.${band}.flist
		done
	done
done
grep Mm/b14 vdif_vsums > ${FLIST_OUT_DIR}/mod-34-Mm.b14.flist
grep Mm/b23 vdif_vsums > ${FLIST_OUT_DIR}/mod-34-Mm.b23.flist

Nlists=`ls -1 ${FLIST_OUT_DIR}/*.flist|wc -l`
echo "Produced $Nlists file lists; should be equal to 66"

#######################################################################################

cp -a ${FLIST_OUT_DIR}/mod-34-Mm.b14.flist ${FLIST_OUT_DIR}/ehtc2018_Jcmt_band14.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Mm.b23.flist ${FLIST_OUT_DIR}/ehtc2018_Jcmt_band23.filelist

cp -a ${FLIST_OUT_DIR}/mod-12-Aa.b1.flist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Aa.b1.flist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Ax.b1.flist ${FLIST_OUT_DIR}/ehtc2018_APEX_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Ax.b1.flist ${FLIST_OUT_DIR}/ehtc2018_APEX_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Pv.b1.flist ${FLIST_OUT_DIR}/ehtc2018_Pico_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Pv.b1.flist ${FLIST_OUT_DIR}/ehtc2018_Pico_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Mg.b1.flist ${FLIST_OUT_DIR}/ehtc2018_SMT_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Mg.b1.flist ${FLIST_OUT_DIR}/ehtc2018_SMT_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Sz.b1.flist ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Sz.b1.flist ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Lm.b1.flist ${FLIST_OUT_DIR}/ehtc2018_LMT_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Lm.b1.flist ${FLIST_OUT_DIR}/ehtc2018_LMT_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Sw.b1.flist ${FLIST_OUT_DIR}/ehtc2018_SMA_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Sw.b1.flist ${FLIST_OUT_DIR}/ehtc2018_SMA_band1.34.filelist

cp -a ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band1.12.filelist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set2_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band1.34.filelist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set2_band1.34.filelist
cp -a ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band1.12.filelist ${FLIST_OUT_DIR}/ehtc2018_SPT_set2_band1.12.filelist
cp -a ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band1.34.filelist ${FLIST_OUT_DIR}/ehtc2018_SPT_set2_band1.34.filelist

cp -a ${FLIST_OUT_DIR}/mod-12-Aa.b4.flist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band4.12.filelist 
cp -a ${FLIST_OUT_DIR}/mod-34-Aa.b4.flist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Ax.b4.flist ${FLIST_OUT_DIR}/ehtc2018_APEX_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Ax.b4.flist ${FLIST_OUT_DIR}/ehtc2018_APEX_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Pv.b4.flist ${FLIST_OUT_DIR}/ehtc2018_Pico_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Pv.b4.flist ${FLIST_OUT_DIR}/ehtc2018_Pico_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Mg.b4.flist ${FLIST_OUT_DIR}/ehtc2018_SMT_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Mg.b4.flist ${FLIST_OUT_DIR}/ehtc2018_SMT_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Sz.b4.flist ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Sz.b4.flist ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Lm.b4.flist ${FLIST_OUT_DIR}/ehtc2018_LMT_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Lm.b4.flist ${FLIST_OUT_DIR}/ehtc2018_LMT_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/mod-12-Sw.b4.flist ${FLIST_OUT_DIR}/ehtc2018_SMA_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/mod-34-Sw.b4.flist ${FLIST_OUT_DIR}/ehtc2018_SMA_band4.34.filelist

cp -a ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band4.12.filelist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set2_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/ehtc2018_ALMA_set1_band4.34.filelist ${FLIST_OUT_DIR}/ehtc2018_ALMA_set2_band4.34.filelist
cp -a ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band4.12.filelist ${FLIST_OUT_DIR}/ehtc2018_SPT_set2_band4.12.filelist
cp -a ${FLIST_OUT_DIR}/ehtc2018_SPT_set1_band4.34.filelist ${FLIST_OUT_DIR}/ehtc2018_SPT_set2_band4.34.filelist


Nlists2=`ls -1 ${FLIST_OUT_DIR}/*.filelist|wc -l`

rm -f vdif_files
rm -f vdif_vsums

echo "Produced $Nlists2 additional/alias file lists; should be equal to 38"
echo ""
echo "Finished. The new file lists ought to be visible under ${FLIST_OUT_DIR}"
