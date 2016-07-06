create or replace procedure update_netincome as
  	cursor c1 is
  	select batchcode,netincome
  	from batch;
  	cursor c2 is
  	select sum(amount) samt,substr(to_char(rollno),1,5) bcode
  	from feespaid
  	group by substr(to_char(rollno),1,5);
begin
  	for z1 in c1 loop
     		for z2 in c2 loop
   			if(to_char(z1.batchcode)= z2.bcode) then
    				update batch
    				set netincome = z2.samt
    				where batchcode = z1.batchcode;
   			end if;
     		end loop;
  	end loop;
 end update_netincome;
/