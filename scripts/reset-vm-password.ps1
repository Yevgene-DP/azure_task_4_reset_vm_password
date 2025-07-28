param(
    [string]$ResourceGroupName,
    [string]$VMName,
    [string]$UserName,
    [string]$Password
)

Write-Host "🔄 Resetting password for VM $VMName in resource group $ResourceGroupName..."

Set-AzVMAccessExtension `
  -ResourceGroupName "mate-azure-task-2" `
  -VMName "myVM-new" `
  -Name "enablevmaccess" `
  -Location "uksouth" `
  -UserName "wroot" `
  -Password "viktor33" `
  -TypeHandlerVersion "1.5" `
  -Publisher "Microsoft.OSTCExtensions" `
  -Type "VMAccessForLinux"

Write-Host "✅ Password reset complete."
