
-- fuction returns un item

Create or replace function get_item (pitem_id in number)

return varchar2 as

ret_item varchar2(45);

begin
  select items.item into ret_item from items
  where pitem_id = items.id_item;
  return ( ret_item ); 
end;

-- test fuction returns item

-- Created on 4/10/2015 by lPablol
declare 
  actividad_fisica varchar2 (45);
begin
  actividad_fisica := get_actividad_fisica (1);
  dbms_output.put_line('actividad fisica es ' || actividad_fisica);
  
end;
