@rem �擪��@��t���邱�ƂŃG�R�[�o�͂�}������
@echo off

@rem �R�����g�œ��{����g�p����ꍇ�ASJIS�ł���K�v������݂���
@rem ���ݎ��s���̃o�b�`�t�@�C���̃f�B���N�g���p�X���擾����
@echo %~dp0

@rem �S�Ă̈������擾
if "%*" == "" (
  @echo ����������܂���
  @goto end
)
@echo %*

@rem ���t�H���_��bat�t�@�C�������s
@REM call ���g�p����ƌĂяo������bat�t�@�C���ɖ߂��Ă���
@REM @call "%~dp0sp_val_sub.bat" %*
@REM echo return from "%~dp0sp_val_sub.bat"
@REM call ���g�p���Ȃ��ƌĂяo������bat�t�@�C���ɖ߂�Ȃ�
@"%~dp0sp_val_sub.bat" %*
echo return from "%~dp0sp_val_sub.bat"

@rem �ȉ��̏��������s
:end
pause
