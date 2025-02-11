& 'C:\Users\jricarte\miniforge3\shell\condabin\conda-hook.ps1'
if([string]::IsNullOrEmpty($args[0])){
   Write-Output 'base'
   conda activate base
   conda update conda -y
   conda update --all -y
   conda clean --all -y

}else {
   Write-Output $args[0]
   conda activate $args[0]
   conda update --all -y
   pip install -U klayout
   conda clean --all -y
}
# Prevent window from closing
Read-Host "Press Enter to exit"
