# Write your MySQL query statement below
select a.product_id , ifnull( round(sum(a.price * b.units)/sum(b.units),2),0) as average_price from
Prices a left join UnitsSold b on a.product_id = b.product_id 
and a.start_date <= b.purchase_date and a.end_date >= b.purchase_date
group by product_id