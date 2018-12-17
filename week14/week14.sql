#initial time:0,194
#after index :0,058
#after PK:0,039

use uniport_example

select*from proteins;
load data local infile '/home/eren/Desktop/insert.txt' into table proteins fields terminated by '|';


select *
from proteins
where protein_name like "%tumor%" and uniport_id like "%human%"
order by uniport_id;

create index uniport_index on proteins (uniport_id);

drop index uniport_index on proteins;

alter table proteins add constraint pk_proteins primary key (uniport_id);
alter table proteins drop primary key;
