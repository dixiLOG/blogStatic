@echo off
set tempfile=%temp%\diskpart_script.txt

set /p disknum=Choose your disk num: 

echo list disk > %tempfile%
echo select disk %disknum% >> %tempfile%
echo offline disk >> %tempfile%
echo online disk >> %tempfile%
echo exit >> %tempfile%

echo now you selection disk num(make sure it's correct): %disknum%
pause

:: 执行diskpart并传递脚本文件
diskpart /s %tempfile%

:: 删除临时脚本文件
del %tempfile%
