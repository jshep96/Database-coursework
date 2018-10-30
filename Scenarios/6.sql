INSERT INTO Activity VALUES 
('Horse Riding', 8, 16, '18 Fredrick Manor', '20170423', '14:00:00', '16:00:00', 10, 20.00, 1);

SELECT *, (SELECT DATENAME(dw ,Date) ) AS DAY FROM Activity WHERE Description ='Horse Riding';



