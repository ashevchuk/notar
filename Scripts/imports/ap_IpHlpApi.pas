{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright © 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
unit ap_IpHlpApi;

interface

uses
  Windows,
  WinSock,
  IpTypes,
  IpRtrMib,
  IpExport,
  IpHlpApi,
  System.Variants,
  ap_IpRtrMib,
  ap_IpExport,
  atScript;

{$WARNINGS OFF}

type
  TatIpHlpApiLibrary = class(TatScripterLibrary)
    procedure __GetNumberOfInterfaces(AMachine: TatVirtualMachine);
    procedure __GetIpStatistics(AMachine: TatVirtualMachine);
    procedure __GetIcmpStatistics(AMachine: TatVirtualMachine);
    procedure __GetTcpStatistics(AMachine: TatVirtualMachine);
    procedure __GetUdpStatistics(AMachine: TatVirtualMachine);
    procedure __SetIfEntry(AMachine: TatVirtualMachine);
    procedure __CreateIpForwardEntry(AMachine: TatVirtualMachine);
    procedure __SetIpForwardEntry(AMachine: TatVirtualMachine);
    procedure __DeleteIpForwardEntry(AMachine: TatVirtualMachine);
    procedure __SetIpStatistics(AMachine: TatVirtualMachine);
    procedure __SetIpTTL(AMachine: TatVirtualMachine);
    procedure __CreateIpNetEntry(AMachine: TatVirtualMachine);
    procedure __SetIpNetEntry(AMachine: TatVirtualMachine);
    procedure __DeleteIpNetEntry(AMachine: TatVirtualMachine);
    procedure __FlushIpNetTable(AMachine: TatVirtualMachine);
    procedure __CreateProxyArpEntry(AMachine: TatVirtualMachine);
    procedure __DeleteProxyArpEntry(AMachine: TatVirtualMachine);
    procedure __SetTcpEntry(AMachine: TatVirtualMachine);
    procedure __GetBestInterface(AMachine: TatVirtualMachine);
    procedure __GetAdapterIndex(AMachine: TatVirtualMachine);
    procedure __AddIPAddress(AMachine: TatVirtualMachine);
    procedure __DeleteIPAddress(AMachine: TatVirtualMachine);
    procedure __IpReleaseAddress(AMachine: TatVirtualMachine);
    procedure __IpRenewAddress(AMachine: TatVirtualMachine);
    procedure __GetRTTAndHopCount(AMachine: TatVirtualMachine);
    procedure __GetFriendlyIfIndex(AMachine: TatVirtualMachine);
    procedure __GetIpErrorString(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatIpHlpApiLibrary.__GetNumberOfInterfaces(AMachine: TatVirtualMachine);
  var
  Param0: DWORD;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := VarToInteger(GetInputArg(0));
AResult := Integer(IpHlpApi.GetNumberOfInterfaces(Param0));
    ReturnOutputArg(AResult);
    SetInputArg(0,Integer(Param0));
  end;
end;

procedure TatIpHlpApiLibrary.__GetIpStatistics(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: MIB_IPSTATS;
  AResult: variant;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is _MIB_IPSTATSWrapper) then 
  Param0Rec := _MIB_IPSTATSWrapper.Create(Param0);
Param0 := _MIB_IPSTATSWrapper(Param0Rec).ObjToRec;
AResult := Integer(IpHlpApi.GetIpStatistics(Param0));
    ReturnOutputArg(AResult);
    SetInputArg(0,integer(_MIB_IPSTATSWrapper.Create(Param0)));
  end;
end;

procedure TatIpHlpApiLibrary.__GetIcmpStatistics(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: MIB_ICMP;
  AResult: variant;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is _MIB_ICMPWrapper) then 
  Param0Rec := _MIB_ICMPWrapper.Create(Param0);
Param0 := _MIB_ICMPWrapper(Param0Rec).ObjToRec;
AResult := Integer(IpHlpApi.GetIcmpStatistics(Param0));
    ReturnOutputArg(AResult);
    SetInputArg(0,integer(_MIB_ICMPWrapper.Create(Param0)));
  end;
end;

procedure TatIpHlpApiLibrary.__GetTcpStatistics(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: MIB_TCPSTATS;
  AResult: variant;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is _MIB_TCPSTATSWrapper) then 
  Param0Rec := _MIB_TCPSTATSWrapper.Create(Param0);
Param0 := _MIB_TCPSTATSWrapper(Param0Rec).ObjToRec;
AResult := Integer(IpHlpApi.GetTcpStatistics(Param0));
    ReturnOutputArg(AResult);
    SetInputArg(0,integer(_MIB_TCPSTATSWrapper.Create(Param0)));
  end;
end;

procedure TatIpHlpApiLibrary.__GetUdpStatistics(AMachine: TatVirtualMachine);
  var
  Param0Rec: TObject;
  Param0: MIB_UDPSTATS;
  AResult: variant;
begin
  with AMachine do
  begin
Param0Rec := TObject(integer(GetInputArg(0)));
if not Assigned(Param0Rec) or not (Param0Rec is _MIB_UDPSTATSWrapper) then 
  Param0Rec := _MIB_UDPSTATSWrapper.Create(Param0);
Param0 := _MIB_UDPSTATSWrapper(Param0Rec).ObjToRec;
AResult := Integer(IpHlpApi.GetUdpStatistics(Param0));
    ReturnOutputArg(AResult);
    SetInputArg(0,integer(_MIB_UDPSTATSWrapper.Create(Param0)));
  end;
end;

procedure TatIpHlpApiLibrary.__SetIfEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.SetIfEntry(_MIB_IFROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__CreateIpForwardEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.CreateIpForwardEntry(_MIB_IPFORWARDROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__SetIpForwardEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.SetIpForwardEntry(_MIB_IPFORWARDROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__DeleteIpForwardEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.DeleteIpForwardEntry(_MIB_IPFORWARDROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__SetIpStatistics(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.SetIpStatistics(_MIB_IPSTATSWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__SetIpTTL(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.SetIpTTL(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__CreateIpNetEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.CreateIpNetEntry(_MIB_IPNETROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__SetIpNetEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.SetIpNetEntry(_MIB_IPNETROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__DeleteIpNetEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.DeleteIpNetEntry(_MIB_IPNETROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__FlushIpNetTable(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.FlushIpNetTable(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__CreateProxyArpEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.CreateProxyArpEntry(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__DeleteProxyArpEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.DeleteProxyArpEntry(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__SetTcpEntry(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.SetTcpEntry(_MIB_TCPROWWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__GetBestInterface(AMachine: TatVirtualMachine);
  var
  Param1: DWORD;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
AResult := Integer(IpHlpApi.GetBestInterface(VarToInteger(GetInputArg(0)),Param1));
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatIpHlpApiLibrary.__GetAdapterIndex(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  Param1: ULONG;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
Param1 := VarToInteger(GetInputArg(1));
AResult := Integer(IpHlpApi.GetAdapterIndex(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),Param1));
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatIpHlpApiLibrary.__AddIPAddress(AMachine: TatVirtualMachine);
  var
  Param3: ULONG;
  Param4: ULONG;
  AResult: variant;
begin
  with AMachine do
  begin
Param3 := VarToInteger(GetInputArg(3));
Param4 := VarToInteger(GetInputArg(4));
AResult := Integer(IpHlpApi.AddIPAddress(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),Param3,Param4));
    ReturnOutputArg(AResult);
    SetInputArg(3,Integer(Param3));
    SetInputArg(4,Integer(Param4));
  end;
end;

procedure TatIpHlpApiLibrary.__DeleteIPAddress(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.DeleteIPAddress(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__IpReleaseAddress(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.IpReleaseAddress(_IP_ADAPTER_INDEX_MAPWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__IpRenewAddress(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.IpRenewAddress(_IP_ADAPTER_INDEX_MAPWrapper(integer(GetInputArg(0))).ObjToRec));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__GetRTTAndHopCount(AMachine: TatVirtualMachine);
  var
  Param1: ULONG;
  Param3: ULONG;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
Param3 := VarToInteger(GetInputArg(3));
AResult := IpHlpApi.GetRTTAndHopCount(VarToInteger(GetInputArg(0)),Param1,VarToInteger(GetInputArg(2)),Param3);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
    SetInputArg(3,Integer(Param3));
  end;
end;

procedure TatIpHlpApiLibrary.__GetFriendlyIfIndex(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(IpHlpApi.GetFriendlyIfIndex(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatIpHlpApiLibrary.__GetIpErrorString(AMachine: TatVirtualMachine);
  var
  Param1Buf: array of WideChar;
  Param2: DWORD;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
Param2 := VarToInteger(GetInputArg(2));
AResult := Integer(IpHlpApi.GetIpErrorString(VarToInteger(GetInputArg(0)),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf)),Param2));
    ReturnOutputArg(AResult);
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatIpHlpApiLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('GetNumberOfInterfaces',1,tkInteger,nil,__GetNumberOfInterfaces,false,0,'pdwNumIf: DWORD').SetVarArgs([0]);
    DefineMethod('GetIpStatistics',1,tkInteger,nil,__GetIpStatistics,false,0,'pStats: MIB_IPSTATS').SetVarArgs([0]);
    DefineMethod('GetIcmpStatistics',1,tkInteger,nil,__GetIcmpStatistics,false,0,'pStats: MIB_ICMP').SetVarArgs([0]);
    DefineMethod('GetTcpStatistics',1,tkInteger,nil,__GetTcpStatistics,false,0,'pStats: MIB_TCPSTATS').SetVarArgs([0]);
    DefineMethod('GetUdpStatistics',1,tkInteger,nil,__GetUdpStatistics,false,0,'pStats: MIB_UDPSTATS').SetVarArgs([0]);
    DefineMethod('SetIfEntry',1,tkInteger,nil,__SetIfEntry,false,0,'pIfRow: MIB_IFROW');
    DefineMethod('CreateIpForwardEntry',1,tkInteger,nil,__CreateIpForwardEntry,false,0,'pRoute: MIB_IPFORWARDROW');
    DefineMethod('SetIpForwardEntry',1,tkInteger,nil,__SetIpForwardEntry,false,0,'pRoute: MIB_IPFORWARDROW');
    DefineMethod('DeleteIpForwardEntry',1,tkInteger,nil,__DeleteIpForwardEntry,false,0,'pRoute: MIB_IPFORWARDROW');
    DefineMethod('SetIpStatistics',1,tkInteger,nil,__SetIpStatistics,false,0,'pIpStats: MIB_IPSTATS');
    DefineMethod('SetIpTTL',1,tkInteger,nil,__SetIpTTL,false,0,'nTTL: UINT');
    DefineMethod('CreateIpNetEntry',1,tkInteger,nil,__CreateIpNetEntry,false,0,'pArpEntry: MIB_IPNETROW');
    DefineMethod('SetIpNetEntry',1,tkInteger,nil,__SetIpNetEntry,false,0,'pArpEntry: MIB_IPNETROW');
    DefineMethod('DeleteIpNetEntry',1,tkInteger,nil,__DeleteIpNetEntry,false,0,'pArpEntry: MIB_IPNETROW');
    DefineMethod('FlushIpNetTable',1,tkInteger,nil,__FlushIpNetTable,false,0,'dwIfIndex: DWORD');
    DefineMethod('CreateProxyArpEntry',3,tkInteger,nil,__CreateProxyArpEntry,false,0,'dwAddress: DWORD; dwMask: DWORD; dwIfIndex: DWORD');
    DefineMethod('DeleteProxyArpEntry',3,tkInteger,nil,__DeleteProxyArpEntry,false,0,'dwAddress: DWORD; dwMask: DWORD; dwIfIndex: DWORD');
    DefineMethod('SetTcpEntry',1,tkInteger,nil,__SetTcpEntry,false,0,'pTcpRow: MIB_TCPROW');
    DefineMethod('GetBestInterface',2,tkInteger,nil,__GetBestInterface,false,0,'dwDestAddr: IPAddr; pdwBestIfIndex: DWORD').SetVarArgs([1]);
    DefineMethod('GetAdapterIndex',2,tkInteger,nil,__GetAdapterIndex,false,0,'AdapterName: LPWSTR; IfIndex: ULONG').SetVarArgs([1]);
    DefineMethod('AddIPAddress',5,tkInteger,nil,__AddIPAddress,false,0,'Address: IPAddr; IpMask: IPMask; IfIndex: DWORD; NTEContext: ULONG; NTEInstance: ULONG').SetVarArgs([3,4]);
    DefineMethod('DeleteIPAddress',1,tkInteger,nil,__DeleteIPAddress,false,0,'NTEContext: ULONG');
    DefineMethod('IpReleaseAddress',1,tkInteger,nil,__IpReleaseAddress,false,0,'AdapterInfo: IP_ADAPTER_INDEX_MAP');
    DefineMethod('IpRenewAddress',1,tkInteger,nil,__IpRenewAddress,false,0,'AdapterInfo: IP_ADAPTER_INDEX_MAP');
    DefineMethod('GetRTTAndHopCount',4,tkVariant,nil,__GetRTTAndHopCount,false,0,'DestIpAddress: IPAddr; HopCount: ULONG; MaxHops: ULONG; RTT: ULONG').SetVarArgs([1,3]);
    DefineMethod('GetFriendlyIfIndex',1,tkInteger,nil,__GetFriendlyIfIndex,false,0,'IfIndex: DWORD');
    DefineMethod('GetIpErrorString',3,tkInteger,nil,__GetIpErrorString,false,0,'ErrorCode: IP_STATUS; Buffer: PWCHAR; Size: DWORD').SetVarArgs([2]);
  end;
end;

class function TatIpHlpApiLibrary.LibraryName: string;
begin
  result := 'IpHlpApi';
end;

initialization
  RegisterScripterLibrary(TatIpHlpApiLibrary, True);

{$WARNINGS ON}

end.

