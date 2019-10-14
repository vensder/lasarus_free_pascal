unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
filename: string;
MyFile: TextFile;
s: string;
ii: LongInt;
begin


if OpenDialog1.Execute then
begin
  filename := OpenDialog1.Filename;
  AssignFile(MyFile, filename);

  try
    Reset(MyFile);
    While not EOF(MyFile) do
    begin
      ReadLn(MyFile, s);
      s := Trim(s);
      if not TryStrToInt(s, ii) and (Pos('-->', s) = 0) and
           not s.IsNullOrWhiteSpace(s) and (s.Length > 5) then
              ListBox1.Items.Add(s);
    end;
  finally
    CloseFile(MyFile)
  end;
  ShowMessage('This file loaded:' + sLineBreak + filename);
end;
end;

end.

