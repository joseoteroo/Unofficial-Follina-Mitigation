# Unofficial-Follina-Mitigation-Script

This script is an UNOFFICIAL fix for vulnerability CVE-2022-30190 (Commonly known as Follina).

Microsoft has published that a remote code execution vulnerability exists when MSDT is called using the URL protocol from a calling application such as Word. An attacker successfully exploiting this vulnerability can execute arbitrary code with the privileges of the calling application. The attacker can then install programs, view, change or delete data, or create new accounts in the context allowed by the user's rights.

More information can be found at the following URL:
https://msrc-blog.microsoft.com/2022/05/30/guidance-for-cve-2022-30190-microsoft-support-diagnostic-tool-vulnerability/


How to use:

The first thing we will have to do is to execute a PowerShell terminal with the following argument, this way we will be able to execute scripts.

![image](https://user-images.githubusercontent.com/33480019/173249862-f0dbd8cb-c04d-4d21-b28d-f7706d568ee4.png)


The script has a very simple operation, when it is executed the user can choose between the 5 options that can be seen in the following image:

![image](https://user-images.githubusercontent.com/33480019/173249723-96a17555-1282-4dbd-a30a-4ea5b79ccd6e.png)

With the first option we can make a copy of the registry (Highly recommended):

![image](https://user-images.githubusercontent.com/33480019/173249927-e5eaf8f7-5b1d-4fa0-ac5d-22527b460398.png)

We will only have to indicate the path where we want to save the copy. If no path is indicated the copy will be saved in the same place where the script is located.

