create database ola;
use ola;
-- 1. Retrieve all successful bookings:
select * from bookings
where BookingStatus = "Success";
-- 2. Find the average ride distance for each vehicle type:
select avg(RideDistance) as Average_distance,VehicleType from bookings
group by VehicleType;

-- 3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) as TOTAL_COUNT FROM bookings WHERE BookingStatus = 'Cancelled by Customer';
-- 4. List the top 5 customers who booked the highest number of rides
Select CustomerId,COUNT(`Booking ID`) as total_rides from bookings
group by Customerid
order by total_rides desc
Limit 5; 
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*)
FROM bookings
WHERE `Reasonforcancelling byDriver` = 'Personal & Car related issues';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(`DriverRatings`) AS Maximum_rating,
       MIN(`DriverRatings`) AS Minimum_rating
FROM bookings
WHERE VehicleType = 'Prime Sedan';



-- 7. Find the average customer rating per vehicle type:
select avg(`customer rating`) as avgrage_rating,`VehicleType` from Bookings
group by `VehicleType`;
-- 8. Calculate the total booking value of rides completed successfully:
select count(*) as Total_booking from Bookings
Where `BookingStatus` = 'Success';
-- 9. List all incomplete rides along with the reason:
SELECT `Booking ID`, `IncompleteRidesReason`
FROM bookings
WHERE `IncompleteRides` = '1';
