-- 반려동물 주인 
CREATE TABLE PetOwners(
	ownerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(255)
);
-- 반려동물
CREATE TABLE Pets ( petID INT AUTO_INCREMENT PRIMARY KEY, ownerID INT NOT NULL, 
	name VARCHAR(100) NOT NULL, species VARCHAR(50), breed VARCHAR(50),
    FOREIGN KEY (ownerID) REFERENCES PetOwners(ownerID) 
);
-- 객실
CREATE TABLE Rooms(roomID INT AUTO_INCREMENT PRIMARY KEY, 
	roomNumber VARCHAR(50) NOT NULL UNIQUE,
    rommType VARCHAR(50), pricePerNight DECIMAL(10, 2) NOT NULL
);
-- 예약
CREATE TABLE Reservations(
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
    petID INT NOT NULL, roomID INT NOT NULL,
    startDate DATE NOT NULL, endDate DATE NOT NULL,
    FOREIGN KEY (petID) REFERENCES Pets(petID),
    FOREIGN KEY (roomID) REFERENCES Rooms(roomID)
);
-- 서비스 
CREATE TABLE Services (
	serviceID INT AUTO_INCREMENT PRIMARY KEY,
    reservationID INT NOT NULL,
    serviceName VARCHAR(100),
    servicePrice DECIMAL(10, 2),
    FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID)
);