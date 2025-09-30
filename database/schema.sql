-- Database creation
CREATE DATABASE tours_travels;
USE tours_travels;

-- Users Table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Travel Packages Table
CREATE TABLE Packages (
    package_id INT AUTO_INCREMENT PRIMARY KEY,
    destination VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50), -- luxury, budget, adventure, etc.
    description TEXT
);

-- Bookings Table
CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    package_id INT NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Booked','Cancelled') DEFAULT 'Booked',
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (package_id) REFERENCES Packages(package_id)
);

-- Seasonal Trends Table (for Data Science)
CREATE TABLE Seasonal_Trends (
    trend_id INT AUTO_INCREMENT PRIMARY KEY,
    destination VARCHAR(100) NOT NULL,
    month INT NOT NULL,  -- 1 = Jan, 2 = Feb, etc.
    avg_visits INT,
    popularity_score DECIMAL(5,2) -- rating/trend percentage
);
