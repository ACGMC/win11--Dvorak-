echo off
ECHO,
ECHO 改键盘布局吗?
ECHO,
ECHO 1 = DVORAK
ECHO 2 = QWERT
set /p msg=  (1 or 2)?:
ECHO;
if %msg% == 1 goto DVORAK
if %msg% == 2 goto QWERT
EXIT


:DVORAK
ECHO 配置 DVORAK 键盘布局
cmd /k reg add "HKLM\SYSTEM\CurrentControlSet\Control\"Keyboard Layouts"\00000804 /v "Layout File" /t REG_SZ /d "KBDDV.DLL" /f"
PAUSE
EXIT


:QWERT
ECHO  配置 QWERT 键盘布局
cmd /k REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\"Keyboard Layouts"\00000804 /v "Layout File" /t REG_SZ /d "KBDUS.DLL" /f"
PAUSE
EXIT
