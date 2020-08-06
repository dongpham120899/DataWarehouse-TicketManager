select id_passenger,COUNT(t.Id_ticket),sum(r.distance) from Passenger as p
INNER JOIN Ticket as t on p.Id_passenger = t.Passenger
INNER JOIN Fight_activity as f on f.ID_flight = t.Flight
inner JOIN Routes as r on f.Route = r.Id_route
GROUP by p.Id_passenger
WHERE month(f.Departure_date) = 8