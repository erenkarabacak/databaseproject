use bank;

select *
from loan, borrower;

select *
from loan join borrower on loan.loan_number = borrower.loan_number;

select *
from loan left join borrower on loan.loan_number = borrower.loan_number;

insert into borrower values ("Erdem","L-38");

select *
from loan right join borrower on loan.loan_number = borrower.loan_number;

(select *
from loan left join borrower on loan.loan_number = borrower.loan_number)
union
(select *
from loan right join borrower on loan.loan_number = borrower.loan_number);



