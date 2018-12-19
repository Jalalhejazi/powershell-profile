# Eksempler på hvordan man ser og ændre på PowerShell afviklings politik

# Se aktuelle indstilling

Get-ExecutionPolicy

# Det kræver lokal administrator rettigheder at ændre...

Set-ExecutionPolicy RemoteSigned

Set-ExecutionPolicy Unrestricted


##################################################################
# Code Signing (Module-08)
# http://go.microsoft.com/fwlink/?LinkId=106296
##################################################################

Get-Help *signing*
Get-Help about_signing 


# Certmgr is GUI used to manage certificates
Certmgr

# PowerShell CLI to mange certificates using psdrive
dir Cert:\
cd  Cert:\


# How to Create SelfSignedCertificate ?
Get-Help New-SelfSignedCertificate -Examples


# How to sign program.ps1 with Certificate?
Get-Help AuthenticodeSignature -Examples


Set-AuthenticodeSignature -FilePath program.ps1 -Certificate $cert