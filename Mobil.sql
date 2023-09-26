create schema Mobiles
use Mobiles;
select * from mobile

    -- check Mobile List and price list--
    
 select Phone_name, price from mobile
 
 -- Top 5 most Expensive phones acording to price -- 
 
 select* from mobile
 order by price desc
 limit 5;
 -- Apple iPhone 14 Pro Max 1 TB, Silver
-- Apple iPhone 14 Pro Max 1 TB, Gold
-- Apple iPhone 14 Pro Max 1 TB, Deep Purple
-- Apple iPhone 14 Pro Max 1 TB, Space Black
-- Apple iPhone 14 Pro 1 TB, Silver -- 



 -- Top 5 most cheepest phones acording to price -- 

 select* from mobile
 order by price asc
 limit 5;
 
 -- itel A23 Pro 8 GB, 1 GB RAM, Lake Blue, Mobile Phone
-- itel A23 Pro 8 GB, 1 GB RAM, Sapphire Blue, Mobile Phone
-- JioPhone Next 32 GB, 2 GB RAM, Blue Smartphone, LS1542QWN
-- JioPhone Next 32 GB, 2 GB RAM, Black Smartphone, LS1542QWN
-- Samsung Galaxy M01 Core 16 GB, 1 GB, Red, Mobile Phone

-- LIST OF TOP 5 SAMASUNG MOBILE BY PRICE

select * FROM mobile 
where Brands = 'samsung'
order by price desc 
limit 5;

/*Samsung Galaxy Z Fold4 5G 512 GB, 12 GB RAM, Phantom Black, Mobile Phone	Samsung	164999	512 GB
Samsung Galaxy Z Fold4 5G 512 GB, 12 GB RAM, Beige, Mobile Phone	Samsung	164999	512 GB
Samsung Galaxy Z Fold2 256 GB, 12 GB RAM, Mystic Bronze, Mobile Phone	Samsung	119999	Not Specified
Samsung S22 Ultra 5G 512 GB, 12 GB RAM, Phantom White, Mobile Phone	Samsung	118999	Not Specified
Samsung S22 Ultra 5G 512 GB, 12 GB RAM, Green, Smartphone	Samsung	118999	Not Specified*/

-- LIST OF bottom 5 SAMASUNG MOBILE BY PRICE

select * from mobile 
where brands = "samsung"
order by price asc
limit 5; 

/*
Samsung Galaxy M01 Core 16 GB, 1 GB, Red, Mobile Phone	Samsung	5199
Samsung Galaxy A03 Core 32 GB, 2 GB RAM, Blue, Mobile Phone	Samsung	6999
Samsung Galaxy A03 32 GB, 3 GB RAM, Red, Mobile Phone	Samsung	8499
Samsung Galaxy A03 32 GB, 3 GB RAM, Blue, Mobile Phone	Samsung	8499
Samsung Galaxy A03 32 GB, 3 GB RAM, Black, Mobile Phone	Samsung	8499
*/


-- 	TOP 5 ANDRIOD MOBILE PHONES by price 
 
 select * from mobile 
 where Operating_System_Type ="Android"
 order by Price desc
 limit 5;
 
 /*
Samsung Galaxy Z Fold4 5G 512 GB, 12 GB RAM, Phantom Black, Mobile Phone	Samsung	164999	512 GB
Samsung Galaxy Z Fold4 5G 512 GB, 12 GB RAM, Beige, Mobile Phone	Samsung	164999	512 GB
Samsung Galaxy Z Fold2 256 GB, 12 GB RAM, Mystic Bronze, Mobile Phone	Samsung	119999	Not Specified
Samsung S22 Ultra 5G 512 GB, 12 GB RAM, Phantom White, Mobile Phone	Samsung	118999	Not Specified
Samsung S22 Ultra 5G 512 GB, 12 GB RAM, Green, Smartphone	Samsung	118999	Not Specified
*/

-- 	bottom 5 ANDRIOD MOBILE PHONES by price 

 select * from mobile 
 where Operating_System_Type ="Android"
 order by Price asc
 limit 5;
 
 /*
 itel A23 Pro 8 GB, 1 GB RAM, Sapphire Blue, Mobile Phone	Itel	4040
itel A23 Pro 8 GB, 1 GB RAM, Lake Blue, Mobile Phone	Itel	4040
JioPhone Next 32 GB, 2 GB RAM, Blue Smartphone, LS1542QWN	JioPhone	4499
JioPhone Next 32 GB, 2 GB RAM, Black Smartphone, LS1542QWN	JioPhone	4499
Samsung Galaxy M01 Core 16 GB, 1 GB, Red, Mobile Phone	Samsung	5199
 */
  
 -- Top 5 ios mobiles by price 
 
 select * from mobile
 where Operating_System_Type = 'ios'
 order by price desc
 limit 5;
 
 /*
 Apple iPhone 14 Pro Max 1 TB, Gold	Apple	189900
Apple iPhone 14 Pro Max 1 TB, Space Black	Apple	189900
Apple iPhone 14 Pro Max 1 TB, Silver	Apple	189900
Apple iPhone 14 Pro Max 1 TB, Deep Purple	Apple	189900
Apple iPhone 14 Pro 1 TB, Silver	Apple	179900
 */
 
  -- bottom 5 ios mobiles by price 
select * from mobile 
where Operating_System_Type = 'ios'
order by price asc 
limit 5;

/*
Apple iPhone SE 128 GB, Black (Includes Earpods and Adapter)	Apple	43900	128 GB
Apple iPhone SE 128 GB, White (Includes Earpods and Adapter)	Apple	43900	128 GB
Apple iPhone SE 2022 64 GB, Midnight	Apple	43900	64 GB
Apple iPhone SE 2022 64 GB, (Product) Red	Apple	43900	64 GB
Apple iPhone 11 64 GB, Black (without Earpods and Adapter)	Apple	43900	64 GB
*/

-- SUPPORT 5G 
select * from mobile 
where 5G_Availability = 'yes'
order by Price desc
limit 5;

/*
Samsung Galaxy Z Series Flip3 5G 256 GB, 8 GB RAM, Cream, Mobile Phone	Samsung	88999
Apple iPhone 12 128 GB, Green	Apple	59900
Apple iPhone 12 128 GB, Purple	Apple	59900
Apple iPhone 12 128 GB, White	Apple	59900
Apple iPhone 12 128 GB, Blue	Apple	59900
*/

-- TOTAL PRICE OF ALL BRANDS 
select Brands, sum(price) from mobile 
group by Brands ;

/*
Apple	10572900
Samsung	4148103
realme	1461118
Xiaomi	1282956
Vivo	1122844
Redmi	1086928
OnePlus	801977
Oppo	629336
Motorola	520979
Mi	440488
Nokia	269778
Infinix	200984
Itel	42575
Tecno	41196
Moto	19998
JioPhone	8998
*/
