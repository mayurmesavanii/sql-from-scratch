

-- Updating order timestamps from 2023 to 2024/2025

UPDATE Orders SET 
  order_timestamp = '2024-01-15 10:30:00',
  delivery_timestamp = '2024-01-16 15:45:00'
WHERE order_id = 1;

UPDATE Orders SET 
  order_timestamp = '2024-02-03 14:20:00',
  delivery_timestamp = '2024-02-05 11:10:00'
WHERE order_id = 2;

UPDATE Orders SET 
  order_timestamp = '2024-03-12 08:45:00',
  delivery_timestamp = '2024-03-14 09:30:00'
WHERE order_id = 3;

UPDATE Orders SET 
  order_timestamp = '2024-04-05 12:15:00',
  delivery_timestamp = '2024-04-07 18:20:00'
WHERE order_id = 4;

UPDATE Orders SET 
  order_timestamp = '2024-05-10 09:00:00',
  delivery_timestamp = '2024-05-11 17:00:00'
WHERE order_id = 5;

UPDATE Orders SET 
  order_timestamp = '2024-06-01 13:10:00',
  delivery_timestamp = '2024-06-03 11:45:00'
WHERE order_id = 6;

UPDATE Orders SET 
  order_timestamp = '2024-07-15 16:00:00',
  delivery_timestamp = '2024-07-16 14:00:00'
WHERE order_id = 7;

UPDATE Orders SET 
  order_timestamp = '2024-08-07 11:30:00',
  delivery_timestamp = '2024-08-08 19:30:00'
WHERE order_id = 8;

UPDATE Orders SET 
  order_timestamp = '2024-09-12 08:00:00',
  delivery_timestamp = '2024-09-14 10:00:00'
WHERE order_id = 9;

UPDATE Orders SET 
  order_timestamp = '2024-10-01 07:45:00',
  delivery_timestamp = '2024-10-02 16:10:00'
WHERE order_id = 10;

UPDATE Orders SET 
  order_timestamp = '2024-11-20 12:00:00',
  delivery_timestamp = '2024-11-21 14:00:00'
WHERE order_id = 11;

UPDATE Orders SET 
  order_timestamp = '2025-01-03 10:15:00',
  delivery_timestamp = '2025-01-04 13:00:00'
WHERE order_id = 12;

UPDATE Orders SET 
  order_timestamp = '2025-03-01 09:20:00',
  delivery_timestamp = '2025-03-03 15:10:00'
WHERE order_id = 13;

UPDATE Orders SET 
  order_timestamp = '2025-06-11 14:50:00',
  delivery_timestamp = '2025-06-12 10:30:00'
WHERE order_id = 14;
