-- Q.1 Gender breakdown of passengers
SELECT passenger_gender, COUNT(*) AS TotalPassengers
FROM Passenger
GROUP BY passenger_gender


-- Q.2 Responses which were considered
SELECT *
FROM Feedback
WHERE response = 3


-- Q.3 Sum of all individual payment methods
SELECT payment_method, SUM(amount) AS TotalAmount
FROM Payment
GROUP BY payment_method
ORDER BY TotalAmount DESC


-- Q.4 No of flights departing from New York
SELECT COUNT(flight_id)
FROM Flight f
INNER JOIN Airport a
ON a.airport_id = f.flight_departure_airport
INNER JOIN City c
ON c.city_id = a.city
WHERE c.city_name = 'New York'


-- Q.5 Country with most arrival of flights
SELECT TOP 1 co.country_name, COUNT(f.flight_id) AS TotalFlightsArrival
FROM Flight f
INNER JOIN Airport a
ON a.airport_id = f.flight_arrival_airport
INNER JOIN City ci
ON ci.city_id = a.city
INNER JOIN Country co
ON co.country_id = ci.country
GROUP BY co.country_name
ORDER BY TotalFlightsArrival DESC


-- Q.6 Classes with most amount generated
SELECT c.class_name, SUM(p.amount) AS Total
FROM Payment p
INNER JOIN Reservation r
ON r.reservation_id = p.reservation
INNER JOIN Class c
ON c.class_id = r.class
GROUP BY c.class_name
ORDER BY Total DESC


-- Q.6 Average Salary of each crew role
SELECT cr.role_name, AVG(c.crew_salary) AS AvgSalary
FROM Crew c
INNER JOIN CrewRole cr
ON cr.role_id = c.crew_role
GROUP BY cr.role_name


-- Q.7 Top 5 crew roles with most salary
SELECT TOP 5 cr.role_name, SUM(c.crew_salary) AS TotalSalary
FROM Crew c
INNER JOIN CrewRole cr
ON cr.role_id = c.crew_role
GROUP BY cr.role_name
ORDER BY TotalSalary DESC


-- Q.8 Total airports in each country
SELECT co.country_name, COUNT(a.airport_id)
FROM Country co
INNER JOIN City ci
ON co.country_id = ci.country
INNER JOIN Airport a
ON ci.city_id = a.city
GROUP BY co.country_name


-- Q.9 Crew with salary more than average salary
SELECT * FROM Crew
WHERE crew_salary > (SELECT AVG(crew_salary) FROM Crew)


-- Q.10 A view to make data clear and understandable in flights table
GO
CREATE VIEW ViewFlights AS
SELECT	f.flight_id, ar.aircraft_name, f.flight_departure_datetime,
		ap.airport_name AS departure_airport, f.flight_arrival_datetime,
		a.airport_name AS arrival_airport
FROM Flight f
INNER JOIN Airport a
ON a.airport_id = f.flight_arrival_airport
INNER JOIN Airport ap
ON ap.airport_id = f.flight_departure_airport
INNER JOIN Aircraft ar
ON ar.aircraft_id = f.aircraft







