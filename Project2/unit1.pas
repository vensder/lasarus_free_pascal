unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    OpenFile: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
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


procedure TForm1.Button1Click(Sender: TObject);

begin
  ListBox1.Items.Add('test1');
  ListBox1.Items.Add('test2');
  ListBox1.Items.Add('test3');
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
  i: Integer;
  s: String;
begin
  if ListBox1.Count > 0 then begin
    ListBox1.Items.BeginUpdate;
         for i := ListBox1.Items.Count - 1 downto 0 do
         if ListBox1.Selected[i] then
            s := ListBox1.GetSelectedText;
            ListBox1.Items.Delete(i);
    Listbox1.Items.EndUpdate;
    ListBox2.Items.Add(s);
  end;
end;

