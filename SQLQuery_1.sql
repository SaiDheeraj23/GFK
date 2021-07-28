SELECT * FROM testset_B; 

select brand,sum(price) as tot_price from testset_B group by brand
ORDER BY (tot_price);


SELECT MIN(HDD_GB) AS MIN_HDD_GB, MAX(HDD_GB) AS MAX_HDD_GB
FROM testset_B;



  SELECT  DISTINCT
        RAM_GB,
        Median = PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY GHz) OVER(PARTITION BY RAM_GB)
FROM testset_B;