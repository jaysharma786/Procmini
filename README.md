# Procmini

Procmini is a sophisticated open-source tool designed for comprehensive process monitoring and analysis, specifically developed to cater to the needs of Red Team professionals and Defense experts. Your contribution to this project will be duly acknowledged and appreciated.

## workflow

This PowerShell script defines a function called "Monitor-Process" that continuously monitors and dumps information about a specified process. The function takes one parameter, "ProcessName," which is the name of the process to monitor.

The script starts by retrieving the process ID for the specified process name using the Get-Process cmdlet. If the process ID is not found, it displays an error message and returns.

If the process ID is found, the script enters an infinite loop to continuously monitor the process. Inside the loop, it retrieves process information using Get-Process and then dumps the information to a text file using the Out-File cmdlet. The text file is named "ProcessDump_{processID}.txt" and is appended with new information on each iteration.

After dumping the process information, the script pauses for 1 second using the Start-Sleep cmdlet before the next iteration.

If an exception occurs during the process monitoring (e.g., the process no longer exists), the catch block is triggered. It displays a message indicating that the process no longer exists and breaks out of the loop.

Finally, when the loop ends, the script displays a message indicating that process monitoring has stopped.

You can use this script by calling the Monitor-Process function and providing the desired process name as a parameter. For example, to monitor the "notepad" process, you would use the following command:

powershell

```
Monitor-Process -ProcessName "notepad"
```

⚠️ Make sure to save the script with a ".ps1" extension (e.g., "monitor-process.ps1") and run it using PowerShell.
⚠️ Run the script using dot source
