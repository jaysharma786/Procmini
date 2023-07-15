# Function to continuously monitor and dump process information
function Monitor-Process {
    param (
        [string]$ProcessName
    )

    # Retrieve the process ID for the specified process name
    $processID = (Get-Process -Name $ProcessName).Id

    if ($processID -eq $null) {
        Write-Host "Process '$ProcessName' not found."
        return
    }

    Write-Host "Monitoring process '$ProcessName' (ID: $processID). Press Ctrl+C to stop."

    # Infinite loop to continuously monitor the process
    while ($true) {
        try {
            # Retrieve process information
            $process = Get-Process -Id $processID

            # Dump process information
            $process | Format-List * | Out-File -FilePath "ProcessDump_$processID.txt" -Force -Append

            # Delay for 1 second before next iteration
            Start-Sleep -Seconds 1
        }
        catch {
            # Process no longer exists, exit the loop
            Write-Host "Process '$ProcessName' (ID: $processID) no longer exists."
            break
        }
    }

    Write-Host "Process monitoring stopped."
}

# Usage example: Monitor-Process -ProcessName "notepad"
