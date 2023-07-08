::This tool is based on the VPNhelper-Windows project(https://github.com/jinjidechefeng/VPNhelper-Windows)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters" /v "AllowL2TPWeakCrypto" /t reg_dword /d 1 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters"  /v "AllowPPTPWeakCrypto" /t reg_dword /d 1 /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Rasman\Parameters"  /v "ProhibitIpSec" /t reg_dword /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v "AssumeUDPEncapsulationContextOnSendRule" /t reg_dword /d 1 /f
sc config RemoteAccess start= auto
sc config RasMan start= auto
sc config PolicyAgent start= auto
sc config RasAuto start= auto
sc config SessionEnv start= auto
sc config TermService start= auto
sc config UmRdpService start= auto
sc config RpcSs start= auto
sc config RpcLocator start= auto
sc config RemoteRegistry start= auto
sc config RpcEptMapper start= auto
