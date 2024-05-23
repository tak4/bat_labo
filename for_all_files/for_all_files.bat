@echo off

@REM %~dp0：本バッチファイルがるパス を意味する
cd /d %~dp0
@REM echo %~dp0

for /r %%a in (*.txt) do (
    type "%%a"
)

