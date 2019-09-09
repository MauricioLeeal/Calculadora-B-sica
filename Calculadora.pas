unit Calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    btn0: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnsoma: TButton;
    btnsub: TButton;
    btnmulti: TButton;
    btndiv: TButton;
    btntotal: TButton;
    edtvisor: TEdit;
    btnC: TButton;
    btn000: TButton;
    btnCE: TButton;
    btn10: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnsomaClick(Sender: TObject);
    procedure btnsubClick(Sender: TObject);
    procedure btnmultiClick(Sender: TObject);
    procedure btndivClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btntotalClick(Sender: TObject);
  private
    { Private declarations }
    valor_atual : Double;
    operacao : Integer;
    limpar : Boolean;
    procedure AtualizaVisor(const Valor: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn0Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '0');
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '1');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '2');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '3');
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '4');
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '5');
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '6');
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '7');
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '8');
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if limpar then
  begin
    AtualizaVisor('');
    limpar := False;
  end;
  if edtvisor.Text = '0' then
  begin
    AtualizaVisor('');
  end;
  AtualizaVisor(edtvisor.Text + '9');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  operacao := 0;
  valor_atual := 0;
  limpar := False;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char('0') then
  begin
    btn0Click(nil);
  end;
  if Key = Char('1') then
  begin
    btn1Click(nil);
  end;
    if Key = Char('2') then
  begin
    btn2Click(nil);
  end;
    if Key = Char('3') then
  begin
    btn3Click(nil);
  end;
    if Key = Char('4') then
  begin
    btn4Click(nil);
  end;
    if Key = Char('5') then
  begin
    btn5Click(nil);
  end;
    if Key = Char('6') then
  begin
    btn6Click(nil);
  end;
    if Key = Char('7') then
  begin
    btn7Click(nil);
  end;
    if Key = Char('8') then
  begin
    btn8Click(nil);
  end;
    if Key = Char('9') then
  begin
    btn9Click(nil);
  end;
      if Key = Char('+') then
  begin
    btnsomaClick(nil);
  end;
      if Key = Char('-') then
  begin
    btnsubClick(nil);
  end;
      if Key = Char('*') then
  begin
    btnmultiClick(nil);
  end;
  if Key = Char('/') then
  begin
    btndivClick(nil);
  end;
  if Key = Char ('=') then
  begin
    btntotalClick(nil);
  end;
  if Key = #13 then
  begin
    btntotalClick(nil);
  end;
  if Key = #27 then
  begin
    btnCClick(nil);
  end;
end;

procedure TForm1.btnsomaClick(Sender: TObject);
begin
  operacao := 1;
  limpar := True;
  valor_atual := StrToFloat(edtvisor.Text);
end;

procedure TForm1.btnsubClick(Sender: TObject);
begin
  operacao := 2;
  limpar := True;
  valor_atual := StrToFloat(edtvisor.Text);
end;

procedure TForm1.btnmultiClick(Sender: TObject);
begin
  operacao := 3;
  limpar := True;
  valor_atual := StrToFloat(edtvisor.Text);
end;

procedure TForm1.btndivClick(Sender: TObject);
begin
  operacao := 4;
  limpar := True;
  valor_atual := StrToFloat(edtvisor.Text);
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  valor_atual := 0;
  edtvisor.Text := '0';
  operacao := 0;
  limpar := True;
end;

procedure TForm1.btntotalClick(Sender: TObject);
begin
  if operacao = 1 then
  begin
    valor_atual := valor_atual + StrToFloat(edtvisor.text);
  end else if operacao = 2 then
  begin
    valor_atual := valor_atual - StrToFloat(edtvisor.text);
  end else if operacao = 3 then
  begin
    valor_atual := valor_atual * StrToFloat(edtvisor.text);
  end else
  begin
    valor_atual := valor_atual / StrToFloat(edtvisor.text);
  end;
  limpar := True;
  edtvisor.Text := FloatToStr(valor_atual);      

end;

procedure TForm1.AtualizaVisor(const Valor: String);
begin
   if Length(edtvisor.Text) < 8 then
      edtvisor.Text := Valor;
end;

end.
