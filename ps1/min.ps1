& 'C:\Users\jricarte\miniforge3\shell\condabin\conda-hook.ps1'
conda activate base
conda update conda -y
conda install -y $args
conda clean --all -y
# Prevent window from closing
Read-Host "Press Enter to exit"
