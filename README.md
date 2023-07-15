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

### PowerShell

```
Monitor-Process -ProcessName "notepad"
```


⚠️ Make sure to save the script with a ".ps1" extension (e.g., "monitor-process.ps1") and run it using PowerShell.

⚠️ Run the script using the dot source

### Upcoming Features
1. **Fileless Attack Detection**: Our upcoming release will include an advanced detection mechanism specifically designed to identify and mitigate fileless attacks. This feature aims to enhance the security posture of your systems by detecting and preventing attacks that leverage memory-resident techniques, reducing the risk of compromise.

2. **In-Memory Process and Command Detection**: We are excited to introduce a powerful detection capability that focuses on identifying in-memory processes and commands. By monitoring and analyzing runtime activities, our tool will help you detect suspicious and potentially malicious activities occurring solely in the system's memory, providing valuable insights for proactive defense and incident response.

3. **PowerShell Log Monitoring**: Our upcoming version will introduce a comprehensive monitoring solution for PowerShell logs. This feature will enable real-time analysis and alerting on PowerShell activities, allowing you to identify anomalous or malicious usage of PowerShell scripts and commands. By actively monitoring PowerShell logs, you can strengthen your organization's security posture and respond effectively to potential threats.

Stay tuned for these exciting additions to our tool, designed to empower Red Teamers and Defense professionals in their ongoing efforts to secure and protect critical systems.
