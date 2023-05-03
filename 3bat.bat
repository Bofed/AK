chcp 65001

@echo off
set /p dest_dir="Введіть шлях до каталогу, в який копіюватимете файли: "
xcopy /Y /F /H /R /A /? As\*.* "%dest_dir%\" 
set xcopy_status=%ERRORLEVEL%
if %xcopy_status% equ 0 (
  echo Копіювання завершено успішно.
) else (
  echo Виникла помилка при копіюванні.
)
pause
exit /B %xcopy_status%
