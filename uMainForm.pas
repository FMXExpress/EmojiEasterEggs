unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Filter.Effects, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Colors, FMX.Objects, FMX.MultiView,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, FMX.ListView, FMX.Utils, FMX.Edit, FMX.ComboEdit,
  System.Actions, FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions;

type
  TMainForm = class(TForm)
    MaterialOxfordBlueSB: TStyleBook;
    EggCutoutLabel: TLabel;
    FillRGBEffect: TFillRGBEffect;
    DesignFDMemTable: TFDMemTable;
    BindSourceDB1: TBindSourceDB;
    BindNavigator1: TBindNavigator;
    ColorPanel1: TColorPanel;
    EggFrontRect: TRectangle;
    EggLabel: TLabel;
    FillRGBEffect1: TFillRGBEffect;
    MultiView1: TMultiView;
    Label1: TLabel;
    Rectangle2: TRectangle;
    MultiView2: TMultiView;
    ListView1: TListView;
    EggsFDMemTable: TFDMemTable;
    EggsBindSourceDB: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    SaveEggButton: TButton;
    EggLayout: TLayout;
    Timer1: TTimer;
    EggFrontImage: TImage;
    ColorKeyAlphaEffect1: TColorKeyAlphaEffect;
    BGGradientTop: TColorPanel;
    BGGradientBottom: TColorPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    Panel2: TPanel;
    Label3: TLabel;
    AccessoryLabel: TLabel;
    AccessoryFDMemTable: TFDMemTable;
    AccessoryBindSourceDB: TBindSourceDB;
    LinkPropertyToFieldText: TLinkPropertyToField;
    Layout3: TLayout;
    Panel3: TPanel;
    Label4: TLabel;
    AccessoryCE: TComboEdit;
    TrackBar1: TTrackBar;
    LinkControlToPropertyFontSize: TLinkControlToProperty;
    LinkFillControlToField: TLinkFillControlToField;
    TextLabel: TLabel;
    Layout4: TLayout;
    Panel4: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    ColorPanel2: TColorPanel;
    LinkControlToPropertyText: TLinkControlToProperty;
    LinkControlToPropertyFontColor: TLinkControlToProperty;
    VertScrollBox1: TVertScrollBox;
    Layout5: TLayout;
    LeftMenuButton: TButton;
    Layout6: TLayout;
    RightMenuButton: TButton;
    Layout7: TLayout;
    Panel5: TPanel;
    Label6: TLabel;
    GrassImage: TImage;
    TextSwitch: TSwitch;
    Layout8: TLayout;
    LinkControlToPropertyVisible: TLinkControlToProperty;
    MaskToAlphaEffect1: TMaskToAlphaEffect;
    Label7: TLabel;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    ShareButton: TButton;
    EggSaveDialog: TSaveDialog;
    ActionList1: TActionList;
    ShowShareSheetAction1: TShowShareSheetAction;
    TrashEggButton: TButton;
    PreviewImage: TImage;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    FullLayout: TLayout;
    Layout9: TLayout;
    ColorPanel3: TColorPanel;
    Panel6: TPanel;
    Label8: TLabel;
    LeftMenuButton2: TButton;
    AddEggLayout: TLayout;
    AddEggButton2: TButton;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    procedure ColorPanel1Change(Sender: TObject);
    procedure DesignFDMemTableAfterScroll(DataSet: TDataSet);
    procedure SaveEggButtonClick(Sender: TObject);
    procedure TTimer1Timer(Sender: TObject);
    procedure BGGradientTopChange(Sender: TObject);
    procedure BGGradientBottomChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AccessoryCEChange(Sender: TObject);
    procedure AccessoryCEKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EggLayoutResize(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ColorPanel2Change(Sender: TObject);
    procedure LeftMenuButtonClick(Sender: TObject);
    procedure RightMenuButtonClick(Sender: TObject);
    procedure TextSwitchSwitch(Sender: TObject);
    procedure ShareButtonClick(Sender: TObject);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure TrashEggButtonClick(Sender: TObject);
    procedure ColorPanel3Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    FRanOnce: Boolean;
    FDesignFrame: TFrame;
    procedure LoadFrame(Sender: TObject);
    procedure ChangeDesign;
    procedure UpdateBackground;
    procedure SetAlphaColorToPixel(ABitmap: TBitmap; Color: TAlphaColor);
  public
    { Public declarations }
    procedure AppIdle(Sender: TObject; var Done: Boolean);
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  System.Math, System.IOUtils, uStarsFrame, uRabbitsFrame, uRabbitFrame, uChicksFrame,
  uBabyChickFrame, uCarrotFrame, uPinkFlowerFrame, uDaisyFrame, uSunflowerFrame,
  uRibbonFrame, uUnicornFrame, uRainbowFrame, uSparklesFrame, uHeartsFrame,
  uFlameFrame, uEmptyFrame, uLines3Frame, uTopColorFrame, uBottomColorFrame;

procedure TMainForm.SetAlphaColorToPixel(ABitmap: TBitmap; Color: TAlphaColor);
var
  bitdata1: TBitmapData;
  I: integer;
  J: integer;
begin
  if (ABitmap.Map(TMapAccess.ReadWrite, bitdata1)) then
    try
      for I := 0 to ABitmap.Width - 1 do
        for J := 0 to ABitmap.Height - 1 do
        begin
          begin
            if PixelToAlphaColor(@PAlphaColorArray(bitdata1.Data)[J * (bitdata1.Pitch div PixelFormatBytes[ABitmap.PixelFormat]) + 1 * I], ABitmap.PixelFormat) = Color then
            begin
              AlphaColorToPixel($00000000, @PAlphaColorArray(bitdata1.Data)
                [J * (bitdata1.Pitch div PixelFormatBytes[ABitmap.PixelFormat]) + 1 * I], ABitmap.PixelFormat);
            end;
          end;
        end;
    finally
      ABitmap.Unmap(bitdata1);
    end;
end;

procedure TMainForm.ShareButtonClick(Sender: TObject);
begin
  {$IF DEFINED(ANDROID) OR DEFINED(IOS)}
  if EggsBindSourceDB.DataSet.RecordCount>0 then
    ShowShareSheetAction1.Execute;
  {$ELSE}
  if EggsBindSourceDB.DataSet.RecordCount>0 then
    if EggSaveDialog.Execute then
      begin
        TBlobField(EggsBindSourceDB.DataSet.FieldByName('Image')).SaveToFile(EggSaveDialog.Filename);
      end;
  {$ENDIF}
end;

procedure TMainForm.ShowShareSheetAction1BeforeExecute(Sender: TObject);
var
  MS: TMemoryStream;
begin
  if EggsBindSourceDB.DataSet.RecordCount>0 then
  begin
    MS := TMemoryStream.Create;
    try
    TBlobField(EggsBindSourceDB.DataSet.FieldByName('Image')).SaveToStream(MS);
    MS.Position := 0;
    ShowShareSheetAction1.Bitmap.LoadFromStream(MS);
    finally
      MS.Free;
    end;
  end;
end;

procedure TMainForm.LeftMenuButtonClick(Sender: TObject);
begin
  MultiView1.Visible := not MultiView1.Visible;
end;

procedure TMainForm.LoadFrame(Sender: TObject);
begin
  if Assigned(FDesignFrame) then
    FreeAndNil(FDesignFrame);

  FDesignFrame := TFrame(Sender);
  FDesignFrame.Name := 'D' + Random(99999999).ToString;
  FDesignFrame.Parent := EggLayout;
  FDesignFrame.Align := TAlignLayout.Center;
  EggFrontRect.BringToFront;
  EggFrontImage.BringToFront;
end;

procedure TMainForm.RightMenuButtonClick(Sender: TObject);
begin
  MultiView2.Width := IfThen(MultiView2.Width=58,250,58);
  PreviewImage.Visible := not PreviewImage.Visible;
  AddEggLayout.Visible := not AddEggLayout.Visible;
end;

procedure TMainForm.SaveEggButtonClick(Sender: TObject);
var
  LBitmap: TBitmap;
  MS: TMemoryStream;
begin
  MS := TMemoryStream.Create;
  try
    LBitmap := FullLayout.MakeScreenshot;
    try
    LBitmap.SaveToStream(MS);
    finally
      LBitmap.Free;
    end;
    MS.Position := 0;

    EggsFDMemTable.Append;
    EggsFDMemTable.FieldByName('TStamp').AsDateTime := Now;
    EggsFDMemTable.FieldByName('Title').AsString := 'Easter Egg!';
    TBlobField(EggsFDMemTable.FieldByName('Image')).LoadFromStream(MS);
    EggsFDMemTable.Post;
  finally
    MS.Free;
  end;

end;

procedure TMainForm.UpdateBackground;
begin
  EggFrontImage.Visible := False;
  EggFrontRect.Visible := True;
  EggFrontRect.BringToFront;
  Timer1.Enabled := True;
end;

procedure TMainForm.TextSwitchSwitch(Sender: TObject);
begin
  UpdateBackground;
end;

procedure TMainForm.TrashEggButtonClick(Sender: TObject);
begin
  if EggsBindSourceDB.DataSet.RecordCount>0 then
    EggsBindSourceDB.DataSet.Delete;
end;

procedure TMainForm.TTimer1Timer(Sender: TObject);
var
  LBitmap: TBitmap;
  MS: TMemoryStream;
begin
  Timer1.Enabled := False;
  MS := TMemoryStream.Create;
  try
    LBitmap := EggLayout.MakeScreenshot;
    SetAlphaColorToPixel(LBitmap,TAlphaColorRec.Black);
    try
    LBitmap.SaveToStream(MS);
    MS.Position := 0;
    EggFrontImage.Bitmap.LoadFromStream(MS);
    finally
      LBitmap.Free;
    end;
    MS.Position := 0;
  finally
    MS.Free;
  end;

  EggFrontRect.Visible := False;
  EggFrontImage.Visible := True;
  EggFrontImage.BringToFront;
end;

procedure TMainForm.ColorPanel1Change(Sender: TObject);
begin
  FillRGBEffect1.Color := ColorPanel1.Color;
end;

procedure TMainForm.ColorPanel2Change(Sender: TObject);
begin
  UpdateBackground;
end;

procedure TMainForm.ColorPanel3Change(Sender: TObject);
begin
  case DesignFDMemTable.FieldByName('Id').AsInteger of
    16: begin
      TLines3Frame(FDesignFrame).Rectangle1.Fill.Color := ColorPanel3.Color;
      TLines3Frame(FDesignFrame).Rectangle2.Fill.Color := ColorPanel3.Color;
      TLines3Frame(FDesignFrame).Rectangle3.Fill.Color := ColorPanel3.Color;
    end;
    17: begin
      TTopColorFrame(FDesignFrame).Rectangle1.Fill.Color := ColorPanel3.Color;
    end;
    18: begin
      TBottomColorFrame(FDesignFrame).Rectangle1.Fill.Color := ColorPanel3.Color;
    end;
  end;
end;

procedure TMainForm.DesignFDMemTableAfterScroll(DataSet: TDataSet);
begin
  ChangeDesign;
end;

procedure TMainForm.Edit1Change(Sender: TObject);
begin
  UpdateBackground;
end;

procedure TMainForm.EggLayoutResize(Sender: TObject);
begin
  UpdateBackground;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   EggsFDMemTable.SaveToFile(TPath.Combine(TPath.GetDocumentsPath,'emojieggs.fds'));
end;


procedure TMainForm.AppIdle(Sender: TObject; var Done: Boolean);
begin
  if not FRanOnce then
    begin
      FRanOnce := True;

      if TFile.Exists(TPath.Combine(TPath.GetDocumentsPath,'emojieggs.fds')) then
        EggsFDMemTable.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath,'emojieggs.fds'));

      EggsBindSourceDB.DataSet.Refresh;
    end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Application.OnIdle := AppIdle;

  BGGradientTop.Color := EggFrontRect.Fill.Gradient.Points.Points[1].Color;
  BGGradientBottom.Color := EggFrontRect.Fill.Gradient.Points.Points[0].Color;

  LeftMenuButton.BringToFront;
end;

procedure TMainForm.AccessoryCEChange(Sender: TObject);
begin
  AccessoryBindSourceDB.DataSet.Locate('Emoji',VarArrayOf([AccessoryCE.Text]),[]);
end;

procedure TMainForm.AccessoryCEKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  KeyChar := #0;
end;

procedure TMainForm.BGGradientBottomChange(Sender: TObject);
begin
  EggFrontRect.Fill.Gradient.Color := BGGradientBottom.Color;
  UpdateBackground;
end;

procedure TMainForm.BGGradientTopChange(Sender: TObject);
begin
  EggFrontRect.Fill.Gradient.Color1 := BGGradientTop.Color;
  UpdateBackground;
end;

procedure TMainForm.ChangeDesign;
begin
  case DesignFDMemTable.FieldByName('Id').AsInteger of
    0: LoadFrame(TEmptyFrame.Create(Self));
    1: LoadFrame(TStarsFrame.Create(Self));
    2: LoadFrame(TRabbitsFrame.Create(Self));
    3: LoadFrame(TRabbitFrame.Create(Self));
    4: LoadFrame(TChicksFrame.Create(Self));
    5: LoadFrame(TBabyChickFrame.Create(Self));
    6: LoadFrame(TCarrotFrame.Create(Self));
    7: LoadFrame(TPinkFlowerFrame.Create(Self));
    8: LoadFrame(TDaisyFrame.Create(Self));
    9: LoadFrame(TSunflowerFrame.Create(Self));
    10: LoadFrame(TRibbonFrame.Create(Self));
    11: LoadFrame(TUnicornFrame.Create(Self));
    12: LoadFrame(TRainbowFrame.Create(Self));
    13: LoadFrame(TSparklesFrame.Create(Self));
    14: LoadFrame(THeartsFrame.Create(Self));
    15: LoadFrame(TFlameFrame.Create(Self));
    16: LoadFrame(TLines3Frame.Create(Self));
    17: LoadFrame(TTopColorFrame.Create(Self));
    18: LoadFrame(TBottomColorFrame.Create(Self));
  end;
end;

initialization
  Randomize;

end.
