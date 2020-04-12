program EmojiEasterEggs;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uStarsFrame in 'uStarsFrame.pas' {StarsFrame: TFrame},
  uRabbitsFrame in 'uRabbitsFrame.pas' {RabbitsFrame: TFrame},
  uRabbitFrame in 'uRabbitFrame.pas' {RabbitFrame: TFrame},
  uChicksFrame in 'uChicksFrame.pas' {ChicksFrame: TFrame},
  uBabyChickFrame in 'uBabyChickFrame.pas' {BabyChickFrame: TFrame},
  uCarrotFrame in 'uCarrotFrame.pas' {CarrotFrame: TFrame},
  uPinkFlowerFrame in 'uPinkFlowerFrame.pas' {PinkFlowerFrame: TFrame},
  uDaisyFrame in 'uDaisyFrame.pas' {DaisyFrame: TFrame},
  uSunflowerFrame in 'uSunflowerFrame.pas' {SunflowerFrame: TFrame},
  uRibbonFrame in 'uRibbonFrame.pas' {RibbonFrame: TFrame},
  uUnicornFrame in 'uUnicornFrame.pas' {UnicornFrame: TFrame},
  uRainbowFrame in 'uRainbowFrame.pas' {RainbowFrame: TFrame},
  uSparklesFrame in 'uSparklesFrame.pas' {SparklesFrame: TFrame},
  uHeartsFrame in 'uHeartsFrame.pas' {HeartsFrame: TFrame},
  uFlameFrame in 'uFlameFrame.pas' {FlameFrame: TFrame},
  uEmptyFrame in 'uEmptyFrame.pas' {EmptyFrame: TFrame},
  uLines3Frame in 'uLines3Frame.pas' {Lines3Frame: TFrame},
  uTopColorFrame in 'uTopColorFrame.pas' {TopColorFrame: TFrame},
  uBottomColorFrame in 'uBottomColorFrame.pas' {BottomColorFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
