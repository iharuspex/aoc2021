with Ada.Text_IO; use Ada.Text_IO;


procedure Main is
   Input_File : File_Type;

   subtype Target_X is Integer range 20 .. 30;
   subtype Target_Y is Integer range -10 .. -5;

   Vx : Integer := 17;
   Vy : Integer := -4;

   Pos_x : Integer := 0;
   Pos_y : Integer := 0;

begin
   Open (Input_File, In_File, "input.txt");

   loop
      Pos_x := Pos_x + Vx;
      Pos_y := Pos_y + Vy;

      if Vx /= 0 then
         Vx := Vx - 1;
      end if;

      Vy := Vy - 1;

      Put_Line ("X = " & Pos_x'Image & ", Y = " & Pos_y'Image);
      Put_Line ("Vx = " & Vx'Image & ", Vy = " & Vy'Image);
      New_Line;

      if Pos_x in Target_X'Range and Pos_y in Target_Y'Range then
         New_Line;
         Put_Line ("Result: X = " & Pos_x'Image & ", Y = " & Pos_y'Image);
         exit;
      end if;
   end loop;

   Close (Input_File);

end Main;
