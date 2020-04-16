unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Unit2, Process, LazFileUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    Edit1.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    Edit2.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    Edit3.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    Edit4.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  RunProgram: TProcess;
  a: String;
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('----- Start -----');
  RunProgram := TProcess.Create(nil);
  a := Edit1.Text + ' -i' + Edit4.Text + ' -c:a aac -b:a 128k ' + ExtractFileNameWithoutExt(Edit4.Text) + '_conv.aac';
  Memo1.Lines.Add(a);
  RunProgram.CommandLine := a;
  RunProgram.Options := RunProgram.Options + [poWaitOnExit];
  RunProgram.Execute;
  RunProgram.Free;

  RunProgram := TProcess.Create(nil);
  a := Edit2.Text + ' -i ' + Edit4.Text + ' -o ' + ExtractFileNameWithoutExt(Edit4.Text) + '.json --pixels-per-second 20 --bits 8';
  Memo1.Lines.Add(a);
  RunProgram.CommandLine := a;
  RunProgram.Options := RunProgram.Options + [poWaitOnExit];
  RunProgram.Execute;
  RunProgram.Free;

  RunProgram := TProcess.Create(nil);
  a := 'python ' + Edit3.Text + ' ' + ExtractFileNameWithoutExt(Edit4.Text) + '.json';
  Memo1.Lines.Add(a);
  RunProgram.CommandLine := a;
  RunProgram.Options := RunProgram.Options + [poWaitOnExit];
  RunProgram.Execute;
  RunProgram.Free;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  if RadioButton1.Checked = true then begin
    Edit5.Enabled := false;
  end;
  if Radiobutton1.Checked = false then begin
    Edit5.Enabled := true;
  end;
end;

end.

