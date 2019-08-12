' Ask for repository https link
Dim repositoryLink
repositoryLink = InputBox("Please give the https link to the git repository.", "Quick setup")

' No need to do anything if the user doesn't enter anything/clicks cancel.
If repositoryLink = "" Then 
    WScript.Sleep(1)

Else

    ' Shell object to execute git commands.
    Set oShell = CreateObject ("WScript.Shell") 

    ' Initialize local git repository.
    oShell.run "powershell -Command "& Chr(34) &"git init; git remote add origin "&repositoryLink&"; git pull origin master; git branch --set-upstream-to=origin/master master; git push --set-upstream origin master"& Chr(34) 

    ' Sleep a few ms cause it looks good.
    WScript.Sleep(250)

End If
