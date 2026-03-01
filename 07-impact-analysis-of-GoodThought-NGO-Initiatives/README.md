# Impact Analysis of GoodThought NGO Initiatives

Since 2010, GoodThought NGO has led transformative efforts in education, healthcare, and sustainability worldwide. Dive into a PostgreSQL database to analyze key metrics from 2010 to 2023, track donations, and assess program effectiveness. This project offers a deep dive into data, revealing the impact and outcomes of GoodThought's initiatives

## Project Instructions

Write two SQL queries to answer the following questions:

* List the top five assignments based on total value of donations, categorized by donor type. The output should include four columns: 1) `assignment_name`, 2) `region`, 3) `rounded_total_donation_amount` rounded to two decimal places, and 4) `donor_type`, sorted by rounded_total_donation_amount in descending order. Save the result as `highest_donation_assignments`.

Identify the assignment with the highest impact score in each region, ensuring that each listed assignment has received at least one donation. The output should include four columns: 1) `assignment_name`, 2) `region`, 3) `impact_score`, and 4) `num_total_donations`, sorted by `region` in ascending order. Include only the highest-scoring assignment per region, avoiding duplicates within the same region. Save the result as `top_regional_impact_assignments`.