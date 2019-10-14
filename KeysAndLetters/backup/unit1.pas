unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, keyboard, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    Letter: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure LetterClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;
  K: TKeyEvent;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);

begin

  If Key='0' then begin

  end;
  //ShowMessage(Key);
  Letter.Caption:=Key;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 0 then begin
  end;

  Label1.Caption:= ToString(Key);
  //ShowMessage(Key);
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Label1.Caption:='';
  //ShowMessage('FormKeyDown');
end;

procedure TForm1.LetterClick(Sender: TObject);
begin
  Letter.Caption:='B';
  //ShowMessage('B');
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Label1.Caption:='B';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

