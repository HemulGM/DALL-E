unit DALLE.FrameImagePreview;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation;

type
  TFramePreview = class(TFrame)
    RectangleBG: TRectangle;
    Image: TImage;
    Layout1: TLayout;
    Button1: TButton;
    Rectangle1: TRectangle;
    SaveDialogJPG: TSaveDialog;
    procedure FrameClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure ShowPreview(Bitmap: TBitmap);
  end;

implementation

uses
  DALLE.Main;

{$R *.fmx}

{ TFramePreview }

procedure TFramePreview.Button1Click(Sender: TObject);
begin
  if SaveDialogJPG.Execute then
    Image.Bitmap.SaveToFile(SaveDialogJPG.FileName);
end;

procedure TFramePreview.FrameClick(Sender: TObject);
begin
  TThread.ForceQueue(nil, Free);
end;

class procedure TFramePreview.ShowPreview(Bitmap: TBitmap);
begin
  var Frame := TFramePreview.Create(Application.MainForm);
  Frame.Parent := Application.MainForm;
  Frame.Align := TAlignLayout.Contents;
  Frame.Image.Bitmap := Bitmap;
  Frame.BringToFront;
end;

end.

