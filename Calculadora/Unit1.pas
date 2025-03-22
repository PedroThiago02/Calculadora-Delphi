unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    BntResultado: TSpeedButton;
    Btn1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BntSoma: TSpeedButton;
    BntSubtracao: TSpeedButton;
    BntMultiplicacao: TSpeedButton;
    Btn6: TSpeedButton;
    Btn5: TSpeedButton;
    Btn4: TSpeedButton;
    Btn9: TSpeedButton;
    BntDivisao: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Btn7: TSpeedButton;
    Btn8: TSpeedButton;
    Btn2: TSpeedButton;
    Btn0: TSpeedButton;
    SpeedButton19: TSpeedButton;
    Btn3: TSpeedButton;
    Visor: TEdit;
    procedure Btn0Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure BntSomaClick(Sender: TObject);
    procedure BntSubtracaoClick(Sender: TObject);
    procedure BntMultiplicacaoClick(Sender: TObject);
    procedure BntDivisaoClick(Sender: TObject);
    procedure BntResultadoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
  private
    valoratual: double;
    operacao: integer;
    limpar: boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{Eventos de Click}

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + ',';
end;

procedure TForm1.Btn0Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '0';
end;

procedure TForm1.Btn1Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '1';
end;

procedure TForm1.Btn2Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '2';
end;

procedure TForm1.Btn3Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '3';
end;

procedure TForm1.Btn4Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '4';
end;

procedure TForm1.Btn5Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '5';
end;

procedure TForm1.Btn6Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '6';
end;

procedure TForm1.Btn7Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '7';
end;

procedure TForm1.Btn8Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '8';
end;

procedure TForm1.Btn9Click(Sender: TObject);
begin
  if limpar then begin
     Visor.Text := '';
     limpar := false;
  end;
  Visor.Text := Visor.Text + '9';
end;

{Click Opera��es}

procedure TForm1.BntSomaClick(Sender: TObject);
begin
  operacao := 1;
  limpar := true;
  valoratual := StrToFloat(Visor.Text);
end;

procedure TForm1.BntSubtracaoClick(Sender: TObject);
begin
  operacao := 2;
  limpar := true;
  valoratual := StrToFloat(Visor.Text);
end;

procedure TForm1.BntMultiplicacaoClick(Sender: TObject);
begin
  operacao := 3;
  limpar := true;
  valoratual := StrToFloat(Visor.Text);
end;

procedure TForm1.BntDivisaoClick(Sender: TObject);
begin
  operacao := 4;
  limpar := true;
  valoratual := StrToFloat(Visor.Text);
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  operacao := 5;
  limpar := true;
  valoratual := StrToFloat(Visor.Text);
end;

procedure TForm1.BntResultadoClick(Sender: TObject);
   var
   valor2, resultado: double;
begin
  valor2 := StrToFloat(Visor.Text);
  case operacao of
  1:
    resultado := valoratual + valor2;
  2:
    resultado := valoratual - valor2;
  3:
    resultado := valoratual * valor2;
  4:
    resultado := valoratual / valor2;
  5:
    resultado := sqrt(valoratual);
  end;
  limpar := true;
  Visor.Text := FloatToStr(resultado);
  valoratual := resultado;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  valoratual := 0;
  Visor.Text := '0';
  operacao := 0;
  limpar := true;
end;
end.
