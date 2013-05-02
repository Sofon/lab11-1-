unit Unit2;

interface

Type

line=record
 surname:string;
 race:integer;
 date:string;
 number:integer;
 weight:real;
 end;
  PElem = ^TElem;
  TElem = record
      info: line;
      next: PElem;
      previous: PElem;
  end;

  procedure Create(var ListN, ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real);

  procedure AddFirst(var ListN: PElem; ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real);

  procedure AddLast(ListN: PElem; var ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real);

  procedure FreeList(var ListN, ListK: PElem);

  procedure AddListItem(var ListN, ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real); // адреса начала и конца списка и R

implementation

procedure Create(var ListN, ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real);
begin
  New(ListN);
  ListK:=ListN;
  ListN^.info.surname:=surname;
  ListN^.info.race:=race;
  ListN^.info.date:=date;
  ListN^.info.number:=number;
  ListN^.info.weight:=weight;
  ListN^.next:=nil;
  ListN^.previous:=nil;
end;


procedure AddFirst(var ListN: PElem; ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real);
var Elem: PElem;
begin
  new(Elem);
  Elem^.info.surname:=surname;
  Elem^.info.race:=race;
  Elem^.info.date:=date;
  Elem^.info.number:=number;
  Elem^.info.weight:=weight;
  Elem^.next:=ListN;
  Elem^.previous:=nil;
  ListN:=Elem;
end;


procedure AddLast(ListN: PElem; var ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real);
begin
  new(ListK^.next);
  ListK^.next.info.surname:=surname;
  ListK^.next.info.race:=race;
  ListK^.next.info.date:=date;
  ListK^.next.info.number:=number;
  ListK^.next.info.weight:=weight;
  ListK^.next^.next:=nil;
  ListK^.next^.previous:=ListK;
  ListK:= ListK^.next;
end;


procedure FreeList(var ListN, ListK: PElem);
var Elem: PElem;
begin
  Elem:=ListN;
  while Elem<>nil do
  begin
    ListN:=ListN^.next;
    Dispose(Elem);
    Elem:=ListN;
  end;
end;





procedure AddListItem(var ListN, ListK: PElem; surname:string; race:integer; date:string; number:integer; weight:real); // адреса начала и конца списка и R
begin
  if ListN = nil then Create(ListN,ListK,surname,race,date,number,weight)  // если список пуст
  else AddLast(ListN,ListK,surname,race,date,number,weight);  // добавить в конец

end;
end.

