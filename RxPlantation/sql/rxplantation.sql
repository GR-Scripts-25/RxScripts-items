CREATE TABLE rx_ownedplots (
    name VARCHAR(255) PRIMARY KEY,
    owner VARCHAR(255),
    allowedPlants longtext,
    maxPlants BIGINT,
    members longtext DEFAULT '[]'
);

CREATE TABLE rx_plants (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(255) NOT NULL,
    owner VARCHAR(255) NOT NULL,
    plot VARCHAR(255) DEFAULT NULL,
    coords longtext NOT NULL,
    heading longtext NOT NULL,
    stage INT DEFAULT 1,
    progress BIGINT DEFAULT 0,
    actionsData longtext DEFAULT '{}',
    status VARCHAR(255) DEFAULT 'healthy',
    FOREIGN KEY (plot) REFERENCES rx_ownedplots(name)
);