/*       ------SQL QUERIES------- 
          SOCIAL MEDIA ENGAGEMENT ANALYSIS

BASIC :

Q1) Which platform has the highest total impression. */
Select Top 1 platform,Sum(impressions) as Total_Impression 
from dbo.Social_Media_Analysis
Group By platform
Order by Total_Impression desc;

/*
Q2) Which platform has the lowest and highest total like count ?
For lowest total like count: */

Select Top 1 platform, Sum(likes_count) as total_likescount
from dbo.Social_Media_Analysis
Group by platform
Order by total_likescount asc;

/* For highest total like count: */

Select Top 1 platform, Sum(likes_count) as total_likescount
from dbo.Social_Media_Analysis
Group by platform
Order by total_likescount desc;

/* 
Q3) Which campaign has the highest average engagement rate? */
Select Top 1 campaign_name, avg(engagement_rate) as avg_engagement_rate
from dbo.Social_Media_Analysis
Group by campaign_name
Order by avg_engagement_rate desc;

/*
Q4) Which day of the week has the lowest average user engagement? */
Select Top 1 day_of_week, avg(engagement_rate) as lowest_avg_user_engagement
from dbo.Social_Media_Analysis
Group by day_of_week
Order by lowest_avg_user_engagement asc; 

/*
Q5) Which product has the highest average engagement rate? */
Select Top 1 product_name, avg(engagement_rate) as highest_engagement_rate
from dbo.Social_Media_Analysis
Group by product_name
Order by highest_engagement_rate desc;

/*
Q6) Which brand has the highest total engagement(likes+comment+shares)? */
Select Top 1 brand_name,
sum(likes_count + comments_count + shares_count)
as highest_total_engagement
from dbo.Social_Media_Analysis
Group by brand_name
Order by highest_total_engagement desc; 

/* 
INTERMEDIATE: 

Q7) Which platform and country has the highest avg engagement rate ?*/
Select Top 1 platform,location,
avg(engagement_rate) as avg_engagement_rate
from dbo.Social_Media_Analysis
group by platform,location 
order by avg_engagement_rate desc;

/*
Q8) What are the distinct keywords having the lowest and highest 
user engagenment rate ?

For lowest user engagement rate: */

Select Top 1 keywords,avg(engagement_rate) as Overall_engagement
from dbo.Social_Media_Analysis
Group by keywords
Order by Overall_engagement asc;

/* For Highest user engagement rate:*/

Select Top 1 keywords,avg(engagement_rate) as Overall_engagement
from dbo.Social_Media_Analysis
Group by keywords
Order by Overall_engagement desc;

/*
Q9) Which platform and location has the highest impression ? */
Select Top 1 platform,location,sum(impressions) as total_impressions
from dbo.Social_Media_Analysis
Group by platform,location
Order by total_impressions desc;

/*
Q10) Which timestamp has the highest engagement rate? */
Select Top 1 CAST(timestamp as date) as post_date,
avg(engagement_rate) as avg_engagement
from dbo.Social_Media_Analysis
Group by CAST(timestamp as date)
Order by avg_engagement desc;

/* 
Q11)What is the average engagement rate for each
language across every location? */

Select language,location, 
avg(engagement_rate) as highest_overall_engagementrate
from dbo.Social_Media_Analysis
Group by language, location
Order by location,highest_overall_engagementrate desc;

/*
Q12)Which campaign and phase has highest avg engagement_rate? */
Select Top 1 campaign_name, campaign_phase, 
avg(engagement_rate) as highest_engagement_rate
from dbo.Social_Media_Analysis
Group by campaign_name,campaign_phase
Order by highest_engagement_rate desc;
