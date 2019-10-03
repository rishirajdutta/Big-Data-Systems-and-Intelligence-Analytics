use scoop

select r.customer,
       c.company_size,
       sum(case when r.reg_users is not null then r.reg_users end ) as total_reg_users,
	   count(case when r.reg_users IS NOT NULL THEN 1 END) as months_reg,
	   sum(s.schedule_users) as total_schedule_user,
	   count(case when s.schedule_users IS NOT NULL THEN 1 END) as months_schedule
from reg_users r join schedule_users s ON (r.customer = s.customer) join Company_Size c on (r.customer = c.customer)
GROUP BY r.customer,c.company_size
order by r.customer

select * from reg_users 
group by Customer