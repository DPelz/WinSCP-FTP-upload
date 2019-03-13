# WinSCP-FTP-upload
How to setup WinSCP to upload files to FTP/SFTP server via command line

# How to use WinSCP command line tool to (automatically) upload files to a FTP or SFTP server

 Step 1: Download and install WinSCP
 ------------
 - Download latest version of WinSCP: https://winscp.net/eng/downloads.php
   You can choose the portable version if you want by clicking on "other Downloads" and then downloading "Portable executables".
 - If you downloaded the installer: Install WinSCP and remember the installation path.
 - If you downloaded the portable version: Unzip the files and place them where you want (e.g. C:\WinSCP_Portable\). Just remember the path.

Step 2: Download script files
------------
 - Download [winscp_upload.bat](https://github.com/r00tusrDE/WinSCP-FTP-upload/blob/master/winscp_upload.bat) from this repo.
 - Download [uploadlist.txt](https://github.com/r00tusrDE/WinSCP-FTP-upload/blob/master/uploadlist.txt) from this repo.
 > You can save these files where you want (e.g. C:\scripts\). Just make sure both files are stored in the same folder and you remember the path.

Step 3: Edit script files
------------
Open winscp_upload.bat with a text editor and replace following placeholders:
 - ```{protocol}```: You can choose between ftp and sftp
 - ```{username}```: Your FTP-/SFTP-Username
 - ```{password}```: Your FTP-/SFTP-Password
 - ```{server}```: DNS Name or IP-Address of your FTP-/SFTP-Server
 - ```{remote_path}```: Path where the files on the remote file system should be uploaded to. ```/``` is the FTP-users home directory
 - ```{winscp_path)```: Path where the ```WinSCP.com``` file is located. (NOT the WinSCP.exe file!)

(Optional) Step 4: Create scheduled task in Windows
------------
### If you want to automate your uploads you can create a scheduled task in Windows:
 - Run ```taskschd.msc``` and create a new task. On the actions tab refer to the ```winscp_upload.bat``` file.
> If you don't know how to create and configure a task in Windows, you can read this article: https://www.digitalcitizen.life/how-create-task-basic-task-wizard
