with Ada.Text_IO; use Ada.Text_IO;

procedure main is

	Score : Integer;
	N : Integer;

begin
	Score := 0;
	N := Integer'Value (Get_Line);

	--Put_Line(Integer'Image(N));

	if (N mod 2 = 0) then
		Score := Score + 5;
	else
		Score := Score + 1;
	end if;

	if (N < 0) then
	       Score := Score + 2;
	end if;

	if (N > 100) then
		Score := Score + 10;
	end if;

	Put_Line(Integer'Image(Score));
end main;