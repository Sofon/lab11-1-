unit Unit1;

interface





uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, ComCtrls, ExtCtrls,Unit2, Unit3, Grids;


type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    XPManifest1: TXPManifest;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    OpenDialog1: TOpenDialog;
    Splitter2: TSplitter;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SaveDialog1: TSaveDialog;
    Button7: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    StringGrid1: TStringGrid;
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure Solve(var ListN, ListK, ListN2, ListK2, ListN3, ListK3: PElem);
var List: PElem;  // текущий элемент списка
begin


List:=ListN;


     while List<>nil do begin
     if (List^.info.number=1) AND (List^.info.weight>=30) then AddListItem(ListN2, ListK2,List^.info.surname,List^.info.race,List^.info.date,List^.info.number,List^.info.weight)
     else  AddListItem(ListN3, ListK3,List^.info.surname,List^.info.race,List^.info.date,List^.info.number,List^.info.weight);   // не подходящие по условию
     List:=List^.next;
     end;


end;



function Average(ListN:PElem):real;
var k:integer; List:PElem; total:real;
begin
k:=0;
List:=ListN;

  while List<>nil do begin
  inc(k);
  total:=total+List^.info.weight;
  List:=List^.next;
  end;
if k=0 then Average:=0
else Average:=total/k;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='№ п/п';
StringGrid1.Cells[1,0]:='Фамилия';
StringGrid1.Cells[2,0]:='№ рейса';
StringGrid1.Cells[3,0]:='Дата';
StringGrid1.Cells[4,0]:='Кол-во вещей';
StringGrid1.Cells[5,0]:='Вес, кг';

Randomize;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,j:integer;
begin
  FreeList(DeqStart,DeqEnd);
  FreeList(DeqStart2,DeqEnd2);
  FreeList(DeqStart3,DeqEnd3);

  for i:=0 to 5 do
  for j:=1 to StringGrid1.RowCount do StringGrid1.Cells[i,j]:='';

  StringGrid1.RowCount:=6;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
try
AddListItem(DeqStart, DeqEnd, Edit2.Text, StrToInt(Edit3.Text), Edit4.Text,StrToInt(Edit5.Text),StrToFloat(Edit6.Text));

Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
except
ShowMessage('Неверно введены данные');
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var n,i,index,race,number:integer; date:string; weight:real;

begin

  n:=UpDown1.Position;

  for i:=1 to n do
  begin
    index:=Random(19);
    race:=Random(2000);
    date:=IntTostr(Random(27)+1) + '.' + IntTostr(Random(11)+1) + '.' + IntTostr(Random(19)+1990);
    number:=Random(30)+1;
    weight:=Random(80)+0.1;
    AddListItem(DeqStart, DeqEnd, names[index],race,date,number,weight);
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  List: PElem;
  w: real;
  k:integer;
begin
FreeList(DeqStart2,DeqEnd2);
FreeList(DeqStart3,DeqEnd3);
Solve(DeqStart,DeqEnd, DeqStart2,DeqEnd2, DeqStart3,DeqEnd3);


if ComboBox2.ItemIndex=0 then begin
  case ComboBox1.ItemIndex of
  0: List:=DeqStart;
  1: List:=DeqStart2;
  2: List:=DeqStart3;
  end;

end else begin
  case ComboBox1.ItemIndex of
  0: List:=DeqEnd;
  1: List:=DeqEnd2;
  2: List:=DeqEnd3;
  end;
end;
  
  k:=0;
if List<>nil then
  while (List<>nil) do begin
  inc(k);
  StringGrid1.Cells[0,k]:=IntToStr(k);
  StringGrid1.Cells[1,k]:=List^.info.surname;
  StringGrid1.Cells[2,k]:=IntToStr(List^.info.race);
  StringGrid1.Cells[3,k]:=List^.info.date;
  StringGrid1.Cells[4,k]:=IntToStr(List^.info.number);
  StringGrid1.Cells[5,k]:=FloatToStr(List^.info.weight);

    case ComboBox2.ItemIndex of
    0: List:=List^.next;
    1: List:=List^.previous;
    end;

  StringGrid1.RowCount:=k+1;
  end
else begin
StringGrid1.Cells[0,1]:='';
StringGrid1.Cells[1,1]:='';
StringGrid1.Cells[2,1]:='';
StringGrid1.Cells[3,1]:='';
StringGrid1.Cells[4,1]:='';
StringGrid1.Cells[5,1]:='';
StringGrid1.RowCount:=2;
end;

w:=Average(DeqStart);
if w<>0 then begin
  Label3.Caption:='Средний вес багажа: '+FloatToStr(w);
  Label3.Visible:=true;
end
else Label3.Visible:=false;
end;





procedure TForm1.Button2Click(Sender: TObject);
var f: textfile; surname:string; race:integer; date:string; number:integer; weight:real;
begin

if OpenDialog1.Execute then begin
  AssignFile(f, OpenDialog1.FileName);
  try
    Reset(f);
   try
    try
      while not eof(f) do begin

      readln(f, surname);
      readln(f, race);
      readln(f, date);
      readln(f, number);
      readln(f, weight);

      AddListItem(DeqStart, DeqEnd, surname,race,date,number,weight);

      end;
      except
      ShowMessage('Неправильный формат в файле '+ OpenDialog1.FileName);
      end;
    finally
    CloseFile(f);
    end;
  except
    ShowMessage('Не удалось открыть текстовый файл '+ OpenDialog1.FileName);
end;
 end else
  ShowMessage('Текстовый файл не задан! Операция отменена');
end;



procedure TForm1.Button7Click(Sender: TObject);
var List:PElem; k:integer; f:textfile;  w:real;
begin
if SaveDialog1.Execute then
 begin
  AssignFile(f, SaveDialog1.FileName);
  try
    Rewrite(f);
    try
     writeln(f,'Все пассажиры:');
      k:=0;
      List:=DeqStart;

      if List<>nil then begin
              write(f,'Фамилия  | № рейса | Дата   |  Кол-во вещей  | Вес, кг');
              writeln(f);
              while List<>nil do
              begin
              inc(k);
              write(f,k,'. ');
              write(f,List^.info.surname,'  ');
              write(f,List^.info.race,' ');
              write(f,List^.info.date,' ');
              write(f,List^.info.number,' ');
              write(f,List^.info.weight:4:2,' ');
              writeln(f);
              List:=List^.next;
              end;


            List:=DeqStart2;

              if List<>nil then begin
              k:=0;
              writeln(f);
              writeln(f,'Пассажиры с 1 вещью массой не менее 30 кг:');
                while List<>nil do
                begin
                inc(k);
                write(f,k,'. ');
                write(f,List^.info.surname,'  ');
                write(f,List^.info.race,' ');
                write(f,List^.info.date,' ');
                write(f,List^.info.number,' ');
                write(f,List^.info.weight:4:2,' ');
                writeln(f);
                List:=List^.next;
                end;
               end;

            List:=DeqStart3;

               if List<>nil then begin
               writeln(f);
               writeln(f,'Остальные пассажиры:');
               k:=0;
                while List<>nil do
                begin
                inc(k);
                write(f,k,'. ');
                write(f,List^.info.surname,'  ');
                write(f,List^.info.race,' ');
                write(f,List^.info.date,' ');
                write(f,List^.info.number,' ');
                write(f,List^.info.weight:4:2,' ');
                writeln(f);
                List:=List^.next;
                end;
               end;

       w:=Average(DeqStart);
       writeln(f);
       writeln(f,'Средняя масса багажа: ',w:4:2);
     end else
     writeln(f,'Список пуст');


      finally
      CloseFile(f);
    end;
  except
    ShowMessage('Не удалост найти файл');
  end;
 end
 else
  ShowMessage('Текстовый файл не задан');
end;

end.
