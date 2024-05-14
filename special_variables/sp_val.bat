@rem 先頭に@を付けることでエコー出力を抑制する
@echo off

@rem コメントで日本語を使用する場合、SJISである必要があるみたい
@rem 現在実行中のバッチファイルのディレクトリパスを取得する
@echo %~dp0

@rem 全ての引数を取得
if "%*" == "" (
  @echo 引数がありません
  @goto end
)
@echo %*

@rem 同フォルダのbatファイルを実行
@REM call を使用すると呼び出し元のbatファイルに戻ってくる
@REM @call "%~dp0sp_val_sub.bat" %*
@REM echo return from "%~dp0sp_val_sub.bat"
@REM call を使用しないと呼び出し元のbatファイルに戻らない
@"%~dp0sp_val_sub.bat" %*
echo return from "%~dp0sp_val_sub.bat"

@rem 以下の処理を実行
:end
pause
