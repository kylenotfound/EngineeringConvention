with Ada.Text_IO;

procedure Main is

   Count : Integer;
   type convention is array(1..5, 1..Count) of Integer; --Count will be the count of lines
   list : convention;

begin

   Count := Integer'Value (Ada.Text_IO.Get_Line);
   --Ada.Text_IO.Put_Line(Integer'Image(Count));--debug--

   --Load array with input
   for i in list'Range loop
      for j in list'Range loop
         Ada.Text_IO.Put_Line(Integer'Image(j));
      end loop;
      Ada.Text_IO.Put_Line("--------------------");
   end loop;


end Main;
