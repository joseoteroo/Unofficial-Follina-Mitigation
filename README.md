# Unofficial-Follina-Mitigation-Script

<div id='some-div' align="center"> 
<a href="https://twitter.com/jose_oteroo">
<img src="https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white" title="Git"/>
</a>
<a href="https://www.linkedin.com/in/joseoteroo/">
<img src="https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white" title="Git"/>
</a>
</div> 

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

With the second option the registry entry will be deleted, this way our environment will not be vulnerable. 

  ![image](https://user-images.githubusercontent.com/33480019/173250494-1067e7fe-bfd1-4d88-b48b-2d2c12547e02.png)
  
With the third option we will be able to import the registry entry. We will only have to add the path where the copy that we have previously made is located. In case the copy is in the same directory from which we are launching the script, we will not have to add the absolute path, we will only have to indicate the name of the file.

 ![image](https://user-images.githubusercontent.com/33480019/173250548-6cb859ff-2523-4dc4-9f4f-b4feefa9828c.png)
 
 With the fourth option we will be able to check if our computer is vulnerable or not. If it is vulnerable we will get the following message:
 
 ![image](https://user-images.githubusercontent.com/33480019/173250632-2a7ea817-a593-43b1-9211-bba2ec0f499e.png)

If it is not vulnerable we will get a message indicating that the entry in the registry cannot be found.


