; 使用 code 编辑这个脚本
^!+a::
  run, "C:\Program Files (x86)\Microsoft VS Code\Code.exe" "C:\Users\baiya\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.ahk"
Return

; 启动应用程序 Chrome
#g::
  run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
Return

; 启动Cmder.exe
#c::
  run, C:\Program Files\cmder\Cmder.exe
Return

; 启动 VS Code
#v::
  run, C:\Program Files (x86)\Microsoft VS Code\Code.exe
Return

; 启动 python notebook
#i::
  run, jupyter notebook
Return

; 启动 xshell
^!x::
  run, xshell
Return

; 启动 Visual Studio 2017
^!v::
  run, C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv.exe, C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE
Return

; 启动打开 BingDict 
#b::
  run, "C:\Program Files (x86)\Microsoft Bing Dictionary\BingDict.exe"
Return

; 获取鼠标点RGB值到粘贴板
#p::
MouseGetPos, mouseX, mouseY
PixelGetColor, color, %mouseX%, %mouseY%, RGB
StringRight color,color,6
clipboard = %color%
tooltip, Pixel color %color% sent to clipboard.
sleep 2000
tooltip,
return