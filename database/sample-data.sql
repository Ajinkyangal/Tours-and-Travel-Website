-- Insert Users
INSERT INTO Users (name, email, password, phone) VALUES
('Damon Salvatore', 'salvatore@example.com', 'dam345', '9876543210'),
('Kira Yoshikage', 'kira@example.com', 'kira123', '9123456780');

-- Insert Packages
INSERT INTO Packages (destination, start_date, end_date, price, category, description) VALUES
('Manali', '2025-12-01', '2025-12-07', 15000.00, 'Adventure', '7-day trip to Manali with trekking and camping.'),
('Goa', '2025-11-15', '2025-11-20', 12000.00, 'Beach', 'Relaxing beach holiday in Goa with water sports.'),
('Dubai', '2026-01-05', '2026-01-10', 50000.00, 'Luxury', '5-day luxury trip to Dubai with city tours.');

-- Insert Seasonal Trends
INSERT INTO Seasonal_Trends (destination, month, avg_visits, popularity_score) VALUES
('Manali', 12, 2500, 9.2),
('Goa', 11, 3000, 8.9),
('Dubai', 1, 1800, 9.5);
