
# DiFX VEX and v2d templating for EHT 2018

Directories used by templating are:

* ./base/   : top level VEX and v2d templates for e18xxx, containing 'include's for common and band specific sections
* ./common/ : generic VEX sections e.g. sources, schedules, EOPs that are common between all bands
* ./band1/  : VEX sections that are specific to band 1, and clock data for band 1
* ./band2/  : VEX sections that are specific to band 2, and clock data for band 2
* ./band3/  : VEX sections that are specific to band 3, and clock data for band 3
* ./band4/  : VEX sections that are specific to band 4, and clock data for band 4

Additional a priori data are in:

* ./sma/    : clock data for the SMA, a copy from SMA eht-wiki pages
* ./mark6/  : notes about which Mark6 modules were in which Mark6 unit at the correlator
* ./filelists_mpifr/ : file lists with Mark6 and cluster storage info

Generated VEX and v2d files are in

* ./generated/ : archival copy of whole-campaing DiFX setup files of the current revision
* ./goldenscans/ : subset of DiFX setup files and scripting to recorrelate "golden scans" in different DiFX versions
* ./out/ : temporary output directory (empty) in which new VEX and v2d are generated
