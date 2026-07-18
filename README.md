📊 Social Media Engagement Analysis (SQL Project)
📌 Overview
This project analyzes social media engagement data using SQL to uncover insights about platform performance, campaign effectiveness, audience behavior, and content trends. All analysis was performed in SQL Server Management Studio (SSMS) using T-SQL.

🎯 Problem Statement
Brands and marketers run campaigns across multiple social media platforms, but without proper analysis, it's hard to know what's actually working — which platform performs best, which campaigns and products drive the most engagement, when to post, and which markets to prioritize. This project uses SQL to analyze a social media engagement dataset and extract actionable insights to guide content and campaign strategy.

👤 Who Can Use This
Social Media Managers — to identify the best-performing platforms, posting days, and locations for campaigns.
Product Managers — to see which products and brands generate the strongest engagement and inform positioning decisions.
🗂️ Dataset
Source: Social Media Engagement Dataset — Kaggle
Format: CSV, imported into SQL Server via SSMS
Table name: dbo.Social_Media_Analysis
Key columns used: platform, brand_name, product_name, campaign_name, campaign_phase, impressions, likes_count, comments_count, shares_count, engagement_rate, location, language, keywords, day_of_week, timestamp
🛠️ Tools Used
SQL Server Management Studio (SSMS)
T-SQL — GROUP BY, SUM(), AVG(), TOP, ORDER BY, CAST()
❓ Business Questions & 📈 Insights
Basic
Which platform has the highest total impressions? → YouTube — 122,988,419 total impressions, well ahead of other platforms.
Which platform has the lowest and highest total like count? → Lowest: Twitter (5,883,120) · Highest: Facebook (6,133,107) — a close race, but Facebook edges ahead.
Which campaign has the highest average engagement rate? → SummerDreams — 41.3% average engagement rate, the strongest campaign in the dataset.
Which day of the week has the lowest average user engagement? → Thursday — 24.4% average engagement, the weakest day for audience interaction.
Which product has the highest average engagement rate? → Xbox Elite Controller — 57.5% average engagement, the top-performing product.
Which brand has the highest total engagement (likes + comments + shares)? → Samsung — 4,940,609 combined engagement actions, the strongest brand once all interaction types are counted, not just likes.
Intermediate
Which platform-location combination has the highest average engagement rate? → Facebook in Shanghai, China — 74.2% average engagement, the single strongest platform-market pairing.

Which keywords have the lowest and highest average engagement rate? → Lowest: "feature, customer, luxury" (0.18%) · Highest: "innovation, premium" (30.43%) — see data limitations note below.

Which platform-location combination has the highest total impressions? → YouTube in Chicago, USA — 4,808,399 impressions.

Which date had the highest average engagement rate? → May 19, 2024 — see data limitations note below.

What is the average engagement rate for each language across every location? → In Barcelona, Spain, Russian (ru) content performed best at 64.0% average engagement, followed by Spanish (56.1%) and Arabic (26.9%) — engagement drops off notably after the top 2 languages.

Which campaign and campaign phase combination has the highest average engagement rate? → SummerDreams — Pre-Launch phase — 59.1% average engagement, suggesting pre-launch buzz outperformed later campaign phases.

⚠️ Data Limitations
While reviewing results, two values stood out as statistical outliers rather than reliable insights:

Q8 (highest keyword engagement): 30.43 — engagement rate values elsewhere in the dataset fall between 0–1 (0–100%), so a value of 30.43 is very likely a data entry error or a keyword with an extremely small sample size skewing the average.
Q10 (highest single-day engagement): 1.656 — same issue; a rate above 1.0 (100%) is not realistic and likely reflects limited data points on that date.
These are flagged rather than presented as confirmed insights, since drawing conclusions from outlier-driven averages would be misleading.

🚀 How to Run
Open SSMS and create a new database.
Import the dataset CSV using Tasks → Import Flat File.
Open SMEA_queries.sql and run each query top to bottom.
Cross-check results against the insights listed above.
📄 Project Structure
├── README.md                    # Project overview (this file)
├── SMEA_queries.sql             # All SQL queries (basic → intermediate → advanced)
└── dataset                      # Raw dataset (or link to Kaggle source)
🙋 Author
Ujjaini
