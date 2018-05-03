unit uSendMapiMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, siComp, uRwEWSBase, VCL.uRwEWSSession, uRwEWSInterfaces,
  VCL.uRwFormScaler, uRwEWS ;
  //, uRwMapiSession;

type
  Tdm_SendMapiMail = class(TDataModule)
    siLang_dm_SendMapiMail: TsiLang;
    EWSSession: TRwEWSSession;
    procedure MapiSessionAfterLogon(Sender: TObject);
    procedure MapiSessionBeforeLogoff(Sender: TObject);
  private
    { Private declarations }
//    FAddressbook : IRwMapiAddressbook;
//    FRecipTable  : IRwMapiRecipientTable;
//    FRecipTableChanged: Boolean;
//    procedure AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TFDdrBookDlgParams);
  public
    { Public declarations }
//    procedure SendMail(const Subject, MessageText, MailFromAddress, MailToAddress, InfogadHTMLFil : String; const Attachments: array of String);
    procedure SendMail(const Subject, MessageText, MailFromAddress,
    MailToAddress, InfogadHTMLFil: String; const Attachments: array of String);
  end;

//var dm_SendMapiMail: Tdm_SendMapiMail;

implementation

{$R *.dfm}

uses
   // fLogon,

   uRwBoxes
  {$IFDEF VARIANTS}
   ,Variants
  {$ENDIF VARIANTS}
  , dmsDataConn
  , udmLanguage
  , uRwClasses
  , uRwSysUtils
  , uRwEWSTypes , dmsVidaSystem, VidaUser;



procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress, InfogadHTMLFil: String; const Attachments: array of String);
var
  NewMessage: IRwEWSEMail;
  HostName, Database, UserName, Password, spath, ServiceUrl : String ;
  i: Integer;
begin
  if Trim(MailToAddress) = '' then
    raise Exception.Create('No recipients specified');

  if Trim(Subject) = '' then
    if RwMsgBoxYesNo('There is no subject. Do you want to send the message anyway?') = mrNO then
      raise EAbort.Create('');

  // Setup the session so that it will ask the user for a profile
  EWSSession.ProfileName := '';
  EWSSession.ProfileRequired := False;
  EWSSession.LogonDialog := False ;


  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath, ServiceUrl) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;


//  EWSSession.AutodiscoverEMail  := 'lars.makiaho@vida.se' ;

{
    EWSSession.ServiceUrl := 'https://outlook.office365.com/ews/exchange.asmx' ;
    EWSSession.Credentials.UserName := 'kontor@woodsupport.se' ;
    EWSSession.Credentials.Password := 'Wol72537' ;
}

//  EWSSession.Credentials.UserName := 'lars.makiaho@vida.se' ;
//  EWSSession.Credentials.Password := 'Ketola77!' ;

  EWSSession.ServiceUrl           := ServiceUrl ;//'https://outlook.office365.com/ews/exchange.asmx' ;
  EWSSession.Credentials.UserName := ThisUser.UserEmail ;// 'lars.makiaho@vida.se' ;
  EWSSession.Credentials.Password := ThisUser.UserPswd ;// 'Ketola77!' ;

//  ShowMessage('ServiceUrl = ' + ServiceUrl + ' EWSSession.Credentials.UserName = ' + EWSSession.Credentials.UserName
//  + ' EWSSession.Credentials.Password = ' + EWSSession.Credentials.Password) ;

  // Logon, create and send the message
  EWSSession.Active := True;
  try
    Screen.Cursor := crHourGlass;
    // create a new message of class IPM.Note in the drafts folder of the default messagestore
    NewMessage := EWSSession.CreateMessage(dfinDrafts) as IRwEWSEMail;


    NewMessage.ToRecipients.AsString := 'lars.makiaho@gmail.com' ; // MailToAddress ;
    NewMessage.Subject               := Subject ;
    NewMessage.BodyText              := MessageText ;
    NewMessage.Importance            := icHigh;

    // Add the selected attachments

    for I := Low(Attachments) to High(Attachments) do
    NewMessage.Attachments.AddAttachment(Attachments[I]);


    NewMessage.SaveChanges();
    RwMsgBoxInfo('The message is in draft folder.');

    // Submit the message
//    NewMessage.SubmitMessage(False);
  finally
    Screen.Cursor := crDefault;
    EWSSession.Active := False;
  end;

  RwMsgBoxInfo('The message is submitted.');
//  ClearMessage;
end;


(*
  procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
    MailToAddress, InfogadHTMLFil: String; const Attachments: array of String);
  var
    MsgStore    : IRwMapiMsgStore;
    Folder      : IRwMapiFolder;
    NewMessage  : IRwMapiMailMessage;
    Submitted   : Boolean;
    i           : Integer;
    tMsg        : TStringList ;
  begin
   tMsg:= TStringList.Create ;
   Try
   if Length(InfogadHTMLFil) > 0 then
   tMsg.LoadFromFile(InfogadHTMLFil);

   if MapiSession.Active = False Then
   Self.MapiSession.Active := True ;
   //ShowLogonDlg(Self.MapiSession, True);

    if Trim(MailToAddress) = '' then
     raise Exception.Create('No recipients specified');

    if Trim(Subject) = '' then
     raise EAbort.Create('There is no subject.');

      // Logon, create and send the message
    MapiSession.Logon;
    try
      // create a new message of class IPM.Note in the drafts folder of the default messagestore
      NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;

      NewMessage.RecipTo := MailToAddress ;
      NewMessage.Subject := Subject;
      NewMessage.Body    := MessageText;


    NewMessage.SetMessageText(tMsg.Text, fmtHTML );


    // Add the selected attachments
      for I := Low(Attachments) to High(Attachments) do
      NewMessage.AddFileAttachment(Attachments[I]);

    // save the message
     NewMessage.SaveChanges(smKeepOpenReadOnly) ;
  //    NewMessage.SubmitMessage(astMoveToSentItems);

    finally
      MapiSession.Logoff;
    end;

    if Submitted then
    begin
      RwMsgBoxInfo('The message is submitted.');
      //ClearMessage;
    end;

    ShowMessage('Meddelandet är sparat till utkast.');
    Finally
     tMsg.Free ;
    End ;
  end;

*)
  (*
procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress, InfogadHTMLFil: String; const Attachments: array of String);
var
  MsgStore    : IRwMapiMsgStore;
  Folder      : IRwMapiFolder;
  NewMessage  : IRwMapiMessage;
  i           : Integer;

  tMsg        : TStringList ;
begin
 tMsg:= TStringList.Create ;
 Try
 if Length(InfogadHTMLFil) > 0 then
 tMsg.LoadFromFile(InfogadHTMLFil);

 if MapiSession.Active = False Then
 Self.MapiSession.Active := True ;
//  ShowLogonDlg(Self.MapiSession, True);

   if Trim(MailToAddress) = '' then
    raise Exception.Create('No recipients specified');

  if Trim(Subject) = '' then
//    if BoxYesNo('There is no subject. Do you want to send the message anyway?') = mrNO then
      raise EAbort.Create('Subject missing');

  // open the default messagestore
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
 // get the drafts folder
  Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite);
  // create a new message in the drafts folder
  NewMessage := Folder.CreateMessage('IPM.Note');

//  NewMessage := MapiSession.CreateMessage;

  NewMessage.AddRecipients(MailToAddress, rtTo, False);
  NewMessage.PropByName(PR_SUBJECT).AsString := Subject ;
//Ändring
//  NewMessage.SetMessageText(MessageText, mtfPlainText);
  NewMessage.SetMessageText(tMsg.Text, mtfHTML);


  for I := Low(Attachments) to High(Attachments) do
//    Mail.Attachments.Add(Attachments[I]);
  NewMessage.AddFileAttachment(Attachments[I]);

  // save the message
  NewMessage.SaveChanges(smKeepOpenReadOnly);

//  NewMessage.SubmitMessage(astMoveToSentItems); //astLeaveInOutbox astMoveToSentItems


  // first resolve the recipienttable
  // ShowFields(FRecipTable); <-- you can use the ShowFields to display the contents of a table
{  FAddressbook.ResolveNames(FRecipTable, False, True, Application.Title);

  // create a new message in the outbox of the default messagestore
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
  Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
  NewMessage := Folder.CreateMessage('IPM.Note');

    NewMessage.AddRecipients(EdtTo.Text, rtTo, False);

  NewMessage.ModifyRecipients(moReplaceAll, FRecipTable);
  NewMessage.PropByName(PR_SUBJECT).AsString := Subject;
  NewMessage.SetMessageText(MessageText, mtfPlainText); }

  // add the attachments
//  for I := Low(Attachments) to High(Attachments) do
//  NewMessage.AddFileAttachment(Attachments[I]);

//  for i := 0 to lvAttachments.Items.Count - 1 do
//    NewMessage.AddFileAttachment(TAttachmentData(lvAttachments.Items[i].Data).FileName);

//  NewMessage.SubmitMessage(astMoveToSentItems);

//  ClearMessage;
  ShowMessage('Meddelandet är sparat till utkast.');
  Finally
   tMsg.Free ;
  End ;
end;
    *)
//Old procedur
(*procedure Tdm_SendMapiMail.SendMail(const Subject, MessageText, MailFromAddress,
  MailToAddress, InfogadHTMLFil: String; const Attachments: array of String);
var
  MsgStore    : IRwMapiMsgStore;
  Folder      : IRwMapiFolder;
  NewMessage  : IRwMapiMessage;
  i           : Integer;
  tMsg        : TStringList ;
begin
//  NewMessage.SetMessageText(MemoHTMLText.Lines.Text, mtfHTML);
 tMsg:= TStringList.Create ;
 Try
 tMsg.LoadFromFile(InfogadHTMLFil);

 if MapiSession.Active = False Then
 Self.MapiSession.Active := True ;
//  ShowLogonDlg(Self.MapiSession, True);

   if Trim(MailToAddress) = '' then
    raise Exception.Create('No recipients specified');

  if Trim(Subject) = '' then
    if BoxYesNo('There is no subject. Do you want to send the message anyway?') = mrNO then
      raise EAbort.Create('');

  // open the default messagestore
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
 // get the drafts folder
  Folder := MsgStore.OpenFolderByType(ftDraft, alReadWrite, False); //ftOutbox
  // create a new message in the drafts folder
  NewMessage := Folder.CreateMessage('IPM.Note');

//  NewMessage := MapiSession.CreateMessage;

  NewMessage.AddRecipients(MailToAddress, rtTo, False);
  NewMessage.PropByName(PR_SUBJECT).AsString := Subject ;
  NewMessage.SetMessageText(tMsg.Text, mtfHTML);



//  for I := Low(Attachments) to High(Attachments) do  NewMessage.AddFileAttachment(Attachments[I]);

  // save the message
  NewMessage.SubmitMessage(astMoveToSentItems);// .SaveChanges(smKeepOpenReadOnly);



//  NewMessage.SubmitMessage(astMoveToSentItems); //astLeaveInOutbox astMoveToSentItems


  // first resolve the recipienttable
  // ShowFields(FRecipTable); <-- you can use the ShowFields to display the contents of a table
{  FAddressbook.ResolveNames(FRecipTable, False, True, Application.Title);

  // create a new message in the outbox of the default messagestore
  MsgStore := MapiSession.GetDefaultMsgStore(alReadWrite);
  Folder := MsgStore.OpenFolderByType(ftOutbox, alReadWrite, False);
  NewMessage := Folder.CreateMessage('IPM.Note');

    NewMessage.AddRecipients(EdtTo.Text, rtTo, False);

  NewMessage.ModifyRecipients(moReplaceAll, FRecipTable);
  NewMessage.PropByName(PR_SUBJECT).AsString := Subject;
  NewMessage.SetMessageText(MessageText, mtfPlainText); }

  // add the attachments
//  for I := Low(Attachments) to High(Attachments) do
//  NewMessage.AddFileAttachment(Attachments[I]);

//  for i := 0 to lvAttachments.Items.Count - 1 do
//    NewMessage.AddFileAttachment(TAttachmentData(lvAttachments.Items[i].Data).FileName);

//  NewMessage.SubmitMessage(astMoveToSentItems);

//  ClearMessage;
  BoxInfo('Meddelandet är sparat till utkast.');
  Finally
   tMsg.Free ;
  End ;
end;
  *)

procedure Tdm_SendMapiMail.MapiSessionAfterLogon(Sender: TObject);
begin
//  FAddressbook := MapiSession.GetAddressBook(False);
//  FAddressbook.BeforeDisplayAddressBookDlg := AddressBookBeforeDisplayAddressBookDlg;

//  FRecipTable := FAddressbook.GetRecipientTable;
end;

procedure Tdm_SendMapiMail.MapiSessionBeforeLogoff(Sender: TObject);
begin
//  FRecipTable := nil;
//  FAddressbook := nil;
end;

{procedure Tdm_SendMapiMail.AddressBookBeforeDisplayAddressBookDlg(var AddrBookDlgParams: TFDdrBookDlgParams);
begin
  // modify the default addressbook look
  // force the dialog to only show the To and CC fields
  AddrBookDlgParams.DestFields := 2;
  SetLength(AddrBookDlgParams.DestTitles,2);
  AddrBookDlgParams.DestTitles[0] := 'To.';
  AddrBookDlgParams.DestTitles[1] := 'CC..';
end; }


end.
