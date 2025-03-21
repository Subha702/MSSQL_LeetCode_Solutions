/* Table: Products

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
 

Write a solution to find the ids of products that are both low fat and recyclable.

Return the result table in any order.  */

/* Write your T-SQL query statement below */

 select f.product_id
from Products f,
  Products r
  where f.product_id=r.product_id
  and f.low_fats=r.recyclable
  and f.low_fats  not like 'N'
  and f.recyclable  not like 'N' 

  /*  For the better query performance */
  
  select product_id 
  from Products 
  where low_fats = 'Y' 
  and recyclable ='Y' 
