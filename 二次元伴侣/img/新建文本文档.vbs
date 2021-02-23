Dim Fso, Folder, Path
Set Fso = CreateObject("Scripting.FileSystemObject")
Set Folder = Fso.GetFile(WScript.ScriptFullName).ParentFolder
Path = Folder.Path : If Right(Path,1) <> "\" Then Path = Path & "\"

Dim count,name
For each File in Folder.Files
  count = count + 1
  'Debug.WriteLine "[img" & count & "]: img/" & file.Name
  name = Left(file.Name,InStrRev(file.Name,".") - 1)
  Debug.WriteLine name & "  "
  Debug.WriteLine "![" & name & " Í¼Ïñ][img" & count &"]" & "  "
Next