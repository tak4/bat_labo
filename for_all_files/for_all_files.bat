@echo off

@REM %~dp0：本バッチファイルがるパス を意味する
cd /d %~dp0
@REM echo %~dp0

@REM loop変数は%%aとする
for /r %%a in (*.txt) do (
    echo %%a
    type "%%a"
)

