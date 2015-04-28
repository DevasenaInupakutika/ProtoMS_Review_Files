parfile $PROTOMSHOME/parameter/amber99.ff
parfile $PROTOMSHOME/parameter/solvents.ff
parfile $PROTOMSHOME/parameter/amber99-residues.ff
parfile $PROTOMSHOME/parameter/gaff14.ff
parfile tutorial/input_files/ethane.tem
protein1 tutorial/input_files/protein_scoop.pdb
solute1 tutorial/input_files/ethane.pdb
solvent1 water.pdb
outfolder out_bnd
streamheader off
streamdetail off
streamwarning warning
streaminfo info
streamfatal fatal
streamresults results
streamaccept accept
cutoff 10.0
feather 0.5
temperature 25.0
ranseed 4853085
boundary solvent
pdbparams on
dump 100000 results write results
dump 100000 pdb all solvent=all file=all.pdb standard
dump 100000 restart write restart
dump 100000 averages reset
chunk equilibrate 5000000 solvent=993 protein=5 solute=1 volume=0
chunk simulate 40000000 solvent=993 protein=5 solute=1 volume=0
