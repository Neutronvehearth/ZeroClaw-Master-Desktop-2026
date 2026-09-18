$computer = Get-CimInstance Win32_ComputerSystem
$os = Get-CimInstance Win32_OperatingSystem
$disk = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"

Write-Host "System Report"
Write-Host "============="
Write-Host "Computer: $($computer.Name)"
Write-Host "User: $env:USERNAME"
Write-Host "OS: $($os.Caption)"
Write-Host "Version: $($os.Version)"
Write-Host "RAM: $([math]::Round($computer.TotalPhysicalMemory / 1GB, 2)) GB"
Write-Host "Disk Size: $([math]::Round($disk.Size / 1GB, 2)) GB"
Write-Host "Free Space: $([math]::Round($disk.FreeSpace / 1GB, 2)) GB"
Write-Host "Processor: $((Get-CimInstance Win32_Processor).Name)"
Write-Host "Date: $(Get-Date)"