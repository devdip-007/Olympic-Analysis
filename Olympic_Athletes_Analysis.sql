SELECT * FROM olympic.athlete_events;
use olympic;

select count(ID) from athlete_events;       	/*27607--Total players*/

select count(Sex) 							/* 20477-- is Male Players*/
from athlete_events 
where Sex = "M";

select count(Sex) 							/* 7130-- is Female Players*/
from athlete_events 
where Sex = "F";

select count(distinct(Team)) as Total_team from athlete_events;		/* 488-- Total team*/

select count(distinct(Sport)) as total_sport from athlete_events;		/*61 --Total sport*/

select count(distinct(city)) as total_city from athlete_events;		/*42 --Total city*/

select count(distinct(Event)) as total_event from athlete_events;		/*673 --Total Event*/


SELECT Name, Sex, City, Sport, COUNT(Medal) AS medal_count				/* Top 10 Players name , sex, city , sport and Gold medal count*/
FROM athlete_events
WHERE Medal = "Gold"
GROUP BY Name, Sex, City, Sport
ORDER BY medal_count DESC
limit 10;

SELECT Name, Sex, City, Sport, COUNT(Medal) AS medal_count				/* Top 10 Players name , sex, city , sport and Silver medal count*/
FROM athlete_events
WHERE Medal = "silver"
GROUP BY Name, Sex, City, Sport
ORDER BY medal_count DESC
limit 10;

SELECT Name, Sex, City, Sport, COUNT(Medal) AS medal_count				/* Top 10 Players name , sex, city , sport and Bronze medal count*/
FROM athlete_events
WHERE Medal = "Bronze"
GROUP BY Name, Sex, City, Sport
ORDER BY medal_count DESC
limit 10;

select  city , count(Medal)				/* Gold winning top 10 City*/
from athlete_events
where Medal="Gold"
group by city
order by city desc
limit 10;

select  Team , count(Medal)				/* Gold winning top 10 Team*/
from athlete_events
where Medal="Gold"
group by Team
order by Team desc
limit 10;



 



