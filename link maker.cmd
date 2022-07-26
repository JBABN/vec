@ echo.

@ set /p link=link?
@ set /p texto=texto?
@ echo.

@ echo ^<a href="%link%"^> %texto% ^</a^>
@ echo.

@ choice /m "copy to clipboard?"
@ if %errorlevel% EQU 1 (echo ^^^<a href="%link%"^^^> %texto% ^^^</a^^^>|clip)
@ echo.

@ echo Done. Press enter to exit.
@ pause >nul
