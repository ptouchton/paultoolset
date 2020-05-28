# paultoolset

SqlServer – Addon for shift+F5
https://github.com/devvcat/ssms-executor


CMDER –
  https://cmder.net/
  
1.	Make it visible in windows search

    * Add root variable
 ![alt text](/img/CmderAddRootVar.png?raw=true)
  


  * Add cmder to the user var path.
  ![alt text](/img/CmderVarPath.png?raw=true)


  * Logoff and Logon


2.	ADD CMDER TO VSCODE AND WINDOWS MENU CONTEXT
    * Grab *.reg and vscode.bat and copy to local cmder dir.
         Open VS Code, press Ctrl + Shift + P, type Settings(json), open it, and append the following to your user settings.
         

          "terminal.integrated.shell.windows": "C:\\WINDOWS\\System32\\cmd.exe",
          "terminal.integrated.shellArgs.windows":["/K","C:\\cmder\\vscode.bat"]
         
      ![alt text](/img/CmderVsCode.png?raw=true)

   * Append those to settings to make Cmder the default terminal for VS Code.


3. ADD CMDER TO WINDOWS CONTEXT MENU
       
       cmder_context_enable.reg.
   
   **Double click this file and accept the warning and press OK to the success prompt. As mentioned previously, saving in C:/cmder makes      it a breeze to configure this. This file would need modification if your cmder installation is somewhere else.**

   ![alt text](/img/CmderRightClick.png?raw=true)

   **Now when you right click in a folder location, you can open the folder in Cmder.
    To disable, insert the following text into a file called cmder_context_disable.reg in C:/cmder.
    Now run the file as previously to disable the Open in Cmder context menu.**

4. Git Commands

- Commands are in GitCommands file
- Run all of the alias’ in the file
