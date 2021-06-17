 #!/bin/bash
 #SBATCH -J prefetch_jacqueline.vasquez
 /home2/jacqueline.vasquez/sratoolkit.2.11.0-centos_linux64/bin/prefetch --max-size 100G SRR2006763 -O /home2/jacqueline.vasquez/SRA_samples/
 /home2/jacqueline.vasquez/sratoolkit.2.11.0-centos_linux64/bin/vdb-validate /home2/jacqueline.vasquez/SRA_samples/SRR2006763/SRR2006763.sra
