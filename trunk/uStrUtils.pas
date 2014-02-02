unit uStrUtils;

interface

function NoTrailSpc(s:string):string;
function CheckBlank(s:string):string;
function ExtraSpell(Number:extended; Param:string = ''): string;
function NameCase(s:string; typ:integer = 0):string;
function xVariate(fNText: string; fSex: byte=0; fTag: byte=0):string;

function Month_Case_Nominative(ADate: TDateTime): string;
function Month_Case_Genitive(ADate: TDateTime): string;

const
  Month_Case_Nominative_Array: array[0..11] of string = (
    '�����', '�����', '��������', '������', '�������', '�������', '������', '�������', '��������', '�������', '��������', '�������'
  );

const
  Month_Case_Genitive_Array: array[0..11] of string = (
    '����', '������', '�������', '������', '������', '�������', '�����', '������', '��������', '�������', '���������', '������'
  );

implementation
uses System.SysUtils;

function Month_Case_Genitive(ADate: TDateTime): string;
var Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := Month_Case_Genitive_Array[Month -1];
end;

function Month_Case_Nominative(ADate: TDateTime): string;
var Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := Month_Case_Nominative_Array[Month];
end;

function NoTrailSpc(s:string):string;
var
 i:integer;
begin
 i:=Length(s);
 if i>0 then
 begin
  while (i>0) and (s[i]=' ') do dec(i);
  s:=Copy(s,1,i);
 end;
 result:=s;
end;

function CheckBlank(s:string):string;
var
 i,l:integer;
begin
 l:=length(s);
 if l>0 then
 begin
  i:=1;
  while (i<=l) and (s[i]<#$21) do inc(i);
  if i>l then s:='';
 end;
 result:=s;
end;

function ExtraSpell(Number:extended; Param:string = ''):string;
const
  sxp: array [0..8] of string = ('������','������','�����','���������',
                     '�''����','������','������','�������','���''����');
  xsm:array [0..5] of string =('������','������','��������','�����������',
                               '����������','�����������');
  xcil:array [0..2,0..5] of string =
     (('����','����','����','����','�����','����'),
     ('���','�����','�����','�����','������','�����'),
     ('�����','�����','�����','�����','������','�����'));

 function vrs(s:string;v,i:integer;n,r,d,z,o,m:string):string;
 begin
  result:='';
  SetLength(s,Length(s)-i);
  case v of
   0: result:=s+n;
   1: result:=s+r;
   2: result:=s+d;
   3: result:=s+z;
   4: result:=s+o;
   5: result:=s+m;
  end;
 end;

 function xx(x:int64; vid,rid,liv,typ:integer):string;

  function x1(vid,rid,liv,typ:integer):string; // 1
  const
   xs:array [0..1,0..5] of string =
          (('����','������','������','�/�','�����','������'),
           ('����','����','����','����','�����','����'));
  begin
   if rid<>1 then if vid=3 then vid:=liv;
   if (rid=2) and (vid=0) then result:='����' else
   begin
    if rid=2 then rid:=0;
    result:=xs[rid,vid];
   end;
   if typ=1 then result:='������';
  end;

  function x2(vid,rid,liv,typ:integer):string; // 2
  const
   xs:array [0..5] of string =('���','����','����','�/�','�����','����');
  begin
   if vid=3 then vid:=liv;
   if (rid=1) and (vid=0) then result:='��' else result:=xs[vid];
  end;

  function x3(vid,rid,liv,typ:integer):string; // 3
  const
   xs:array [0..5] of string =('���','�����','�����','�/�','������','�����');
  begin
   if vid=3 then vid:=liv;
   result:=xs[vid];
  end;

  function x4(vid,rid,liv,typ:integer):string; // 4
  const
   xs:array [0..5] of string =('������','��������','��������','�/�','�������','��������');
  begin
   if vid=3 then vid:=liv;
   result:=xs[vid];
  end;

  function x7(vid,rid,liv,typ:integer):string; // 7
  const
   xs:array [0..1,0..5] of string =(('��','����','����','��',{'�����'}'�����','����'),
                             ('��','����','����','����','�����','����'));
  begin
   result:=xs[liv,vid];
  end;

  function x6(vid,rid,liv,typ:integer):string; // 6
  const
   xs:array [0..1,0..5] of string =(('�����','�����','�����','�����','�������','�����'),
                             ('�����','�������','�������','�������','��������','�������'));
  begin
   result:=xs[liv,vid];
  end;

  function x8(vid,rid,liv,typ:integer):string; // 8
  const
   xs:array [0..1,0..5] of string =(('���','������','������','���',{'�����'}'�������','������'),
                             ('���','������','������','������','�������','������'));
  begin
   result:=xs[liv,vid];
  end;

  function x5x(x,vid,rid,liv,typ:integer):string; // 5,6,9,10,11,12,13,14,15,16,17,18,19,20,30
  const
   xs:array [0..11] of string =('���''���','������','����������','����������',
   '����������','������������','�''���������','�����������','���������',
   '����������','���''���������','��������');
  begin
   result:='';
   case x of
    5: result:='�''���';
    9..20: result:=xs[x-9];
    30: result:='��������';
   end;
   if result<>'' then
   begin
    if liv=0 then result:=vrs(result,vid,1,'�','�','�','�','���','�')
     else result:=vrs(result,vid,1,'�','���','���','���','����','���')
   end;
  end;

  function x50(x,vid,rid,liv,typ:integer):string; // 50,60,70,80
  const
   xs:array [0..3] of string =('�''��','����','��','���');
  begin
   result:=xs[(x div 10) - 5]+'�����';
   if liv=0 then result:=vrs(result,vid,0,'','�','�','','���','�')
    else result:=vrs(result,vid,0,'','���','���','���','����','���')
  end;

  function x40(x,vid,rid,liv,typ:integer):string; // 40,90,100
  begin
   case x of
    40: result:='�����';
    90: result:='���''������';
    100: result:='���';
   end;
   if x=40 then
   begin
    if liv=0 then result:=vrs(result,vid,0,'','�','�','','�','�')
     else result:=vrs(result,vid,0,'','�','�','�','�','�')
   end else
   begin
    if liv=0 then result:=vrs(result,vid,1,'�','�','�','�','�','�')
     else result:=vrs(result,vid,1,'�','�','�','�','�','�')
   end;

  end;

  function x200(x,vid,rid,liv,typ:integer):string; // 200,300,400,500,600,700,800,900
  const
   xs:array [0..7] of string =('����','������','���������','�''�����',
                               '�������','�����','������','���''�����');
  begin
   if vid=3 then vid:=0;
   if vid=0 then result:=xs[(x div 100) - 2] else
   begin
    result:=vrs(xx(x div 100,vid,rid,0,typ),vid,0,'','���','����','�','�����','����');
   end;
  end;

  function x1000(x,vid,rid,liv,typ:integer):string; // 1000
  begin
   x:=x div 1000;
   if x>0 then
   begin
    result:=xx(x,vid,1,0,0)+' ';
    x:=x mod 100;
    if ((x<10) or (x>19)) then
    begin
     x:=x mod 10;
     if x=1 then result:=result+vrs('�����',vid,0,'�','�','�','�','��','�')
     else if (x<5) and (x>1) then result:=result+vrs('�����',vid,0,'�','','��','�','���','��')
     else result:=result+vrs('�����',vid,0,'','','��','','���','��');
    end else result:=result+vrs('�����',vid,0,'','','��','','���','��');
   end else result:='';
  end;

  function x1000000(x:int64;vid,rid,liv,typ:integer):string; // 1000000....
  var
   i:integer;
   y:int64;
   s:string;
  begin
   result:='';
   i:=0;
   x:=x div 1000000;
   while x>0 do
   begin

    y:=x mod 1000;
    s:='';
    if y>0 then
    begin
     s:=xx(y,vid,0,0,0)+' ';

     y:=y mod 100;
     if ((y<10) or (y>19)) then
     begin
      y:=y mod 10;
      if y=1 then s:=s+vrs(xsm[i],vid,0,'','�','�','','��','�')
      else if (y<5) and (y>1) then s:=s+vrs(xsm[i],vid,0,'�','��','��','�','���','��')
      else s:=s+vrs(xsm[i],vid,0,'��','��','��','��','���','��');
     end else s:=s+vrs(xsm[i],vid,0,'��','��','��','��','���','��');
     if result<>'' then result:=s+' '+result else result:=s;
    end;

    x:=x div 1000;
    inc(i);
   end;
  end;

  function ads(s1,s2:string):string;
  begin
   if s1<>'' then result:=s1+' '+s2 else result:=s2;
  end;

 var
  s,ss:string;
  y,sca:int64;
  i:integer;
 begin
  case typ of
   0:begin
      if x=0 then result:='����' else
      begin
       if x>=1000 then
       begin
        s:=x1000000(x,vid,rid,liv,typ);
        x:=x mod 1000000;
        ss:=x1000(x,vid,rid,liv,typ);
        s:=ads(s,ss);
        x:=x mod 1000;
       end else s:='';
       if x>=100 then
       begin
        y:=x div 100;
        if y=1 then s:=ads(s,x40(100,vid,rid,liv,typ))
               else s:=ads(s,x200(y*100,vid,rid,liv,typ));
        x:=x mod 100;
       end;

       y:=x div 10;
       case y of
        4,9: s:=ads(s,x40(y*10,vid,rid,liv,typ));
        5,6,7,8: s:=ads(s,x50(y*10,vid,rid,liv,typ));
        2,3: s:=ads(s,x5x(y*10,vid,rid,liv,typ));
       end;
       if y=1 then
       begin
        s:=ads(s,x5x(x,vid,rid,liv,typ));
       end else
       begin
        x:=x mod 10;
        if x>0 then
         case x of
          1: s:=ads(s,x1(vid,rid,liv,typ));
          2: s:=ads(s,x2(vid,rid,liv,typ));
          3: s:=ads(s,x3(vid,rid,liv,typ));
          4: s:=ads(s,x4(vid,rid,liv,typ));
          6: s:=ads(s,x6(vid,rid,liv,typ));
          7: s:=ads(s,x7(vid,rid,liv,typ));
          8: s:=ads(s,x8(vid,rid,liv,typ));
         else
          s:=ads(s,x5x(x,vid,rid,liv,typ));
         end;
       end;
       result:=s;
      end;
     end;
   1:begin
      y:=0;
      if x=0 then result:='��������' else
      begin
       if (x mod 100)>0 then
       begin
        y:=x mod 100;
        if (y>10) and (y<20)  then
        begin
         result:=vrs(xx(y,0,0,0,0),0,1,'��','','','','','');
        end else
        if (x mod 10)>0 then
        begin
         y:=x mod 10;
         result:=sxp[y-1];
        end else
        begin
         case y of
          10,20,30: result:=vrs(xx(y,0,0,0,0),0,1,'��','','','','','');
          40: result:=vrs(xx(y,0,0,0,0),0,0,'����','','','','','');
          50,60,70,80: result:=vrs(xx(y,0,0,0,0),0,0,'��','','','','','');
          90: result:=vrs(xx(y,0,0,0,0),0,1,'��','','','','','');
         end;
        end;
       end else
       if (x mod 1000)>0 then
       begin
        y:=x mod 1000;
        if y=100 then result:='�����'
         else result:=vrs(xx(y,1,0,0,0),0,0,'��','','','','','');
       end else
       if (x mod 1000000)>0 then
       begin
        y:=x mod 1000000;
        if y=1000 then result:='' else
        begin

         result:=xx(y div 1000,0,0,0,3)
{
         if y=100000 then result:='���' else
         begin
          result:=xx(y div 1000,1,1,0,0);
          if ((y mod 100)<>11) and ((y mod 10)=1)
           then SetLength(result,Length(result)-2);
         end;
}
        end;
        result:=result+'��������';
       end else
       begin
        sca:=1000000000;
        i:=0;
        while (x mod sca)=0 do
        begin
         sca:=sca*1000;
         inc(i);
        end;
        y:=x mod sca;
        if (y * 1000 div sca)=1 then result:='' else
        begin

         result:=xx(y * 1000 div sca,0,0,0,3)
{
         if (y * 1000 div sca)=100 then result:='���'
         else
         begin
          result:=xx(y * 1000 div sca,1,0,0,0);
          if ((y mod 100)<>11) and ((y mod 10)=1)
           then SetLength(result,Length(result)-2);
         end;
}
        end;
        result:=result+xsm[i]+'���';
       end;
       x:=x-y;
       if x>0 then result:=xx(x,0,0,0,0)+' '+result;
      end;

      if (vid=3) and (rid<>1) then vid:=liv;
      if result[Length(result)-1]='�' then
      begin
       case rid of
        0: result:=vrs(result,vid,2,'��','����','����','�/�','��','����');
        1: result:=vrs(result,vid,2,'�','��','��','�','���','��');
        2: result:=vrs(result,vid,2,'�','����','����','�/�','��','����');
        3: result:=vrs(result,vid,2,'�','��','���','�/�','���','��');
       end;
      end else
      begin
       case rid of
        0: result:=vrs(result,vid,2,'��','���','���','�/�','��','���');
        1: result:=vrs(result,vid,2,'�','�','��','�','��','��');
        2: result:=vrs(result,vid,2,'�','���','���','�/�','��','���');
        3: result:=vrs(result,vid,2,'�','��','��','�/�','���','��');
       end;
      end;
     end;
   3:begin

      if x=0 then result:='����' else
      begin
       if x>=1000 then
       begin
        if x=1000 then result:='������' else result:='������';
       end else
       begin
        s:='';
        if x>=100 then
        begin
         y:=x div 100;
         if y=1 then s:=s+'���'
                else s:=s+x200(y*100,1,0,0,0);
         x:=x mod 100;
        end;

        y:=x div 10;
        case y of
         9: s:=s+'���''������';
         4: s:=s+x40(y*10,1,0,0,0);
         5,6,7,8: s:=s+x50(y*10,1,0,0,0);
         2,3: s:=s+x5x(y*10,1,0,0,0);
        end;

        if y=1 then
        begin
         s:=s+x5x(x,1,0,0,0);
        end else
        begin
         x:=x mod 10;
         if x>0 then
          case x of
           1: s:=s+'����';
           2: s:=s+x2(1,0,0,0);
           3: s:=s+x3(1,0,0,0);
           4: s:=s+x4(1,0,0,0);
           6: s:=s+x6(1,0,0,0);
           7: s:=s+x7(1,0,0,0);
           8: s:=s+x8(1,0,0,0);
          else
           s:=s+x5x(x,1,0,0,0);
          end;
        end;
        result:=s;
       end;
      end;
     end;
  else
   result:='';
  end;
 end;

//////////////////////////////////////////////////////
//const

var
 sex,vario:integer;
 x,y,ml:int64;
 l,i:integer;
 vid,rid,liv,typ,lim,ntyp:integer;
 s:string;
// vid - 0-n,1-r,2-d,3-z,4-o,5-m
// rid - 0-chol,1-zhin,2-sered
// liv - 0-dead,1-alive
// typ - 0-kilkisny chyslivnyk; 1-poriadkovy chyslivnyk
begin
 Param:=LowerCase(Param);

 vid:=0;
 rid:=0;
 liv:=0;
 typ:=0;
 ntyp:=0;
 lim:=9;

 l:=length(param);
 if l>0 then
 for i:=1 to l do
 begin
  case param[i] of
   'r': vid:=1;
   'd': vid:=2;
   'z': vid:=3;
   'o': vid:=4;
   'm': vid:=5;
   'f': rid:=1;
   'u': rid:=2;
   'i': rid:=3;
   'l': liv:=1;
   'p': typ:=1;
   '1'..'9': lim:=ord(param[i])-$30;
   '/': ntyp:=1;
   '.': ntyp:=2;
   '0': ntyp:=0;
   'k': ntyp:=3;
   '$': ntyp:=4;
  end;
 end;
 if (rid=3) and (typ<>1) then rid:=0;

 case ntyp of {0-integer, 1-rational, 2-real, 3-x-kimnatna}
  0:begin
     x:=trunc(Number);
     if x<0 then
     begin
      result:='���� ';
      x:=-x;
     end else result:='';
     result:=result+xx(x,vid,rid,liv,typ);
    end;
  1:begin
     x:=trunc(Number);
     if x<0 then
     begin
      result:='���� ';
      x:=-x;
     end else result:='';
     y:=round(frac(abs(Number))*1000);
     i:=x mod 100;

     if y<2 then
     begin
      result:=result+xx(x,vid,rid,liv,typ);
     end else
     begin
      result:=result+xx(x,vid,1,0,0);
      if (i<20) and (i>10) then
      begin
       if (vid=0)or(vid=3) then vid:=1;
       result:=result+' '+xx(y,vid,3,0,1)
      end else
      if (i mod 10)=1 then result:=result+' '+xx(y,vid,1,0,1) else
      if ((i mod 10)>0) and ((i mod 10)<5)
      then result:=result+' '+xx(y,vid,3,0,1) else
      begin
       if (vid=0)or(vid=3) then vid:=1;
       result:=result+' '+xx(y,vid,3,0,1);
      end;
     end;
    end;
  2:begin

     x:=trunc(Number);
     if x<0 then
     begin
      result:='���� ';
      x:=-x;
     end else result:='';

     Number:=frac(abs(Number));
     ml:=1;

     while lim>0 do
     begin
      dec(lim);
      ml:=ml*10;
     end;
     y:=round(Number*ml);

     i:=x mod 100;

     if y=0 then
     begin
      result:=result+xx(x,vid,rid,liv,typ);
     end else
     begin
      while (y mod 10)=0 do
      begin
       y:=y div 10;
       ml:=ml div 10;
      end;
      result:=result+xx(x,vid,1,0,0);
      if (i<20) and (i>10) then result:=result+' '+xcil[2,vid] else
      if (i mod 10)=1 then result:=result+' '+xcil[0,vid] else
      if ((i mod 10)>0) and ((i mod 10)<5)
      then result:=result+' '+xcil[1,vid] else
      result:=result+' '+xcil[2,vid];

      i:=y mod 100;
      result:=result+' '+xx(y,vid,1,0,0);
      if (i<20) and (i>10) then
      begin
       if (vid=0)or(vid=3) then vid:=1;
       result:=result+' '+xx(ml,vid,3,0,1)
      end else
      if (i mod 10)=1 then result:=result+' '+xx(ml,vid,1,0,1) else
      if ((i mod 10)>0) and ((i mod 10)<5)
      then result:=result+' '+xx(ml,vid,3,0,1) else
      begin
       if (vid=0)or(vid=3) then vid:=1;
       result:=result+' '+xx(ml,vid,3,0,1);
      end;
     end;
    end;
  3:begin
     x:=trunc(abs(Number));
     result:=xx(x,0,0,0,3);
    end;
  4:begin
     result:='';

     x:=trunc(Number);
     if pos('g',param)=0 then
     begin
      result:=IntToStr(x)+' ���.';
     end else
     begin
      if x<0 then
      begin
       result:='���� ';
       x:=-x;
      end;
      result:=result+xx(x,vid,1,0,0);
      if (((x mod 100)<20) and ((x mod 100)>10)) or ((x mod 10)>4) or ((x mod 10)=0) then
      begin
       result:=result+' '+vrs('����',vid,0,'���','���','���','���','����','���');
      end else
      if (x mod 10)=1 then
      begin
       result:=result+' '+vrs('����',vid,0,'��','�','�','��','���','�');
      end else
      begin
       result:=result+' '+vrs('����',vid,0,'�','���','���','�','����','���');
      end;
     end;

     result:=result+' ';
     x:=trunc(frac(abs(Number))*100+0.001);
     if pos('c',param)=0 then
     begin
      if x<10
       then result:=result+'0'+IntToStr(x)+' ���.'
       else result:=result+IntToStr(x)+' ���.'
     end else
     begin
      result:=result+xx(x,vid,1,0,0);
      if (((x mod 100)<20) and ((x mod 100)>10)) or ((x mod 10)>4) or ((x mod 10)=0) then
      begin
       result:=result+' '+vrs('����',vid,0,'��','��','���','��','����','���');
      end else
      if (x mod 10)=1 then
      begin
       result:=result+' '+vrs('����',vid,0,'��','��','��','��','���','��');
      end else
      begin
       result:=result+' '+vrs('����',vid,0,'��','��','���','��','����','���');
      end;
     end;
    end;
 end;

end;

function NameCase(s:string; typ:integer = 0):string;
var
 i,l:integer;
 ts:string;
 t:boolean;
begin
// typ: 0-All Names 1-Sentence like
 l:=length(s);
 if l>0 then
 begin
  s:=LowerCase(s);
  ts:='';
  t:=true;
  for i:=1 to l do
  begin
   if t then
   begin
    ts:=s[i];
    ts:=UpperCase(ts);
    s[i]:=ts[1];
   end;
   t:=false;
   if (s[i]=' ') or (s[i]='.') or (s[i]='-') then t:=true;
  end;
 end;
 result:=s;
end;

function xVariate(fNText: string; fSex: byte=0; fTag: byte=0):string;
var
 s,sn,sr,sd,sz,so,sm,sk:string;
 l:integer;

 procedure xv(l:integer;r,d,z,o,m,k:string);
 var
  s:string;
 begin
///  s:=copy(fNText,1,length(fNText)-l);
  s:=copy(sn,1,length(sn)-l);
{  vExEdit.Edit2.Text:=s+r;
  vExEdit.Edit3.Text:=s+d;
  vExEdit.Edit4.Text:=s+z;
  vExEdit.Edit5.Text:=s+o;
  vExEdit.Edit6.Text:=s+m;
  vExEdit.Edit7.Text:=s+k;}
  sr:=s+r;
  sd:=s+d;
  sz:=s+z;
  so:=s+o;
  sm:=s+m;
  sk:=s+k;
 end;

 procedure auto;
 var
  s:string;
 begin
//  s:=fNText;
  s:=LowerCase(sn);
  l:=length(s);
  if l>1 then
  begin
   if fSex=0 then
   begin {male}
    case s[l] of
     '�':begin
          if (l>3) and ((s[l-1]='�') or (s[l-1]='�')) and (fTag=0)
          then xv(2,'���','���','���','��','���','��')
          else xv(1,'�','�','�','��','�','�');
         end;
     '�':xv(1,'�','�','�','��','�','�');
     '�':xv(1,'�','�','�','��','�','�');
     '�':begin
          if (l>2) and (s[l-1]='�') then xv(2,'��','��','��','���','��','��')
          else
          xv(1,'�','�','�','��','�','�');
         end;
     '�':begin
          if (l>2) and (s[l-1]='�') then xv(2,'��','��','��','���','��','��')
          else
          xv(1,'�','�','�','��','�','�');
         end;
     '�','�','�','�','�','�','�','�','�','�','�','�','�','�':xv(0,'�','�','�','��','�','�');
     '�':xv(0,'�','�','�','��','�','�');
     '�':begin
          if (l>3) and (s[l-1]='�') and (s[l-2]<>'�') then xv(0,'��','��','��','���','��','��')
          else xv(0,'�','�','�','��','�','�');
         end;
     '�':xv(1,'��','��','��','���','�','�');
     '�','�','�':xv(0,'�','�','�','��','�','�');
    else
     xv(0,'','','','','','');
    end;
   end else
   begin {female}
    if (s[l]='�') or (s[l]='�') then
    begin
     case s[l-1] of
       '�','�','�','�','�':
           begin
            if fTag=0 then
            begin
             xv(1,'�','�','�','��','�','�');
            end else
            begin
             xv(1,'��','��','�','��','��','�');
            end;
           end;
      else
      case s[l] of
       '�':begin
            if fTag=0 then
            begin
             if (l>2) and (s[l-1]='�') then xv(2,'��','�','��','���','�','��')
             else
             if (l>2) and (s[l-1]='�') then xv(2,'��','�','��','���','�','��')
             else
             if (l>2) and (s[l-1]='�') then xv(2,'��','��','��','���','��','��')
             else
             xv(1,'�','�','�','��','�','�');
            end else
            begin
             xv(1,'�','��','�','��','��','�');
            end;
           end;
       '�':begin
            if fTag=0 then
            begin
             xv(1,'�','�','�','��','�','�');
            end else
            begin
             xv(1,'��','��','�','��','��','�');
            end;
           end;
      else
       xv(0,'','','','','','');
      end;
     end;
    end else xv(0,'','','','','','');
   end;
   sk:=UpperCase(s[1])+'.';
  end else xv(0,'','','','','','');
 end;

begin
{ vExEdit.Edit2.Text:='';
 vExEdit.Edit3.Text:='';
 vExEdit.Edit4.Text:='';
 vExEdit.Edit5.Text:='';
 vExEdit.Edit6.Text:='';
 vExEdit.Edit7.Text:='';}
 s:=NoTrailSpc(CheckBlank(fNText));

 while s<>'' do
 begin
  if Pos(' ',s)>1 then
  begin
   sn:=copy(s,1,Pos(' ',s)-1);
   s:=copy(s,Pos(' ',s)+1,Length(s)-Pos(' ',s));
  end else
  begin
   sn:=s;
   s:='';
  end;
  auto;
{  vExEdit.Edit2.Text:=vExEdit.Edit2.Text+sr;
  vExEdit.Edit3.Text:=vExEdit.Edit3.Text+sd;
  vExEdit.Edit4.Text:=vExEdit.Edit4.Text+sz;
  vExEdit.Edit5.Text:=vExEdit.Edit5.Text+so;
  vExEdit.Edit6.Text:=vExEdit.Edit6.Text+sm;
  vExEdit.Edit7.Text:=vExEdit.Edit7.Text+sk;}
  result := sr + ' ' + sd + ' ' + sz + ' ' + so + ' ' + sm + ' ' + sk;
  if s<>'' then
  begin
{   vExEdit.Edit2.Text:=vExEdit.Edit2.Text+' ';
   vExEdit.Edit3.Text:=vExEdit.Edit3.Text+' ';
   vExEdit.Edit4.Text:=vExEdit.Edit4.Text+' ';
   vExEdit.Edit5.Text:=vExEdit.Edit5.Text+' ';
   vExEdit.Edit6.Text:=vExEdit.Edit6.Text+' ';
   vExEdit.Edit7.Text:=vExEdit.Edit7.Text+' ';   }
  end;
 end;
end;

end.
