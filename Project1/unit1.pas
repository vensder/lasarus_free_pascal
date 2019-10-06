unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ValEdit;

type


  { TForm1 }

  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure ValueListEditor1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ListBox3Click(Sender: TObject);
begin
  Self.SetColor(clBlue);
end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  ListBox1.Items.Add('America');
  ListBox1.Items.Add('United Kingdom');
  ListBox1.Items.Add('France');
end;

end.

