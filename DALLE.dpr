program DALLE;

uses
  System.StartUpCopy,
  FMX.Forms,
  Skia.FMX,
  DALLE.Main in 'DALLE.Main.pas' {FormMain},
  DALLE.FrameChat in 'DALLE.FrameChat.pas' {FrameChat: TFrame},
  DALLE.FrameMessage in 'DALLE.FrameMessage.pas' {FrameMessage: TFrame},
  DALLE.Translate in 'DALLE.Translate.pas',
  DALLE.FrameImage in 'DALLE.FrameImage.pas' {FrameImage: TFrame},
  DALLE.FrameImagePreview in 'DALLE.FrameImagePreview.pas' {FramePreview: TFrame},
  OpenAI.API.Params in 'DelphiOpenAI\OpenAI.API.Params.pas',
  OpenAI.API in 'DelphiOpenAI\OpenAI.API.pas',
  OpenAI.Audio in 'DelphiOpenAI\OpenAI.Audio.pas',
  OpenAI.Chat in 'DelphiOpenAI\OpenAI.Chat.pas',
  OpenAI.Completions in 'DelphiOpenAI\OpenAI.Completions.pas',
  OpenAI.Edits in 'DelphiOpenAI\OpenAI.Edits.pas',
  OpenAI.Embeddings in 'DelphiOpenAI\OpenAI.Embeddings.pas',
  OpenAI.Engines in 'DelphiOpenAI\OpenAI.Engines.pas',
  OpenAI.Errors in 'DelphiOpenAI\OpenAI.Errors.pas',
  OpenAI.Files in 'DelphiOpenAI\OpenAI.Files.pas',
  OpenAI.FineTunes in 'DelphiOpenAI\OpenAI.FineTunes.pas',
  OpenAI.Images in 'DelphiOpenAI\OpenAI.Images.pas',
  OpenAI.Models in 'DelphiOpenAI\OpenAI.Models.pas',
  OpenAI.Moderations in 'DelphiOpenAI\OpenAI.Moderations.pas',
  OpenAI in 'DelphiOpenAI\OpenAI.pas',
  OpenAI.Utils.ChatHistory in 'DelphiOpenAI\OpenAI.Utils.ChatHistory.pas';

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
