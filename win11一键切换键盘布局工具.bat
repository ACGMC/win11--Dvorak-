echo off
ECHO,
ECHO �ļ��̲�����?
ECHO,
ECHO 1 = DVORAK
ECHO 2 = QWERT
set /p msg=  (1 or 2)?:
ECHO;
if %msg% == 1 goto DVORAK
if %msg% == 2 goto QWERT
EXIT


:DVORAK
ECHO ���� DVORAK ���̲���
cmd /k reg add "HKLM\SYSTEM\CurrentControlSet\Control\"Keyboard Layouts"\00000804 /v "Layout File" /t REG_SZ /d "KBDDV.DLL" /f"
PAUSE
EXIT


:QWERT
ECHO  ���� QWERT ���̲���
cmd /k REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\"Keyboard Layouts"\00000804 /v "Layout File" /t REG_SZ /d "KBDUS.DLL" /f"
PAUSE
EXIT
