unit fSplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls;

type
  TuSplash = class(TForm)
    ImageViewer1: TImageViewer;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    ImageViewer2: TImageViewer;
    procedure Timer1Timer(Sender: TObject);
  private
     { Privete declarations }
  public
    { Public declarations }
  end;

var
  uSplash: TuSplash;

implementation

{$R *.fmx}

uses fLogin;

procedure TuSplash.Timer1Timer(Sender: TObject);
begin
 // Vai contando
  ProgressBar1.Value := ProgressBar1.Value + 1;

  // Verifica se chegou a 100
  if ProgressBar1.Value = 100 then
  begin
    // Fecha o relógio
    Timer1.Enabled := False;

    // Esconde a tela splash
    uSplash.Hide;

    // Carrega a tela de login (se tiver controle de login)
    uLogin := TuLogin.Create(Application);
    try
      uLogin.ShowModal;
    finally
      uLogin.Free; // Libera o formulário de login da memória após o uso
    end;

end;

end;
