reg delete "HKLM\SYSTEM\CurrentControlSet\Services\TPM\WMI\Endorsement" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\TPM\WMI\Endorsement" /f
powershell -Command "Disable-TPMAutoProvisioning"
powershell -Command "Clear-Tpm"

@echo off
echo [92m Press Win + R and put tpm.msc 
echo [92m go to Clear Tpm
echo [92m restart pc
pause>nul

shutdown /r /f /t 0