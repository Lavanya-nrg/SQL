


Query:-
SELECT name
from Customer
where COALESCE(referee_id,0)!=2;

#COALESCE is used to replace 
#NULL values with zero before checking whether it is equal to 2 or not.

-- SELECT name
-- from Customer
-- where referee_id!=2 or referee_id is null;

-- SELECT name
-- from Customer
-- where IFNULL(referee_id,0)!=2;