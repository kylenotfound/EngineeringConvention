with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure main is

    Num : Integer;
    Summ : Float := 0.0;

begin

  Get(Num);

  for i in 1..Num loop
    if (i mod 2 = 0) then
        Summ := Summ - (1.0 / Float(i));
    else
        Summ := Summ + (1.0 / Float(i));
    end if;
  end loop;

  Put(Summ, Exp => 0);


end main;