autocommit off;
  select  product_code ,  descr , location , cost - $500000
  from joe.unsold_stock_v u
  where cost <= $500000;
rollback;
