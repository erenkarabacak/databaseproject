use bank;

delete from customer;

delete from customer where customer_name = "Green";

drop table customer;

select account_number as num, balance as bal
from account
where branch_name != "Brighton" and balance < 500;

update customer
set customer_city = "Mugla"
where customer_name = "Curry";

update customer
set customer_city = "Mugla";

