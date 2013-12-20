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
unit ap_KnownFolders;

interface

uses
  Windows,
  KnownFolders,
  System.Variants,
  ap_System,
  atScript;

{$WARNINGS OFF}

type
  TatKnownFoldersLibrary = class(TatScripterLibrary)
    procedure __GetFOLDERID_NetworkFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ComputerFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_InternetFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ControlPanelFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PrintersFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SyncManagerFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SyncSetupFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ConflictFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SyncResultsFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_RecycleBinFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ConnectionsFolder(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Fonts(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Desktop(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Startup(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Programs(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_StartMenu(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Recent(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SendTo(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Documents(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Favorites(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_NetHood(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PrintHood(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Templates(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CommonStartup(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CommonPrograms(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CommonStartMenu(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicDesktop(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramData(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CommonTemplates(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicDocuments(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_RoamingAppData(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_LocalAppData(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_LocalAppDataLow(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_InternetCache(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Cookies(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_History(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_System(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SystemX86(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Windows(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Profile(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Pictures(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramFilesX86(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramFilesCommonX86(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramFilesX64(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramFilesCommonX64(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramFiles(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ProgramFilesCommon(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_UserProgramFiles(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_UserProgramFilesCommon(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_AdminTools(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CommonAdminTools(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Music(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Videos(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Ringtones(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicPictures(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicMusic(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicVideos(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicRingtones(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ResourceDir(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_LocalizedResourcesDir(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CommonOEMLinks(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_CDBurning(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_UserProfiles(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Playlists(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SamplePlaylists(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SampleMusic(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SamplePictures(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SampleVideos(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PhotoAlbums(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Public(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ChangeRemovePrograms(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_AppUpdates(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_AddNewPrograms(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Downloads(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicDownloads(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SavedSearches(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_QuickLaunch(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Contacts(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SidebarParts(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SidebarDefaultParts(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicGameTasks(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_GameTasks(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SavedGames(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Games(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SEARCH_MAPI(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SEARCH_CSC(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Links(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_UsersFiles(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_UsersLibraries(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_SearchHome(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_OriginalImages(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_DocumentsLibrary(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_MusicLibrary(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PicturesLibrary(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_VideosLibrary(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_RecordedTVLibrary(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_HomeGroup(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_DeviceMetadataStore(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_Libraries(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_PublicLibraries(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_UserPinned(AMachine: TatVirtualMachine);
    procedure __GetFOLDERID_ImplicitAppShortcuts(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;




implementation



procedure TatKnownFoldersLibrary.__GetFOLDERID_NetworkFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_NetworkFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ComputerFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ComputerFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_InternetFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_InternetFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ControlPanelFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ControlPanelFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PrintersFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PrintersFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SyncManagerFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SyncManagerFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SyncSetupFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SyncSetupFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ConflictFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ConflictFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SyncResultsFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SyncResultsFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_RecycleBinFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_RecycleBinFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ConnectionsFolder(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ConnectionsFolder)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Fonts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Fonts)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Desktop(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Desktop)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Startup(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Startup)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Programs(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Programs)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_StartMenu(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_StartMenu)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Recent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Recent)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SendTo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SendTo)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Documents(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Documents)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Favorites(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Favorites)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_NetHood(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_NetHood)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PrintHood(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PrintHood)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Templates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Templates)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CommonStartup(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CommonStartup)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CommonPrograms(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CommonPrograms)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CommonStartMenu(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CommonStartMenu)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicDesktop(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicDesktop)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramData(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramData)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CommonTemplates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CommonTemplates)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicDocuments(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicDocuments)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_RoamingAppData(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_RoamingAppData)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_LocalAppData(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_LocalAppData)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_LocalAppDataLow(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_LocalAppDataLow)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_InternetCache(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_InternetCache)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Cookies(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Cookies)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_History(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_History)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_System(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_System)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SystemX86(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SystemX86)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Windows(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Windows)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Profile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Profile)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Pictures(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Pictures)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramFilesX86(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramFilesX86)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramFilesCommonX86(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramFilesCommonX86)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramFilesX64(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramFilesX64)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramFilesCommonX64(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramFilesCommonX64)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramFiles(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramFiles)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ProgramFilesCommon(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ProgramFilesCommon)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_UserProgramFiles(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_UserProgramFiles)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_UserProgramFilesCommon(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_UserProgramFilesCommon)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_AdminTools(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_AdminTools)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CommonAdminTools(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CommonAdminTools)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Music(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Music)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Videos(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Videos)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Ringtones(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Ringtones)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicPictures(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicPictures)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicMusic(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicMusic)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicVideos(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicVideos)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicRingtones(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicRingtones)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ResourceDir(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ResourceDir)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_LocalizedResourcesDir(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_LocalizedResourcesDir)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CommonOEMLinks(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CommonOEMLinks)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_CDBurning(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_CDBurning)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_UserProfiles(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_UserProfiles)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Playlists(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Playlists)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SamplePlaylists(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SamplePlaylists)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SampleMusic(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SampleMusic)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SamplePictures(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SamplePictures)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SampleVideos(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SampleVideos)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PhotoAlbums(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PhotoAlbums)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Public(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Public)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ChangeRemovePrograms(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ChangeRemovePrograms)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_AppUpdates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_AppUpdates)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_AddNewPrograms(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_AddNewPrograms)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Downloads(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Downloads)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicDownloads(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicDownloads)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SavedSearches(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SavedSearches)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_QuickLaunch(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_QuickLaunch)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Contacts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Contacts)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SidebarParts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SidebarParts)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SidebarDefaultParts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SidebarDefaultParts)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicGameTasks(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicGameTasks)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_GameTasks(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_GameTasks)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SavedGames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SavedGames)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Games(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Games)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SEARCH_MAPI(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SEARCH_MAPI)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SEARCH_CSC(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SEARCH_CSC)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Links(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Links)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_UsersFiles(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_UsersFiles)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_UsersLibraries(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_UsersLibraries)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_SearchHome(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_SearchHome)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_OriginalImages(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_OriginalImages)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_DocumentsLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_DocumentsLibrary)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_MusicLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_MusicLibrary)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PicturesLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PicturesLibrary)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_VideosLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_VideosLibrary)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_RecordedTVLibrary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_RecordedTVLibrary)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_HomeGroup(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_HomeGroup)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_DeviceMetadataStore(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_DeviceMetadataStore)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_Libraries(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_Libraries)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_PublicLibraries(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_PublicLibraries)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_UserPinned(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_UserPinned)));
  end;
end;

procedure TatKnownFoldersLibrary.__GetFOLDERID_ImplicitAppShortcuts(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TGUIDWrapper.Create(KnownFolders.FOLDERID_ImplicitAppShortcuts)));
  end;
end;

procedure TatKnownFoldersLibrary.Init;
begin
  With Scripter.DefineClass(ClassType) do
  begin
    DefineProp('FOLDERID_NetworkFolder',tkVariant,__GetFOLDERID_NetworkFolder,nil,nil,false,0);
    DefineProp('FOLDERID_ComputerFolder',tkVariant,__GetFOLDERID_ComputerFolder,nil,nil,false,0);
    DefineProp('FOLDERID_InternetFolder',tkVariant,__GetFOLDERID_InternetFolder,nil,nil,false,0);
    DefineProp('FOLDERID_ControlPanelFolder',tkVariant,__GetFOLDERID_ControlPanelFolder,nil,nil,false,0);
    DefineProp('FOLDERID_PrintersFolder',tkVariant,__GetFOLDERID_PrintersFolder,nil,nil,false,0);
    DefineProp('FOLDERID_SyncManagerFolder',tkVariant,__GetFOLDERID_SyncManagerFolder,nil,nil,false,0);
    DefineProp('FOLDERID_SyncSetupFolder',tkVariant,__GetFOLDERID_SyncSetupFolder,nil,nil,false,0);
    DefineProp('FOLDERID_ConflictFolder',tkVariant,__GetFOLDERID_ConflictFolder,nil,nil,false,0);
    DefineProp('FOLDERID_SyncResultsFolder',tkVariant,__GetFOLDERID_SyncResultsFolder,nil,nil,false,0);
    DefineProp('FOLDERID_RecycleBinFolder',tkVariant,__GetFOLDERID_RecycleBinFolder,nil,nil,false,0);
    DefineProp('FOLDERID_ConnectionsFolder',tkVariant,__GetFOLDERID_ConnectionsFolder,nil,nil,false,0);
    DefineProp('FOLDERID_Fonts',tkVariant,__GetFOLDERID_Fonts,nil,nil,false,0);
    DefineProp('FOLDERID_Desktop',tkVariant,__GetFOLDERID_Desktop,nil,nil,false,0);
    DefineProp('FOLDERID_Startup',tkVariant,__GetFOLDERID_Startup,nil,nil,false,0);
    DefineProp('FOLDERID_Programs',tkVariant,__GetFOLDERID_Programs,nil,nil,false,0);
    DefineProp('FOLDERID_StartMenu',tkVariant,__GetFOLDERID_StartMenu,nil,nil,false,0);
    DefineProp('FOLDERID_Recent',tkVariant,__GetFOLDERID_Recent,nil,nil,false,0);
    DefineProp('FOLDERID_SendTo',tkVariant,__GetFOLDERID_SendTo,nil,nil,false,0);
    DefineProp('FOLDERID_Documents',tkVariant,__GetFOLDERID_Documents,nil,nil,false,0);
    DefineProp('FOLDERID_Favorites',tkVariant,__GetFOLDERID_Favorites,nil,nil,false,0);
    DefineProp('FOLDERID_NetHood',tkVariant,__GetFOLDERID_NetHood,nil,nil,false,0);
    DefineProp('FOLDERID_PrintHood',tkVariant,__GetFOLDERID_PrintHood,nil,nil,false,0);
    DefineProp('FOLDERID_Templates',tkVariant,__GetFOLDERID_Templates,nil,nil,false,0);
    DefineProp('FOLDERID_CommonStartup',tkVariant,__GetFOLDERID_CommonStartup,nil,nil,false,0);
    DefineProp('FOLDERID_CommonPrograms',tkVariant,__GetFOLDERID_CommonPrograms,nil,nil,false,0);
    DefineProp('FOLDERID_CommonStartMenu',tkVariant,__GetFOLDERID_CommonStartMenu,nil,nil,false,0);
    DefineProp('FOLDERID_PublicDesktop',tkVariant,__GetFOLDERID_PublicDesktop,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramData',tkVariant,__GetFOLDERID_ProgramData,nil,nil,false,0);
    DefineProp('FOLDERID_CommonTemplates',tkVariant,__GetFOLDERID_CommonTemplates,nil,nil,false,0);
    DefineProp('FOLDERID_PublicDocuments',tkVariant,__GetFOLDERID_PublicDocuments,nil,nil,false,0);
    DefineProp('FOLDERID_RoamingAppData',tkVariant,__GetFOLDERID_RoamingAppData,nil,nil,false,0);
    DefineProp('FOLDERID_LocalAppData',tkVariant,__GetFOLDERID_LocalAppData,nil,nil,false,0);
    DefineProp('FOLDERID_LocalAppDataLow',tkVariant,__GetFOLDERID_LocalAppDataLow,nil,nil,false,0);
    DefineProp('FOLDERID_InternetCache',tkVariant,__GetFOLDERID_InternetCache,nil,nil,false,0);
    DefineProp('FOLDERID_Cookies',tkVariant,__GetFOLDERID_Cookies,nil,nil,false,0);
    DefineProp('FOLDERID_History',tkVariant,__GetFOLDERID_History,nil,nil,false,0);
    DefineProp('FOLDERID_System',tkVariant,__GetFOLDERID_System,nil,nil,false,0);
    DefineProp('FOLDERID_SystemX86',tkVariant,__GetFOLDERID_SystemX86,nil,nil,false,0);
    DefineProp('FOLDERID_Windows',tkVariant,__GetFOLDERID_Windows,nil,nil,false,0);
    DefineProp('FOLDERID_Profile',tkVariant,__GetFOLDERID_Profile,nil,nil,false,0);
    DefineProp('FOLDERID_Pictures',tkVariant,__GetFOLDERID_Pictures,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramFilesX86',tkVariant,__GetFOLDERID_ProgramFilesX86,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramFilesCommonX86',tkVariant,__GetFOLDERID_ProgramFilesCommonX86,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramFilesX64',tkVariant,__GetFOLDERID_ProgramFilesX64,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramFilesCommonX64',tkVariant,__GetFOLDERID_ProgramFilesCommonX64,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramFiles',tkVariant,__GetFOLDERID_ProgramFiles,nil,nil,false,0);
    DefineProp('FOLDERID_ProgramFilesCommon',tkVariant,__GetFOLDERID_ProgramFilesCommon,nil,nil,false,0);
    DefineProp('FOLDERID_UserProgramFiles',tkVariant,__GetFOLDERID_UserProgramFiles,nil,nil,false,0);
    DefineProp('FOLDERID_UserProgramFilesCommon',tkVariant,__GetFOLDERID_UserProgramFilesCommon,nil,nil,false,0);
    DefineProp('FOLDERID_AdminTools',tkVariant,__GetFOLDERID_AdminTools,nil,nil,false,0);
    DefineProp('FOLDERID_CommonAdminTools',tkVariant,__GetFOLDERID_CommonAdminTools,nil,nil,false,0);
    DefineProp('FOLDERID_Music',tkVariant,__GetFOLDERID_Music,nil,nil,false,0);
    DefineProp('FOLDERID_Videos',tkVariant,__GetFOLDERID_Videos,nil,nil,false,0);
    DefineProp('FOLDERID_Ringtones',tkVariant,__GetFOLDERID_Ringtones,nil,nil,false,0);
    DefineProp('FOLDERID_PublicPictures',tkVariant,__GetFOLDERID_PublicPictures,nil,nil,false,0);
    DefineProp('FOLDERID_PublicMusic',tkVariant,__GetFOLDERID_PublicMusic,nil,nil,false,0);
    DefineProp('FOLDERID_PublicVideos',tkVariant,__GetFOLDERID_PublicVideos,nil,nil,false,0);
    DefineProp('FOLDERID_PublicRingtones',tkVariant,__GetFOLDERID_PublicRingtones,nil,nil,false,0);
    DefineProp('FOLDERID_ResourceDir',tkVariant,__GetFOLDERID_ResourceDir,nil,nil,false,0);
    DefineProp('FOLDERID_LocalizedResourcesDir',tkVariant,__GetFOLDERID_LocalizedResourcesDir,nil,nil,false,0);
    DefineProp('FOLDERID_CommonOEMLinks',tkVariant,__GetFOLDERID_CommonOEMLinks,nil,nil,false,0);
    DefineProp('FOLDERID_CDBurning',tkVariant,__GetFOLDERID_CDBurning,nil,nil,false,0);
    DefineProp('FOLDERID_UserProfiles',tkVariant,__GetFOLDERID_UserProfiles,nil,nil,false,0);
    DefineProp('FOLDERID_Playlists',tkVariant,__GetFOLDERID_Playlists,nil,nil,false,0);
    DefineProp('FOLDERID_SamplePlaylists',tkVariant,__GetFOLDERID_SamplePlaylists,nil,nil,false,0);
    DefineProp('FOLDERID_SampleMusic',tkVariant,__GetFOLDERID_SampleMusic,nil,nil,false,0);
    DefineProp('FOLDERID_SamplePictures',tkVariant,__GetFOLDERID_SamplePictures,nil,nil,false,0);
    DefineProp('FOLDERID_SampleVideos',tkVariant,__GetFOLDERID_SampleVideos,nil,nil,false,0);
    DefineProp('FOLDERID_PhotoAlbums',tkVariant,__GetFOLDERID_PhotoAlbums,nil,nil,false,0);
    DefineProp('FOLDERID_Public',tkVariant,__GetFOLDERID_Public,nil,nil,false,0);
    DefineProp('FOLDERID_ChangeRemovePrograms',tkVariant,__GetFOLDERID_ChangeRemovePrograms,nil,nil,false,0);
    DefineProp('FOLDERID_AppUpdates',tkVariant,__GetFOLDERID_AppUpdates,nil,nil,false,0);
    DefineProp('FOLDERID_AddNewPrograms',tkVariant,__GetFOLDERID_AddNewPrograms,nil,nil,false,0);
    DefineProp('FOLDERID_Downloads',tkVariant,__GetFOLDERID_Downloads,nil,nil,false,0);
    DefineProp('FOLDERID_PublicDownloads',tkVariant,__GetFOLDERID_PublicDownloads,nil,nil,false,0);
    DefineProp('FOLDERID_SavedSearches',tkVariant,__GetFOLDERID_SavedSearches,nil,nil,false,0);
    DefineProp('FOLDERID_QuickLaunch',tkVariant,__GetFOLDERID_QuickLaunch,nil,nil,false,0);
    DefineProp('FOLDERID_Contacts',tkVariant,__GetFOLDERID_Contacts,nil,nil,false,0);
    DefineProp('FOLDERID_SidebarParts',tkVariant,__GetFOLDERID_SidebarParts,nil,nil,false,0);
    DefineProp('FOLDERID_SidebarDefaultParts',tkVariant,__GetFOLDERID_SidebarDefaultParts,nil,nil,false,0);
    DefineProp('FOLDERID_PublicGameTasks',tkVariant,__GetFOLDERID_PublicGameTasks,nil,nil,false,0);
    DefineProp('FOLDERID_GameTasks',tkVariant,__GetFOLDERID_GameTasks,nil,nil,false,0);
    DefineProp('FOLDERID_SavedGames',tkVariant,__GetFOLDERID_SavedGames,nil,nil,false,0);
    DefineProp('FOLDERID_Games',tkVariant,__GetFOLDERID_Games,nil,nil,false,0);
    DefineProp('FOLDERID_SEARCH_MAPI',tkVariant,__GetFOLDERID_SEARCH_MAPI,nil,nil,false,0);
    DefineProp('FOLDERID_SEARCH_CSC',tkVariant,__GetFOLDERID_SEARCH_CSC,nil,nil,false,0);
    DefineProp('FOLDERID_Links',tkVariant,__GetFOLDERID_Links,nil,nil,false,0);
    DefineProp('FOLDERID_UsersFiles',tkVariant,__GetFOLDERID_UsersFiles,nil,nil,false,0);
    DefineProp('FOLDERID_UsersLibraries',tkVariant,__GetFOLDERID_UsersLibraries,nil,nil,false,0);
    DefineProp('FOLDERID_SearchHome',tkVariant,__GetFOLDERID_SearchHome,nil,nil,false,0);
    DefineProp('FOLDERID_OriginalImages',tkVariant,__GetFOLDERID_OriginalImages,nil,nil,false,0);
    DefineProp('FOLDERID_DocumentsLibrary',tkVariant,__GetFOLDERID_DocumentsLibrary,nil,nil,false,0);
    DefineProp('FOLDERID_MusicLibrary',tkVariant,__GetFOLDERID_MusicLibrary,nil,nil,false,0);
    DefineProp('FOLDERID_PicturesLibrary',tkVariant,__GetFOLDERID_PicturesLibrary,nil,nil,false,0);
    DefineProp('FOLDERID_VideosLibrary',tkVariant,__GetFOLDERID_VideosLibrary,nil,nil,false,0);
    DefineProp('FOLDERID_RecordedTVLibrary',tkVariant,__GetFOLDERID_RecordedTVLibrary,nil,nil,false,0);
    DefineProp('FOLDERID_HomeGroup',tkVariant,__GetFOLDERID_HomeGroup,nil,nil,false,0);
    DefineProp('FOLDERID_DeviceMetadataStore',tkVariant,__GetFOLDERID_DeviceMetadataStore,nil,nil,false,0);
    DefineProp('FOLDERID_Libraries',tkVariant,__GetFOLDERID_Libraries,nil,nil,false,0);
    DefineProp('FOLDERID_PublicLibraries',tkVariant,__GetFOLDERID_PublicLibraries,nil,nil,false,0);
    DefineProp('FOLDERID_UserPinned',tkVariant,__GetFOLDERID_UserPinned,nil,nil,false,0);
    DefineProp('FOLDERID_ImplicitAppShortcuts',tkVariant,__GetFOLDERID_ImplicitAppShortcuts,nil,nil,false,0);
  end;
end;

class function TatKnownFoldersLibrary.LibraryName: string;
begin
  result := 'KnownFolders';
end;

initialization
  RegisterScripterLibrary(TatKnownFoldersLibrary, True);

{$WARNINGS ON}

end.

