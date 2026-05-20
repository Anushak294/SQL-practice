select getdate()--gives todays date month year hour min sec
select year(getdate()) as year--it only gives year
select month(getdate()) as month--it only gives month
select day(getdate()) as day--it gives only day
select year('2024-08-25')--gives 2024
select year('2024/08/25')--gives 2024
 --correct format year-month-date

 select isdate('apple')--gives 0 means false
 select isdate('4-10-2025')--gives 1 means true (the fromat is not mandatory)
 select isdate('04-10-2025')--gives 1 means true
 select isdate('410-2025')--gives 0 means false
 select isdate('2025-04-05')--gives 1 means true

 --DATENAME finction returns a string
 select datename(weekday,'2026-3-3')--gives weekday
 select datename(day,'2026-3-3')--it gives day
 select datename(month,'2026-3-3')--it gives month
 select datename(year,'2026-3-3')--it gives year
 select datename(hour,getdate())--gives current hour
 select datename(minute,getdate())--gives current minute
 select datename(quarter,getdate())--it gives present qurter

 select datepart(weekday,getdate())--gives weekday as number
 select datename(weekday,getdate())--gives weekday as string
 select datepart(month,getdate())--gives month as number
 select datename(month,getdate())--gives month as string
 select datepart(year,getdate())--gives year as number
 select datename(year,getdate())--gives year as number,you can use part or name doesnot matter becoz year is number
 
 select dateadd(day,2,getdate())--it adds two more date from current date
 select dateadd(month,2,getdate())--it adds two more month from current month
 select dateadd(year,2,getdate())--it adds two more years from current year
 select dateadd(day,2,'2025/3/3')--it adds two more date from 2025/3/3 date

 select datediff(day,'2025-03-03','2026-03-03')--it gives the day difference between those two dates
 select datediff(month,'2025-03-03','2026-03-03')--it gives the month diff between those teo months
 select datediff(year,'2025-03-03','2026-03-03')--it gives the year difference between those two years
