CREATE TABLE IF NOT EXISTS `rx_miners` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `identifier` varchar(50) NOT NULL,
    `license` tinyint(1) DEFAULT 0,
    `level` int(11) DEFAULT 0,
    `xp` int(11) DEFAULT 0,
    `name` varchar(50) NOT NULL,
    `missions` longtext DEFAULT '[]',
    `mined` longtext DEFAULT '[]',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4