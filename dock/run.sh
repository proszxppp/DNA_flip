top=$(pwd)

for host in  PTP1B;do
for guest in ref_lig;do

  for scoring in vina vinardo;do
~/software/vina_1.2.2_linux_x86_64 --receptor $host.pdbqt --ligand $guest.pdbqt --config box.txt --out $scoring.$host.$guest.pdbqt --scoring $scoring > $scoring.log 
 done

done
done
