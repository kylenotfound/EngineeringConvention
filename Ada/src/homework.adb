with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Main is

   Count, Option, Credits : Integer;
   type convention is array(1..100, 1..5) of Integer; --Count will be the count of lines
   list : convention;

    function Schedule
        return Boolean is
    begin
        for wsA in 1..Count loop
            for wsB in 1..Count loop
                if not (wsA = wsB) and list(wsA, 2) = list(wsB, 2) then
                    if((list(wsA, 4) <= list(wsB, 5)) and (list(wsA, 4) >= list(wsB, 4))) then  --Workshop A starts before Workshop B ends and after Workshop B starts
                        return true;
                    end if;
                
                end if;
                
                
            end loop;
        end loop;
        
        return false;
    end Schedule; 

begin

   Get(Count);
   Credits := 0;
   
   --Load array with input
   for i in 1..Count loop
      for j in 1..5 loop
         Get(Option);
         list(i,j) := Option;
      end loop;
   end loop;
   
   for i in 1..Count loop
      Credits := Credits + list(i, 3);
   end loop;      
      Put_Line("");
    if Credits < 5 or Schedule then
        Put_Line ("No certificate");
    else
        Put_Line ("Certificate earned");
    end if;

end Main;
