@echo off

if exist ..\Assets\AssetBundle\MasterData\Resources\MasterData (
	copy sql\*.bytes ..\Assets\AssetBundle\MasterData\Resources\MasterData
)  else echo ..\Assets\AssetBundle\MasterData\Resources\MasterData folder is not exist.

rem finished
	del /q ..\Assets\Common\WebRequest\MsgType.cs
	del /q ..\Assets\Common\WebRequest\ErrCode.cs
	del /q ..\Assets\Common\MasterData\*.cs
	
	copy cs\MsgType.cs ..\Assets\Common\WebRequest
	copy cs\ErrCode.cs ..\Assets\Common\WebRequest
	copy cs\*.cs ..\Assets\Common\MasterData
	
	del /q ..\Assets\Common\MasterData\MsgType.cs
	del /q ..\Assets\Common\MasterData\ErrCode.cs
	del cs\MsgType.cs
	del cs\ErrCode.cs
	del cs\*.cs
	del sql\*.bytes
	del sql\*.bytes-journal
