unit Unit3;

interface
uses Unit2;
var DeqStart, DeqEnd, DeqStart2, DeqEnd2, DeqStart3,DeqEnd3: PElem; names: array [0..19] of string;
implementation


initialization
  DeqStart:=nil;
  DeqEnd:=nil;

  DeqStart2:=nil;
  DeqEnd2:=nil;

  DeqStart3:=nil;
  DeqEnd3:=nil;


  names[0]:='������';
  names[1]:='�������';
  names[2]:='������';
  names[3]:='������';
  names[4]:='�������';
  names[5]:='������';
  names[6]:='�������';
  names[7]:='�����';
  names[8]:='���������';
  names[9]:='���������';
  names[10]:='��������';
  names[11]:='����������';
  names[12]:='�����';
  names[13]:='�������';
  names[14]:='�������';
  names[15]:='������';
  names[16]:='��������';
  names[17]:='�������';
  names[18]:='������';
  names[19]:='��������';

finalization
  FreeList(DeqStart,DeqEnd);
  FreeList(DeqStart2,DeqEnd2);
  FreeList(DeqStart3,DeqEnd3);
end.


