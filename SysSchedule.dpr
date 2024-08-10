program SysSchedule;

uses
  System.StartUpCopy,
  FMX.Forms,
  fSplash in 'fSplash.pas' {uSplash},
  fLogin in 'fLogin.pas' {uLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TuSplash, uSplash);
  Application.CreateForm(TuLogin, uLogin);
  Application.Run;
end.
