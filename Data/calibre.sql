-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 09:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calibre`
--
CREATE DATABASE IF NOT EXISTS `calibre` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `calibre`;

-- --------------------------------------------------------

--
-- Table structure for table `ammunition`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `ammunition` (
  `NAME` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `ammunition`:
--

--
-- Dumping data for table `ammunition`
--

INSERT INTO `ammunition` (`NAME`, `DESCRIPTION`) VALUES
('.300 Blackout', 'The .300 Blackout (7.62x35) is a rifle cartridge used for assault rifles'),
('.338 Lapua Magnum', 'The .338 Lapua Magnum (8.6x70) is a rifle cartridge used for bolt-action rifles and designated marksman rifles'),
('.357 Magnum', 'The .357 Magnum (9x33R) is a pistol cartridge used for revolvers'),
('.366 TKM', 'The .366 TKM (9.55x39 mm) is a rifle cartridge used for assault carbines and bolt-action rifles'),
('.45 ACP', 'The .45 ACP (11.43x23ACP) is a pistol cartridge used for pistols and submachine guns'),
('12.7x108mm', 'The 12.7x108mm is a rifle cartridge used for heavy machine guns'),
('12.7x55mm', 'The 12.7x55mm STs-130 (12.7x55) is a rifle cartridge used for revolvers and assault rifles'),
('12x70mm', 'The 12/70 (12 Gauge) is a shotgun cartridge used for shotguns'),
('23x75mm', 'The 23x75mm (4 Gauge) is a shotgun cartridge used for shotguns'),
('4.6x30mm HK', 'The 4.6x30mm HK (4.6x30) is a PDW cartridge used for submachine guns'),
('5.45x39mm', 'The 5.45x39mm (5.45x39) is a rifle cartridge used for assault carbines, assault rifles and light machine guns'),
('5.56x45mm NATO', 'The 5.56x45mm NATO (5.56x45NATO) is a rifle cartridge used for assault carbines and assault rifles'),
('5.7x28mm FN', 'The 5.7x28mm FN (5.7x28) is a PDW cartridge used for pistols and submachine guns'),
('6.8x51mm', 'The 6.8x51mm (.277 Fury) is a rifle cartridge used for assault rifles'),
('7.62x25T', 'The 7.62x25mm Tokarev (7.62x25TT) is a pistol cartridge used for pistols and submachine guns'),
('7.62x39mm', 'The 7.62x39mm (7.6x39) is a rifle cartridge used for assault carbines, assault rifles and light machine guns'),
('7.62x51mm NATO', 'The 7.62x51mm NATO (7.62x51) is a rifle cartridge used for assault carbines, assault rifles, bolt-action rifles and designated m'),
('7.62x54mmR', 'The 7.62x54mmR (7.62x54R) is a rifle cartridge used for assault carbines, bolt-action rifles, designated marksman rifles, light '),
('9x18mm Makarov', 'The 9x18mm Makarov (9x18PM) is a pistol cartridge used for pistols and submachine guns'),
('9x19mm Parabellum', 'The 9x19mm Parabellum (9x19PARA) is a pistol cartridge used for pistols, revolvers and submachine guns'),
('9x21mm Gyurza', 'The 9x21mm Gyurza (9x21) is a pistol cartridge used for pistols and submachine guns'),
('9x39mm', 'The 9x39mm (9x39) is a rifle cartridge used for assault carbines, assault rifles and designated marksman rifles');

-- --------------------------------------------------------

--
-- Table structure for table `ammunition_variants`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `ammunition_variants` (
  `caliber` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `price` double DEFAULT NULL,
  `penn` int(11) DEFAULT NULL,
  `frag` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `ammunition_variants`:
--   `caliber`
--       `ammunition` -> `NAME`
--

--
-- Dumping data for table `ammunition_variants`
--

INSERT INTO `ammunition_variants` (`caliber`, `name`, `Description`, `price`, `penn`, `frag`, `speed`) VALUES
('12x70mm', '.50 BMG', '12/70 Custom made slug shell with a shortened .50 BMG tracer bullet for 12ga shotguns. No one knows why they just work... somehow.', 782.01, 26, 197, 410),
('12x70mm', '5.25MM', '12/70 shell loaded with 15 5.25mm buckshot for 12ga shotguns.\r\n\r\n', 280.41, 1, 296, 330),
('12x70mm', '6.5MM', 'A 12/70 shell loaded with 9 6.5mm buckshot pellets for 12 gauge shotguns.', 245.72, 3, 315, 430),
('12x70mm', '7MM', 'A 12/70 buckshot shell for 12 gauge shotguns.', 331.76, 3, 312, 415),
('12x70mm', '8.5MM Magnum', 'A 12/70 shell loaded with 16 8.5mm buckshot pellets for 12 gauge shotguns.', 515.3, 2, 400, 385),
('12x70mm', 'AP-20', 'A 12/70 armor-piercing slug shell for 12 gauge shotguns. Designed for law enforcement forces of our overseas friends.', 1270.41, 37, 164, 510),
('12x70mm', 'CSP', '12/70 Copper solid slug shell for 12ga shotguns.', 731.13, 14, 206, 442),
('12x70mm', 'Dual Sabot', '12/70 Dual Sabot Slug shell for 12ga shotguns.', 441.32, 17, 170, 415),
('12x70mm', 'Flechette', 'A 12/70 shell loaded with razor-sharp flechettes for 12ga shotguns. Far from being the most effective round, but believe us - you definitely don\'t want to be on the receiving end of the weapon loaded with it.', 1108.21, 31, 200, 320),
('12x70mm', 'FTX', 'The FTX Custom Lite 12/70 slug shell for 12 gauge shotguns.', 461.98, 20, 183, 480),
('12x70mm', 'Grizzly 40', '12/70 Grizzly 40 expanding slug shell for 12ga shotguns.', 332.78, 12, 190, 390),
('12x70mm', 'Lead', '12/70 caliber slug shell for 12ga shotguns.', 312.64, 15, 167, 370),
('12x70mm', 'Piranha', 'This 12 gauge round contains dozens of razor sharp steel tacks that blast out at high velocity which virtually guarantees that there will be no response from the perpetrator. Each round is buffed with #12 shot thus creating a double shock to the wound area. Absolutely will not harm your shotgun. To be used no closer than 10 feet and no further than 50 feet.', 617.21, 24, 250, 310),
('12x70mm', 'Poleva 3', '12/70 \"Poleva-3\" expanding slug shell for 12ga shotguns', 489.11, 17, 140, 410),
('12x70mm', 'Poleva 6u', '12/70 \"Poleva-6u\" with FMJ slug shell for 12ga shotguns', 589.5, 20, 150, 430),
('12x70mm', 'RIP', 'RIP (Radically Invasive Projectile) ammunition is a devastatingly effective choice for the anti-personnel use. This 12 cal ammo features a precision-machined solid copper lead-free projectile designed to produce huge damage to body.', 892.41, 2, 265, 410),
('12x70mm', 'SFHP', '12/70 SuperFormance Hollow Point slug shell for 12ga shotguns.', 588.12, 5, 220, 594),
('5.45x39mm', '7N40', 'The newest legendary cartridge with increased accuracy of fire 7N40. Made as part of the Ratnik program together with 7N39 PPBS.', 1844.89, 52, 42, 915),
('5.45x39mm', 'BP', 'A 5.45x39mm BP gs (GRAU Index - 7N22) cartridge with a 3.7 gram armor-piercing bullet with a hardened carbon steel core with lead cladding on the tip and bimetallic jacket, in a steel case. This BP bullet (Broneboynaya Pulya; \"Armor-piercing Bullet\") was developed by TsNIITOCHMASH in 1998 based on the 5.45x39mm PP gs cartridge to improve its design and penetration capabilities, resulting in an improvement at piercing some intermediate models of body ballistic protection, however, due to its design, it has a significant bounce probability off various surfaces.', 1267.31, 45, 46, 890),
('5.45x39mm', 'BS', 'A 5.45x39mm BS gs (GRAU Index - 7N24) cartridge with a 4.1 gram armor-piercing bullet with a pointed tungsten carbide core over a lead base with a bimetallic jacket, in a steel case. This BS bullet (Broneboynyy Serdechnik - \"Armor-piercing Core\") was developed by TsNIITochMash in 1998 to greatly increase the penetration capabilities of Russian 5.45x39mm caliber weapons, by being able to pierce basic and intermediate ballistic body protections in addition to provide outstanding results against some specialized protection models, despite having a relatively low muzzle velocity compared to other cartridges. However, due to its design, it has a high bounce probability off various surfaces.', 967.32, 54, 43, 830),
('5.45x39mm', 'BT', 'A 5.45x39mm BT gs (GRAU Index - 7BT4) cartridge with a 3.1 gram armor-piercing tracer bullet with a heat-strengthened steel core with a bimetallic jacket, in a steel case, intended for target designation and fire adjustment in battle (Trace color: Red). This BT (Broneboynaya Trassiruyushchaya; \"Armor-piercing Tracer\") bullet its an improved version of the used in the 5.45x39 mm T gs cartridge (GRAU Index - 7T3), since the lead core was replaced by one of heat-strengthened steel, providing automatic firearms with penetration capabilities against basic ballistic protections as well as excellent results against intermediate models, however, due to its design, it has a significant bounce probability off various surfaces.', 647.58, 37, 48, 880),
('5.45x39mm', 'FMJ', 'A 5.45x39mm cartridge with a 3.9 gram lead core full metal jacket (FMJ) bullet in a steel case, intended for hunting, home defense, and target practice. Despite its rudimentary design, it is capable of piercing basic ballistic body protection, besides having significant stopping power effect.', 330.84, 24, 55, 884),
('5.45x39mm', 'HP', 'A 5.45x39mm cartridge with a 3.6 gram lead core hollow-point (HP) bullet with a bimetallic semi-jacket in a steel case, intended for hunting, home defense, and target practice. The bullet in this cartridge has an excellent expansion and impact energy that give it outstanding stopping power effects, as well as being able to cause substantial negative effects on the target after impact, making it a good choice for hunting.', 210, 9, 76, 884),
('5.45x39mm', 'PP', 'A 5.45x39mm PP gs (GRAU Index - 7N10) cartridge with a 3.5 gram bullet with a heat-strengthened steel core with lead cladding on the tip and bimetallic jacket, in a steel case. The PP bullet (Povyshennoy Probivayemosti; \"Increased penetration\") was design in the 1990s as an upgraded version of the one used in the 5.45x39mm PS gs cartridge, as a longer and narrower tempered steel core was chosen, allowing it to pierce through basic ballistic body protections as well as some intermediate models, however, due to its design, it has a high bounce probability off various surfaces.', 545.23, 34, 50, 886),
('5.45x39mm', 'PPBS', 'A 5.45x39mm PPBS gs (GRAU Index - 7N39) cartridge with a 4 gram armor-piercing bullet with a pointed tungsten carbide core with two-layer jacket, a lead interior and a bimetallic exterior, in a steel case. This experimental cartridge was developed by TsNIITochMash and TechKomplekt under the name of \"Igólnik\" (\"Needlecase\") based on the 5.45x39mm BS gs cartridge to increase its penetration capabilities, providing excellent results against the most modern specialized ballistic body protections, in addition to being capable of piercing light covers and light armored vehicles, however, due to its design, it has a high bounce probability off various surfaces.', 2176.93, 62, 37, 905),
('5.45x39mm', 'PRS', 'A 5.45x39mm PRS gs cartridge with a 3.9 gram soft lead core bullet with a bimetallic jacket in a steel case. This PRS bullet (Ponizhennoy Rikoshetiruyushchey Sposobnosti; \"Reduced Ricochet Ability\") was designed in the early 2000s to crumble and rapidly lose speed when hitting a solid object in order to substantially reduce collateral damage from ricochets during urban operations carried out by law enforcement agencies and groups from the Ministry of Internal Affairs, thus achieving a considerable stopping power effect on the target at the cost of penetration capabilities, even against basic ballistic protection.', 224.51, 13, 70, 866),
('5.45x39mm', 'PS', 'A 5.45x39mm PS gs (GRAU Index - 7N6) cartridge with a 3.4 gram steel core bullet with lead cladding on the tip and a bimetallic jacket, in a steel case. The PS cartridge (Pulya Stalnaya; \"Steel Bullet\") was introduced into service in 1974 alongside with Soviet 5.45x39mm caliber weaponry, providing the Soviet Army with capabilities to pierce basic ballistic body protections, however, due to its design, it has a high bounce probability off various surfaces.', 389.51, 28, 53, 890),
('5.45x39mm', 'SP', 'A 5.45x39mm cartridge with a 3.6-gram lead core soft-point (SP) bullet with a bimetallic semi-jacket in a steel case, intended for hunting, home defense, and target practice. This bullet has a good initial expansion on impact due to the exposure of the lead core at the tip, giving it considerable stopping power effects at the cost of penetration capabilities, even against basic ballistic protection, as well as being able to cause substantial negative effects on the target after impact.', 289, 15, 65, 873),
('5.45x39mm', 'T', 'A 5.45x39mm T gs (GRAU Index - 7T3) cartridge with a 3.2 gram lead core tracer bullet with a bimetallic jacket, in a steel case, intended for target designation and fire adjustment in battle (Trace color: Red). This tracer cartridge was introduced in 1974 alongside with the PS gs cartridge (GRAU Index - 7N6) to provide tracing capabilities to Soviet 5.45x39mm caliber weaponry, as well as being able of piercing basic ballistic body protection, besides having significant stopping power effect. However, due to its design, it has a high bounce probability off various surfaces.', 342.51, 20, 57, 883),
('5.45x39mm', 'US', 'A 5.45x39mm US gs (GRAU Index - 7U1) cartridge with a 5.1 gram subsonic bullet with a pointed tungsten carbide core over a lead base with a bimetallic jacket, in a steel case with a reduced charge. This US cartridge (Umén\'shennoy Skórosti - \"Reduced Speed\") was designed by TsNIITochMash in the mid-1980s for use in the AKS-74UB and AKS-74UBN models in conjunction with a suppressor, ensuring the weapon\'s fire cycling and achieving an excellent noise reduction in addition to granting a considerable stopping power effect, but despite the composition of the bullet, it has difficulties piercing basic ballistic body protections and due to its design, it has a high bounce probability off various surfaces.', 304.4, 63, 17, 303),
('5.56x45mm NATO', 'FMJ', 'A .223 Remington (5.56x45mm) FMJ cartridge with a 3.6 gram lead core bullet with a bimetallic jacket in a steel case, intended for hunting, home defense, and target practice.\r\n\r\nDespite its rudimentary design and not having the full energy of an intermediate cartridge, the bullet is capable of pierce through basic ballistic body protections.', 453.92, 23, 59, 957),
('5.56x45mm NATO', 'HP', 'A .223 Remington (5.56x45mm) HP cartridge with a 3.6 gram lead core hollow-point bullet with a bimetallic jacket in a steel case, intended for hunting, home defense, and target practice. Despite not having the full energy of an intermediate cartridge, the bullet has a considerable stopping power effect as well as being able to cause substantial negative effects on the target after impact, at the cost of penetration capabilities, even against basic ballistic protection.', 265.57, 7, 79, 947),
('5.56x45mm NATO', 'M855', 'A 5.56x45mm NATO M855 cartridge with a 4 gram bullet with a steel penetrator tip over a lead core with a copper jacket in a brass case.\r\n\r\nThis cartridge was designed in the 1980s as the equivalent to the FN SS109 cartridge for the 5.56x45mm NATO caliber armament used by the United States Army. Thanks to its design, the bullet in this cartridge is capable of piercing through basic ballistic protection equipment, as well as certain intermediate protection equipment, however, it has a high probability of rebound on various surfaces.', 489.65, 31, 57, 922),
('5.56x45mm NATO', 'M855A1', 'A 5.56x45mm NATO M855A1 cartridge with a 4 gram armor-piercing bullet with a steel penetrator tip over a copper alloy core with a copper semi-jacket in a brass case.\r\n\r\nThis cartridge was designed to improve the penetration capabilities of the 5.56x45mm NATO M855 cartridge of the United States Army, being able to pierce basic and intermediate body ballistic protections, however, due to its design, it has a high bounce probability on various surface', 1389.11, 44, 49, 945),
('5.56x45mm NATO', 'M856', '5.56x45mm M856 Tracer cartridge.', 410.23, 18, 64, 874),
('5.56x45mm NATO', 'M856A1', 'A 5.56x45mm NATO M856A1 cartridge with a 3.6 gram copper alloy core tracer bullet with a copper jacket, in a brass case, intended for target designation and fire adjustment in battle (Trace color: Red).\r\n\r\nThis cartridge was designed to provide tracing capabilities when used in conjunction with the 5.56x45mm NATO M855A1 cartridge and have a similar ballistic performance, being able to pierce basic body ballistic protections, as well as providing excellent results against intermediate models, however, it has a high probability of bouncing off various surfaces.', 737.44, 38, 52, 940),
('5.56x45mm NATO', 'M995', 'A 5.56x45mm NATO M995 cartridge with a 3.4 gram armor-piercing bullet with a tungsten carbide penetrator over an aluminum base with a copper jacket, in a brass case. This cartridge was designed during the 1990s to provide United States Army personnel with capabilities to pierce light covers and light vehicles, as well as basic and intermediate ballistic body protections, in addition to providing outstanding results against some specialized protection models. However, due to its design, it has a significant bounce probability on various surfaces.', 1876.99, 53, 42, 1013),
('5.56x45mm NATO', 'MK255', 'A 5.56x45mm NATO MK 255 Mod 0 (RRLP) cartridge with a 4 gram bullet with a copper/polymer composite core with a copper jacket, in a brass case. This cartridge was designed under the name of RRLP (Reduced Ricochet Limited Penetration) in order to substantially reduce collateral damage from ricochets and over-piercing during training and close-quarters operations, as well as providing a substantial stopping power effect.', 310.53, 11, 72, 936),
('5.56x45mm NATO', 'MK318', 'A 5.56x45mm NATO MK 318 Mod 0 (SOST) cartridge with a 4 gram open-point bullet with a lead core over a copper base with a copper jacket, in a brass case.\r\n\r\nThe cartridge was specially designed for the United States Marine Corps, under the name SOST (Special Operations Science and Technology) to provide penetration of objects with low structural strength and provide a considerable stopping power effect, even being able of piercing basic ballistic body protections.', 612.88, 33, 55, 902),
('5.56x45mm NATO', 'SSA AP', 'A 5.56x45mm NATO SSA AP cartridge with a two-part armor-piercing projectile, the bullet consists of a sabot and a tungsten carbide penetrator body, in a brass case. This bullet was designed to surpass the one used in the 5.56x45mm NATO M995 cartridge in regard to its penetration capabilities, thanks to its muzzle velocity and peculiar design, it is capable of pierce basic and intermediate ballistic body protections, in addition to providing outstanding results against some modern specialized protection models, however, due to its design, it has a high bounce probability on various surfaces.', 2413.62, 57, 38, 1013),
('5.56x45mm NATO', 'WMG', 'A .223 Remington (5.56x45mm) Warmageddon cartridge with a 3.6 gram lead core polymer tipped expansive bullet with a copper-alloy jacket in a brass case, intended for hunting.\r\n\r\nThis bullet features a ballistic tip that acts as a wedge on the lead core upon impact, allowing the bullet to expand and cause outstanding damage on the target, as well as being capable of causing severe negative effects to the target upon impact, despite not having the full energy of an intermediate cartridge.', 277.32, 3, 88, 936),
('7.62x39mm', 'BP', 'A 7.62x39mm BP gzh (GRAU Index - 7N23) cartridge with a 7.9 gram armor-piercing bullet with a hardened carbon steel core with lead cladding on the tip and a bimetallic jacket, in a bimetallic case. This BP bullet (Bronebóynaya Púlya - \"Armor-piercing Bullet\") was developed in the 1990s based on the 7.62x39mm PS gzh cartridge to improve its design and penetration capabilities, as a longer and narrower reinforced steel core was chosen, allowing it to pierce through basic and intermediate body ballistic protections in addition to provide a significant stopping power effect, however, it has a significant bounce probability off various surfaces.', 1046.83, 47, 58, 730),
('7.62x39mm', 'FMJ', 'Lead bullet with full metal jacket. Excellent for practical and recreational shooting.', 440.23, 26, 63, 775),
('7.62x39mm', 'HP', 'A 7.62x39mm cartridge with an 8 gram lead core hollow-point (HP) bullet with a bimetallic semi-jacket in a steel case; intended for hunting, home defense, and target practice. The bullet in this cartridge has an excellent expansion and impact energy that give it outstanding stopping power effects, as well as being able to cause substantial adverse effects on the target after impact, making it a good choice for hunting.', 231.72, 15, 87, 754),
('7.62x39mm', 'MAI AP', 'A 7.62x39mm MAI AP cartridge with a two-part armor-piercing projectile, the bullet consists of a sabot and a tungsten carbide penetrator body, in a steel case. This bullet was designed by MAI to increase the penetration capabilities of the 7.62x39mm caliber, thanks to its muzzle velocity and peculiar design, it is capable of piercing basic and intermediate ballistic body protections, in addition to providing outstanding results against some modern specialized protection models, however, it has a high bounce probability on various surfaces.', 1750.99, 58, 46, 875),
('7.62x39mm', 'PP', '\r\nA PP gzh (GRAU index - 7N27) cartridge with an improved penetration bullet. The PP bullet consists of a brass - steel jacket with a truncated tip, a sharp core of hardened steel, a cap of thin metal foil coated with green varnish, and a lead jacket. The foil is used to prevent wear and tear on the gun and magazine when feeding cartridges.', 798.66, 41, 55, 732),
('7.62x39mm', 'PS', 'A 7.62x39mm PS gzh (GAU Index - 57-N-231) cartridge with a 7.9 gram bullet with a heat-strengthened steel core with lead cladding on the tip and a bimetallic jacket, in a bimetallic case. The PS cartridge (Púlya so Stal\'ným serdéchnikom - \"Bullet with a Steel core\") was introduced into service in 1949 for Soviet 7.62x39mm caliber weaponry, and over the years has undergone numerous changes in the materials used for its construction. Thanks to the tempered steel core that this model has, it is able to pierce through basic ballistic body protections as well as some intermediate models in addition to provide a significant stopping power effect, however, it has a high bounce probability off various surfaces.', 640.78, 35, 57, 717),
('7.62x39mm', 'SP', '7.62x39 rifled ammunition with SP 123 gr (8 g) bullet is great for practice and recreational shooting.', 294.23, 20, 68, 772),
('7.62x39mm', 'T-45M1', 'A 7.62x39mm T-45M1 gzh (GAU Index - 57-T-231PM1) cartridge with a 7.6 gram lead core tracer bullet with a bimetallic jacket, in a bimetallic case; intended for target designation and fire adjustment in battle (Trace color: Red). This tracer cartridge is an upgraded version of the T-45 model (GAU Index - 57-T-231), as it provides longer distance tracing capabilities. And despite the rudimentary design of the bullet, it can pierce through basic ballistic body protections as well as some intermediate models in addition to provide a considerable stopping power effect, however, it has a high bounce probability off various surfaces.', 586.49, 30, 64, 720),
('7.62x39mm', 'US', 'A 7.62x39mm US gzh (GAU Index - 57-N-231U) cartridge with a 12.6 gram subsonic bullet with a pointed heat-strengthened steel core over a lead base with a bimetallic jacket, in a bimetallic case with a reduced charge. This US cartridge (Umén\'shennoy Skórosti - \"Reduced Speed\") was designed in the 1950s for use in conjunction with a suppressor, achieving an excellent noise reduction in addition to ensuring the cycle of Soviet 7.62x39mm caliber weaponry and, thanks to its design, the bullet is capable of piercing through basic ballistic body protections, however, it has a high bounce probability off various surfaces.', 518.99, 29, 56, 301),
('7.62x51mm NATO', 'BCP FMJ', 'A BCP-made 7.62x51mm cartridge with a 10.9 gram bimetallic Full Metal Jacketed lead core Ball bullet in a lacquered steel case. Intended for hunting, home defense, and target practice, Despite its rudimentary design, this cartridge is capable of providing an outstanding stopping power effect, as well as being able to pierce through basic ballistic body protections as well as some intermediate models.', 1174.75, 35, 83, 840),
('7.62x51mm NATO', 'M61', 'A 7.62x51mm NATO M61 cartridge with a 9.8 gram armor-piercing bullet with a hardened steel core with lead cladding on the tip and a copper jacket, in a brass case. This cartridge was designed in the 1950s based on the .30-06 Springfield AP M2 cartridge to provide the United States Army with an armor-piercing bullet for 7.62x51mm NATO caliber automatic weaponry, being able to pierce through the most modern specialized ballistic body protections, in addition to provide a significant stopping power effect. However, it has a significant bounce probability on various surfaces.', 2319.02, 64, 70, 849),
('7.62x51mm NATO', 'M62', 'A 7.62x51mm NATO M62 cartridge with a 9.2 gram lead-antimony alloy core tracer bullet with a bimetallic jacket, in a brass case; intended for target designation and fire adjustment in battle (Trace color: Green).\r\n\r\nThis cartridge was designed to provide tracing capabilities to the 7.62x51mm NATO caliber automatic weaponry used by the United States Army, being able to pierce through basic and intermediate body ballistic protections, in addition to provide a considerable stopping power effect. However, it has a high bounce probability on various surfaces.', 1872.41, 44, 79, 816),
('7.62x51mm NATO', 'M80', 'A 7.62x51mm NATO M80 cartridge with a 9.5 gram lead-antimony alloy core bullet with a bimetallic jacket, in a brass case. This cartridge was adopted in the United States Armed Forces as a replacement for the 7.62x51mm NATO M59 cartridge after the Vietnam War as standard ammunition, as it provides a considerable stopping power effect as well as being able to pierce through basic and intermediate body ballistic protections. However, it has a high bounce probability on various surfaces.', 1567.98, 41, 80, 833),
('7.62x51mm NATO', 'M993', 'A 7.62x51mm NATO M993 cartridge with an 8.2 gram armor-piercing bullet with a tungsten carbide penetrator over an aluminum base with a copper jacket, in a brass case. This cartridge was designed during the 1990s to provide United States Army personnel with capabilities to pierce light covers and light armored vehicles, in addition to providing excellent results against the most modern specialized ballistic body protections.', 2761.31, 70, 67, 910),
('7.62x51mm NATO', 'TCW SP', 'A TCW-made 7.62x51mm cartridge with a 10.7 gram lead core soft-point (SP) bullet with a bimetallic semi-jacket in a steel case; intended for hunting, home defense, and target practice, produced by Tula Cartridge Works. This cartridge is aimed at the amateur public, both hunting, recreational and sport shooting, thanks to its versatility, as well as being able to pierce through basic ballistic body protections and providing excellent results against intermediate models, however, it has a high probability of bouncing off various surfaces.', 899.14, 30, 87, 808),
('7.62x51mm NATO', 'Ultra Nosler', '7.62x51mm Nosler cartridge of Ultra design. The bullet is loaded with two separate lead cores with a solid partition between them. The front part is torn quickly, delivering great energy. The base remains intact and provides deep penetration, even when hitting bones.', 603.36, 15, 507, 822),
('9x19mm Parabellum', 'AP 6.3', 'A 9x19 mm Parabellum AP 6.3 cartridge with a two-part controlled fragmenting projectile, an armor-piercing bullet that features a brass sabot and a hardened steel penetrator of 6.3mm. Thanks to the design of the AP bullet (Armor-Piercing) and despite having an average muzzle velocity relative to other cartridges of the same caliber, it has capabilities of piercing basic ballistic body protection along with some intermediate models.', 1007.81, 30, 48, 392),
('9x19mm Parabellum', 'GT', 'A 9x19mm Parabellum Green Tracer cartridge. Intended for target designation and fire adjustment in battle (Trace color: Green). Despite featuring a steel core, the bullet in this cartridge still has difficulties piercing basic ballistic body protection, however, it can provide a significant stopping power effect on the target.', 257.88, 14, 58, 365),
('9x19mm Parabellum', 'Luger CCI', 'A 9x19mm Luger cartridge with a special heavy bullet; marked with a blue tip, manufactured by CCI. Despite the heavy bullet on this cartridge, it still has an average muzzle velocity relative to other cartridges of the same caliber, endowing it with a considerable stopping power effect, along with causing severe adverse effects on the target after impact at the cost of penetration capabilities.', 320.42, 10, 70, 420),
('9x19mm Parabellum', 'M882', 'US Military 9mm ammunition is some of the most reliable ammunition available in the market, great for target shooting, plinking and practice. Loaded with M882 124-grain full metal jacket bullets rated at 1140 fps, this cartridge is considered +P (but slightly less than +P+) ammo. These increased pressure cartridges travel farther and penetrate better than standard 9mm rounds.', 315.62, 18, 56, 385),
('9x19mm Parabellum', 'PBP', 'A 9x19mm Parabellum PBP gzh (GRAU Index - 7N31) cartridge with a 4.1 gram armor-piercing bullet with a hardened carbon steel core with a cylindrical aluminum cladding and bimetallic semi-jacket in a bimetallic case. This bullet design is based on experiences with various armor-piercing pistol cartridges in the late 1990s, aimed to neutralize hostile personnel equipped with basic and intermediate ballistic body protection, in addition to being capable of piercing light covers, and having an outstanding muzzle velocity.', 946.21, 39, 52, 560),
('9x19mm Parabellum', 'PSO', 'A 9x19mm Parabellum PSO gzh cartridge with a 7.5 gram bullet in a bimetallic case; intended for sport shooting and hunting. Despite the low muzzle velocity of the bullet, it has considerable stopping power effect, thanks to its exceptional expansion capability after hitting the target.', 189.76, 10, 59, 340),
('9x19mm Parabellum', 'PST', 'A 9x19mm Parabellum Pst gzh (RG057, GRAU Index - 7N21) cartridge with a 5.4 gram heat-strengthened steel core bullet with two-layer semi-jacket, a polyethylene interior and a bimetallic exterior, in a bimetallic case. This modified PS cartridge (Púlya Stal\'náya - \"Steel Bullet\") was developed by TsNIITochMash in the early 1990s based on the 9x21mm PS gzh \"SP10\" cartridge to increase the penetration capabilities of Russian 9x19mm weapons against basic ballistic protections from up to 50 meters, in addition to providing better muzzle velocity.', 554.23, 20, 54, 57),
('9x19mm Parabellum', 'QuakeMaker', 'A 9x19mm Parabellum QuakeMaker cartridge with an 11.9 gram hollow-point bullet made entirely of lead in a lightweight case of steel with a red anodized aluminum base; intended for home defense and target practice. Due to its design, this cartridge provides an outstanding stopping power effect along with causing severe adverse effects on the target after impact at the cost of penetration capabilities, as well as having a considerably lower muzzle velocity relative to other cartridges of the same caliber.', 462.14, 8, 85, 290),
('9x19mm Parabellum', 'RIP', 'A 9x19mm Parabellum RIP (Radically Invasive Projectile), is a cartridge with a 6 gram frangible bullet designed to produce multiple wound channels to incapacitate assailants quickly. In a departure from conventional hollow-point design, the \"R.I.P.\" round features 8 machined lead-free copper petals or \"trocars\", designed to fragment quickly and move in multiple directions, thus providing a superior stopping power effect of its caliber, in addition to being able to inflict substantial adverse effects on the target after impact.', 788.13, 2, 102, 381);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `attachments` (
  `NAME` varchar(128) NOT NULL,
  `PART` varchar(64) NOT NULL,
  `DESCRIPTION` varchar(1024) NOT NULL,
  `MAKE` varchar(64) NOT NULL,
  `PRICE` double NOT NULL DEFAULT 1337,
  `PICCATINY_TOP` int(11) DEFAULT 0,
  `PICCATINY_BOTTOM` int(11) DEFAULT 0,
  `PICCATINY_LEFT` int(11) DEFAULT 0,
  `PICCATINY_RIGHT` int(11) DEFAULT 0,
  `ATTACHES_TO_RAIL` int(11) DEFAULT 0,
  `ATTACHES_TO_DOVETAIL` int(11) NOT NULL DEFAULT 0,
  `DOVETAIL_MOUNT` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `attachments`:
--   `PART`
--       `weapon_structure` -> `PART`
--

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`NAME`, `PART`, `DESCRIPTION`, `MAKE`, `PRICE`, `PICCATINY_TOP`, `PICCATINY_BOTTOM`, `PICCATINY_LEFT`, `PICCATINY_RIGHT`, `ATTACHES_TO_RAIL`, `ATTACHES_TO_DOVETAIL`, `DOVETAIL_MOUNT`) VALUES
('6L20', 'Magazine', '30-round bakelite Izhmash 6L20 magazine for 5.45x39 ammo, for AK-74 and compatible systems.', 'Izhmash Factories', 5544, 0, 0, 0, 0, 0, 0, 0),
('6L23', 'Magazine', '30-round polymer Izhmash 6L23 magazine for 5.45x39 ammo, for AK-74 and compatible systems.', 'Izhmash Factories', 5544, 0, 0, 0, 0, 0, 0, 0),
('6L31', 'Magazine', 'A 60-round 5.45x39 quad-stack polymer Izhmash 6L31 magazine for AK-74 and compatible systems. Produced in a small batch, never serialized.', 'Izhmash', 17855, 0, 0, 0, 0, 0, 0, 0),
('6P1 Sb.8', 'Grip', 'Izhmash polymer pistol grip for AK and compatibles, designed to replace the old bakelite grip.', 'Izhmash Factories', 6412, 0, 0, 0, 0, 0, 0, 0),
('6P1 SB.8V', 'Grip', 'An Izhmash-manufactured bakelite pistol grip for the AK automatic rifle and compatible weapon systems.', 'Izhmash', 5613, 0, 0, 0, 0, 0, 0, 0),
('6P20 0-20', 'Muzzle', 'Standard Izhmash-produced muzzle brake and compensator for AK-74M.', 'Izhmash Factories', 4812, 0, 0, 0, 0, 0, 0, 0),
('6P20 Sb.2', 'Rear Sight', 'Standard АK-74M rear sight manufactured by Izhmash', 'Izhmash Factories', 2412, 0, 0, 0, 0, 0, 0, 0),
('6P20 Sb.9', 'Handguard', 'Polymer AK-74 foregrip produced by Izhmash that replaced the classic wooden one.', 'Izhmash Factories', 4666, 0, 0, 0, 0, 0, 0, 0),
('6P26 Sb.5', 'Stock', 'Metal skeleton stock for AKS-74U, AKS-74UN and AKS-74UB manufactured by IzhMash.', 'Izhmash Factories', 9177, 0, 0, 0, 0, 0, 0, 0),
('6P26 Sb.6', 'Handguard', 'Standard-issue wooden handguard for AKS-74U, AKS-74UN and AKS-74UB, manufactured by IzhMash.', 'IzhMash Factories', 5412, 0, 0, 0, 0, 0, 0, 0),
('6P34 0-1', 'Dust Cover', 'Standard AK-74M top dust cover by Izhmash', 'Izhmash Factories', 5987, 0, 0, 0, 0, 0, 0, 0),
('6P34 Sb.15', 'Stock', 'Polymer stock for AK-74M manufactured by IzhMash.', 'Izhmash Factories', 8111, 0, 0, 0, 0, 0, 0, 0),
('ADAR 2-15', 'Platform', 'Platform for the 5.56x45mm ADAR 2-15', 'Molot Arms', 10863, 0, 0, 0, 0, 0, 0, 0),
('ADAR 2-15 Flash Hider', 'Muzzle', 'The 5.56x45 ADAR 2-15 Flash Hider.', 'Molot Arms', 6017, 0, 0, 0, 0, 0, 0, 0),
('ADAR 2-15 Upper Receiver', 'Upper Receiver', 'Upper receiver for ADAR 2-15 assault rifle manufactured by ADAR. Equipped with a mount for attaching additional devices.', 'Molot Arms', 5724, 1, 0, 0, 0, 0, 0, 0),
('ADAR 2-15 Wood', 'Handguard', 'A wooden SVD-style stock for ADAR 2-15 carbines.', 'Molot Arms', 11872, 0, 0, 0, 0, 0, 0, 0),
('ADAR 2-15 Wooden Stock', 'Stock', 'A wooden SVD-style stock for ADAR 2-15 carbines.', 'Molot Arms', 14911, 0, 0, 0, 0, 0, 0, 0),
('AK-12 30R Mag', 'Magazine', 'A 30-round 5.45x39 windowed, polymer Izhmash magazine for the AK-12 and compatible systems.', 'Izhmash', 7659, 0, 0, 0, 0, 0, 0, 0),
('AK-12 Pistol Grip', 'Grip', 'Izhmash pistol grip for AK-12 and compatible weapon systems.', 'Izhmash', 10655, 0, 0, 0, 0, 0, 0, 0),
('AK-12 Stock', 'Stock', 'Telescopic stock product by Izhmash for AK-12.', 'Izhmash', 7811, 0, 0, 0, 0, 0, 0, 0),
('AK-74M', 'Platform', 'Platform for the AK-74M (Avtomat Kalashnikova 74 Modernizirovanny - \"Kalashnikov\'s Automatic rifle 74 Modernized\") 5.45x39mm assault rifle.', 'Kalashnikov Group', 61772, 0, 0, 0, 0, 0, 0, 0),
('AKdemia Bastion', 'Dust Cover', 'The Bastion dust cover with an integrated Picatinny rail is compatible with all models of Kalashnikov automatic rifles and carbines based on the AK platform. Manufactured by AKademia.', 'AK AKdemia', 16330, 1, 0, 0, 0, 0, 0, 0),
('AKdemia Dominator', 'Handguard', 'The AKdemia Dominator handguard optimizes weapon grip and improves weapon control. The Picattiny rail integrated into the handguard allows for additional weapon tuning.', 'AK AKdemia', 19656, 1, 1, 0, 0, 0, 0, 0),
('AKS-74uB', 'Platform', 'The platform for AKS-74u modification B (Besshumny - \"Silenced\") is issued with a dovetail scope mount.', 'Izhmash Factories', 53246, 0, 0, 0, 0, 0, 0, 1),
('AKS-74uB Dust Cover', 'Dust Cover', 'Standard-issue AKS-74UB dust cover produced by IzhMash', 'Izhmash Factories', 6969, 0, 0, 0, 0, 0, 0, 0),
('AN PEQ-15', 'Laser', 'The Advanced Target Pointer Illuminator Aiming Laser (ATPIAL) produced by L3 Technologies is a rugged, combat-proven and easy-to-use aiming system with integrated infrared and visible aim lasers as well as an infrared illuminator.', '-', 57812, 0, 0, 0, 0, 1, 0, 0),
('AN PEQ-2', 'Laser', 'ATPIAL (Advanced Target Pointer Illuminator Aiming Laser) AN/PEQ-2 produced by L3 Insight Technologies. Tactical device that combines laser designators in both visible and IR band with IR searchlight.', '-', 47141, 0, 0, 0, 0, 1, 0, 0),
('AR-15 370mm', 'Barrel', 'A 370mm barrel for AR-15 based weapons for 5.56x45 NATO ammo. Corresponds with standard service M4A1 barrel.', 'Colt', 14600, 0, 0, 0, 0, 0, 0, 0),
('AR-15 406mm', 'Barrel', 'The Molot Arms 406mm barrel for AR-15 based weapons for 5.56x45 NATO ammo. A standard-issue barrel for ADAR 2-15.', 'Molot Arms', 17812, 0, 0, 0, 0, 0, 0, 0),
('Colt A2', 'Grip', 'The Colt A2 polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Standard-issue for all AR-15-based weapons of US Army and USMC.', 'Colt', 7490, 0, 0, 0, 0, 0, 0, 0),
('Colt Carbine', 'Buffer Tube', 'Colt Receiver Extension Buffer Tube, 4-position, Mil-Spec diameter will fit any AR-15-based carbine.', 'Colt', 4050, 0, 0, 0, 0, 0, 0, 0),
('Colt Charging Handle', 'Charging Handle', 'Standard charging handle for AR-15 and compatible systems.', 'Colt', 3125, 0, 0, 0, 0, 0, 0, 0),
('Defense PDC', 'Dust Cover', 'Fab Defense PDC dust cover with integrated Picatinny rail is compatible with all models of automatic rifles and carbines based on the AK platform.', 'FAB', 13899, 1, 0, 0, 0, 0, 0, 0),
('DTK-1 Compensator', 'Muzzle', 'Muzzle brake compensator DTK-1 by Zenit is designed for installation on 7.62x39 and 5.45x39 AK-based weapon systems. Reduces recoil and counters the barrel climb. The crown on the DTK nose is meant for breaking of tempered glass. 24x1.5 mm threading.', 'Zenit', 11047, 0, 0, 0, 0, 0, 0, 0),
('EMOD', 'Stock', 'The EMOD buttstock designed for AR-15 weapon systems. Manufactured by Vitor.', 'Vitor', 11142, 0, 0, 0, 0, 0, 0, 0),
('Hexagon', 'Muzzle', 'AK-74 shot sound suppressor from the Hexagon company.', 'Hexagon', 24765, 0, 0, 0, 0, 0, 0, 0),
('Hexagon Reactor', 'Muzzle', 'The \"Reactor\" prototype muzzle brake manufactured by Hexagon for 5.45x39 AK platforms. Features mounts required for installation of the \"Wafflemaker\" sound suppressor.', 'Hexagon', 8976, 0, 0, 0, 0, 0, 0, 0),
('HHS-1 Hybrid', 'Optic', 'The HHS-1 (Holographic Hybrid Sight 1) hybrid optical complex features the EXPS3-4 holographic sight with the G33.STS magnifier. Manufactured by EOTech.', '', 88224, 0, 0, 0, 0, 1, 0, 0),
('HS M4SS', 'Stock', 'The High Standard M4SS telescoping stock closely follows the classic M4A1 stock except for a few geometry details.', 'Colt', 10477, 0, 0, 0, 0, 0, 0, 0),
('KAC VFG', 'Foregrip', 'A vertical grip manufactured by Knight\'s Armament Company.', 'KAC', 8008, 0, 0, 0, 0, 1, 0, 0),
('Klesch-2P', 'Flashlight', 'Underbarrel-mounted LED flashlight \"2P Klesch + LCU\" produced by Zenit.', 'Zenit', 6483, 0, 0, 0, 0, 1, 0, 0),
('M4 Carry Handle', 'Rear Sight', 'Detachable Carry Handle with a rear sight for AR-15. Standard issue for M4A1.', 'Colt', 6483, 0, 0, 0, 0, 0, 0, 0),
('M4 Front Sight', 'Front Sight', 'Standard front sight with an included gas block.', 'Colt', 4124, 0, 0, 0, 0, 0, 0, 0),
('M4 Handguard', 'Handguard', 'A carbine length handguard manufactured by Colt, a standard-issue handguard for the M4A1 assault rifles.', 'Colt', 8400, 0, 0, 0, 0, 0, 0, 0),
('M4A1', 'Platform', 'Platform for the M4A1 Carbine. Also called a lower receiver in the west.', 'Colt', 49500, 0, 0, 0, 0, 0, 0, 0),
('M4A1 Upper Receiver', 'Upper Receiver', 'Upper receiver for M4A1 assault rifle manufactured by Colt. Equipped with a mount for attaching additional devices.', 'Colt', 21400, 0, 0, 0, 0, 0, 0, 0),
('MG-47 KGB', 'Grip', 'Pistol grip for a AK, produced by KGB LLC.', 'KGB', 12388, 0, 0, 0, 0, 0, 0, 0),
('MRS Reflex Sight', 'Optic', 'The Walther MRS (Multi-Reticle Sight) reflex sight features 2 dots and 2 reticles with adjustable brightness levels. Cheap, accurate (but has to be zeroed every time the reticle type is switched), compact and offers good battery life - but not too sturdy and reliable.', 'Walther', 17278, 0, 0, 0, 0, 1, 0, 0),
('OKP-7 DT', 'Optic', 'The original design of OKP sights allows firing from unstable positions in rapidly changing conditions, reduces the operator fatigue, and, if necessary, allows unhindered use of base mechanical sights. The key feature of this sight is a rimless reflector attachment that doesn\'t block any field of fire sections; instead, reflector is protected by thin and durable visor that is almost un-noticeable when firing. This variant is installed on the dovetail type mount.', '', 27141, 0, 0, 0, 0, 0, 1, 0),
('PBS-4', 'Muzzle', 'The PBS-4 (Pribór Besshúmnoy Strel\'bý - \"Silent Firing Device\") sound suppressor, manufactured by TSNIITochMash for use as a part of the \"Canary\" assault rifle grenade launcher system.', 'TSNIITochMash', 14781, 0, 0, 0, 0, 0, 0, 0),
('PK-AA', 'Optic', 'The PK-AA reflex sight, designed to fit any AK-style model with a dovetail rail mount. Manufactured by BelOMO.', 'BelOMO', 17650, 0, 0, 0, 0, 0, 1, 0),
('PMAG 10 GEN M3', 'Magazine', 'A 10-round polymer Magpul PMAG GEN M3 10 magazine, for 5.56x45 ammunition.', 'Magpul', 3695, 0, 0, 0, 0, 0, 0, 0),
('PMAG 30 GEN M3', 'Magazine', 'A 30-round 5.56x45 Magpul PMAG GEN M3 30 polymer magazine with an observation slot for faster capacity checking.', 'Magpul', 8147, 0, 0, 0, 0, 0, 0, 0),
('PMAG 5.45 30 GEN M3', 'Magazine', '30-round polymer Magpul PMAG 30 AK74 GEN M3 magazine 5.45x39 AK and compatible weapons.', 'Magpul', 6192, 0, 0, 0, 0, 0, 0, 0),
('RK-3', 'Grip', 'RK-3 Klassika anatomic pistol grip features built-in hermetically sealed battery storage compartment and is designed for installation as a replacement for the standard AK pistol grip.', 'Zenit', 14827, 0, 0, 0, 0, 0, 0, 0),
('RPK-16 Drum', 'Magazine', '95-round polymer Izhmash magazine for 5.45x39 ammo, for RPK-16 and compatible systems.', 'Izhmash', 36743, 0, 0, 0, 0, 0, 0, 0),
('RS47', 'Handguard', 'The RS47 foregrip, manufactured by Command Arms with light polymer, fits the majority of rifles and carbines built on the base of AK. Equipped with two short and two long rail mounts for installing additional devices.', 'CAA', 16933, 1, 1, 1, 1, 0, 0, 0),
('Saiga 545', 'Magazine', '10-round polymer Izhmash Saiga 545 magazine, for the AK-based civilian carbine of the same name, for 5.45x39 ammo.', 'Izhmash', 3854, 0, 0, 0, 0, 0, 0, 0),
('Shift', 'Foregrip', 'The Shift vertical grip integrates the form with functionality. Its hybrid-designed shape works both as a regular foregrip and as a comfortable hand stop when going with the thumb over method. The grip allows you to handle the weapon with the confidence and the organic design enables the operator to manipulate the rifle in a way that\'s most comfortable at any given moment.', 'Fortis', 7431, 0, 0, 0, 0, 1, 0, 0),
('STANAG', 'Magazine', 'A 30-round metal Colt AR-15 magazine designed in compliance with the STANAG 4179 standard for 5.56x45 ammo. The STANAG 4179 standard was approved by NATO members in 1980 for the unification of allied personnel ammo and magazines.', '', 6512, 0, 0, 0, 0, 0, 0, 0),
('Sturmgriff', 'Foregrip', 'The Sturmgriff vertical foregrip. Manufactured by Heckler & Koch.', 'Heckler & Koch', 17823, 0, 0, 0, 0, 1, 0, 0),
('Tactical LAM Blue', 'Laser', 'Compact tactical Laser Aiming-module with blue dot produced by NcSTAR.', 'NcSTAR', 4921, 0, 0, 0, 0, 1, 0, 0),
('USGI A2', 'Muzzle', 'The 5.56x45 Colt USGI A2 Flash hider a.k.a. Bird Cage is designed for mounting on 5.56x45 weapons built on AR-15 system. However, it can be installed on other weapons of the same caliber, provided that barrel has the same threading for muzzle devices. A service muzzle device for M4A1.', 'Colt', 8356, 0, 0, 0, 0, 0, 0, 0),
('X400 Ultra', 'Flashlight', 'SureFire X400 combined LED and red laser Weapon Light.', 'SureFire', 7109, 0, 0, 0, 0, 1, 0, 0),
('Zenit B-11', 'Handguard', 'The integrally machined B-11 foregrip is manufactured from aluminum alloy D16T with black coating and can be installed instead of the standard-issue foregrip on the AKS-74U. The foregrip is fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators. Manufactured by Zenit.', 'Zenit', 9688, 0, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapons` (
  `ammunition` varchar(32) NOT NULL,
  `model` varchar(64) NOT NULL,
  `make` varchar(64) NOT NULL,
  `weight` double NOT NULL,
  `rof` int(11) NOT NULL,
  `efr` int(11) NOT NULL,
  `Description` varchar(1024) NOT NULL,
  `TYPE` varchar(32) DEFAULT NULL,
  `Origin` varchar(128) NOT NULL DEFAULT 'Soviet Union',
  `Price` double NOT NULL DEFAULT 192815.1,
  `Discount` double NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapons`:
--   `ammunition`
--       `ammunition` -> `NAME`
--   `TYPE`
--       `weapon_type` -> `TYPE`
--

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`ammunition`, `model`, `make`, `weight`, `rof`, `efr`, `Description`, `TYPE`, `Origin`, `Price`, `Discount`) VALUES
('5.7x28mm FN', '5-7 MK2', 'FN Herstal', 0.662, 30, 50, 'FN Five-Seven, trademarked as the Five-seveN, is a semi-automatic pistol designed and manufactured by FN Herstal in Belgium. The pistol was developed in the early 1990s and features a cold hammer-forged barrel that is chrome-lined for extended service life. The polymer-framed Five-Seven offers single-action operation, low felt recoil, 20-round magazine capacity, and is equipped with an ambidextrous, forward-mounted manual safety, and an accessory rail that accepts tactical lights and lasers.', 'Pistol', 'Belgium', 192517.1, 1.040731123913316),
('5.7x28mm FN', '5-7 MK2 FDE', 'FN Herstal', 0.662, 30, 50, 'FN Five-Seven, trademarked as the Five-seveN, is a semi-automatic pistol designed and manufactured by FN Herstal in Belgium. The pistol was developed in the early 1990s and features a cold hammer-forged barrel that is chrome-lined for extended service life. The polymer-framed Five-Seven offers single-action operation, low felt recoil, 20-round magazine capacity, and is equipped with an ambidextrous, forward-mounted manual safety, and an accessory rail that accepts tactical lights and lasers.', 'Pistol', 'Belgium', 192517.1, 1),
('5.56x45mm NATO', 'ADAR 2-15', 'Molot Oruzhie', 2.907, 800, 500, 'The ADAR 2-15 Russian civilian carbine that is based on the design of the AR-15. The carbine is produced in St. Petersburg with use of Israeli components and chrome barrels made by Molot Arms.', 'Assault Carbine', 'Soviet Union', 192517.1, 1.1247318333860805),
('5.56x45mm NATO', 'AK-101', 'Kalashnikov Concern', 3.605, 650, 650, 'The AK-101 5.56x45mm assault rifle is a further modernized version of AK-74M base. AK-101 is equipped with a side-folding shoulder stock and a side mount for optical and night scopes. The rifle is chambered to fire 5.56x45mm NATO ammunition and is designed entirely for export purposes. The 100-series AKs are produced by the Izhmash factories in Izhevsk, Russia.', 'Assault Rifle', 'Russian Federation', 192517.1, 0.9853055049578744),
('5.56x45mm NATO', 'AK-102', 'Kalashnikov Concern', 3.205, 600, 650, 'The AK-102 5.56x45mm assault rifle further modernized version of AK-74M base, more precisely a shortened version of AK-101. A short compact version equipped with a side-folding shoulder stock and a side mount for optical and night scopes. The AK-102 is chambered to fire 5.56x45mm NATO ammunition, and is designed entirtely for export purposes. The 100-series AKs are produced by the Izhmash factories in Izhevsk, Russia.', 'Assault Rifle', 'Russian Federation', 192517.1, 0.9753141376062392),
('7.62x39mm', 'AK-103', 'Kalashnikov Concern', 3.605, 600, 650, 'The AK-103 7.62x39mm assault rifle is a further modernized version of AK-74M base. AK-103 is equipped with a side-folding shoulder stock and a side mount for optical and night scopes. The 100-series AKs are produced by the Izhmash factories in Izhevsk, Russia.', 'Assault Rifle', 'Russian Federation', 192517.1, 1.0221783816410743),
('7.62x39mm', 'AK-104', 'Kalashnikov Concern', 3.205, 600, 650, 'The AK-104 7.62x39mm assault rifle is a further modernized version of AK-74M base, more precisely a shortened version of AK-103. A short compact version equipped with a side-folding shoulder stock and a side mount for optical and night scopes. The 100-series AKs are produced by the Izhmash factories in Izhevsk, Russia.', 'Assault Rifle', 'Russian Federation', 192517.1, 1),
('5.45x39mm', 'AK-105', 'Kalashnikov Concern', 3.205, 600, 650, 'The AK-105 5.45x39mm assault rifle is a further modernized version of AK-74M base. A short compact version equipped with a side-folding shoulder stock and a side mount for optical and night scopes. The 100-series AKs are produced by the Izhmash factories in Izhevsk, Russia.', 'Assault Rifle', 'Russian Federation', 192517.1, 0.9578801731867534),
('5.45x39mm', 'AK-12', 'Kalashnikov Concern', 3.605, 700, 600, 'The Kalashnikov AK-12 5.45 automatic rifle is the primary model of individual small arms for personnel of motorized and other units of the Russian Armed Forces. The AK-12 is a part of the Ratnik equipment system.', 'Assault Rifle', 'Russian Federation', 192517.1, 1.1039676265931668),
('5.45x39mm', 'AK-74', 'Kalashnikov Concern', 3.5, 650, 500, 'The AK-74 (Avtomat Kalashnikova 74 - \"Kalashinikov\'s Automatic rifle 74\") 5.45x39mm assault rifle, developed in 1970 by M. T. Kalashnikov, became a further evolution of the AKM due to adoption of the new 5.45x39 ammunition by the military. The AK-74 was equipped with a new buttstock, handguard (which retained the AKM-type finger swells), and gas cylinder. The stock has a shoulder pad different from that on the AKM, which is rubber and serrated for improved seating against the shooter. In addition, there are lightening cuts on each side of the buttstock. The buttstock, lower handguard, and upper heatguard were first manufactured from laminated wood, this later changed to a syntehtic, plum or dark brown colored fiberglass.', 'Assault Rifle', 'Soviet Union', 192517.1, 0.9880425538757793),
('5.45x39mm', 'AK-74M', 'Kalashnikov Concern', 3.605, 650, 650, 'The AK-74M (Avtomat Kalashnikova 74 Modernizirovanny - \"Kalashnikov\'s Automatic rifle 74 Modernized\") 5.45x39mm assault rifle is a full-scale produced modernized version of the AK-74 that offers more versatility compared with its predecessor. Apart from several minor improvements, such as a lightened bolt and carrier assembly to reduce the impulse of the gas piston and bolt carrier during firing, the rifle features a new glass-filled polyamide stock that retains the shape of the original AK-74 fixed laminated wood stock, but side-folds to the left like the skeletonized AKS-74 buttstock, and also a dovetail side mount for installing various scopes. The AK-74M is a main service rifle of the Russian Federation.', 'Assault Rifle', 'Soviet Union', 192517.1, 1.008831144822972),
('7.62x39mm', 'AKM', 'Kalashnikov Concern', 3.495, 600, 400, 'The AKM (Avtomát Kaláshnikova Modernizírovanny - Kalashnikovs Automatic Rifle Modernised) 7.62x39mm automatic rifle was was adopted in 1959 to replace AK as a standard service weapon of the Soviet Army. Main differences compared to AK: enhanced accuracy range, lower weight, new stock, trigger, hammer retarder, muzzle compensator and other design changes aimed at improving the efficiency of the rifle.', 'Assault Rifle', 'Soviet Union', 192517.1, 1.0861562168794947),
('7.62x39mm', 'AKMN', 'Kalashnikov Concern', 3.495, 600, 400, 'AKMN (Avtomat Kalashnikova Modernizirovanny Nochnoy - \"Kalashnikov\'s Automatic Rifle Modernised Night\") is a small arms system consisting of a modified AKM automatic rifle with a dovetail mount for installation of the NSP family night vision scopes - NSP-2/3/3A, NSPU, NSPU-M.', 'Assault Rifle', 'Soviet Union', 192517.1, 1),
('7.62x39mm', 'AKMS', 'Kalashnikov Concern', 3.445, 600, 400, 'AKMS (Avtomát Kaláshnikova Modernizírovanny Skladnóy - \"Kalashnikov\'s Automatic rifle Modernized with foldable stock\") 7.62x39mm assault rifle (GRAU Index - 6P4) is a variant of the AKM rifle with a folding shoulder piece (stock). Folds forward-down, under the handguard. Designed specifically for airborne troops.', 'Assault Rifle', 'Soviet Union', 192517.1, 0.8880473316793445),
('7.62x39mm', 'AKMSN', 'Kalashnikov Concern', 3.445, 600, 400, 'AKMSN 7.62x39 (Avtomát Kaláshnikova Modernizírovanny Skladnóy Nochnóy - \"Kalashnikov\'s Automatic rifle Modernized Night with a foldable stock\") is a modified AKMS automatic rifle with a dovetail mount for installation of the NSP family night vision scopes — NSP-2/3/3A, NSPU, NSPU-M.', 'Assault Rifle', 'Soviet Union', 192517.1, 1.091900958507674),
('5.45x39mm', 'AKS-74', 'Kalashnikov Concern', 3.134, 650, 650, 'The AKS-74 (Avtomat Kalashnikov Sladnoy 74 - \"Kalashnikov\'s Automatic rifle 74 with a foldable stock\") 5.45x39mm assault rifle is a variant of AK-74 equipped with a side-folding metal shoulder stock, designed primarily for use with air assault infantry and developed alongside the basic AK-74. The AKS-74 stock is fabricated from stamped sheet metal struts, machine pressed into a \"U\" shape and assembled by punch fit and welding.', 'Assault Rifle', 'Soviet Union', 192517.1, 0.9482711694869486),
('5.45x39mm', 'AKS-74N', 'Kalashnikov Concern', 3.234, 650, 650, 'AKS-74N (Avtomat Kalashnikov Sladnoy 74 Nochnoy - \"Kalashnikov\'s Automatic rifle 74 Night with a foldable stock\") 5.45x39mm assault rifle equipped with a side-folding metal shoulder stock, designed primarily for use with air assault infantry. The key design difference from the standard AKS-74 is a side dovetail mount for optical and night scopes.', 'Assault Rifle', 'Soviet Union', 192517.1, 0.9423194767508252),
('5.45x39mm', 'AKS-74u', 'Kalashnikov Concern', 2.694, 650, 300, 'AKS-74U (Avtomat Kalashnikov Sladnoy 74 Ukorochenny - \"Kalashnikov\'s Shortened Automatic rifle 74 with a foldable stock\") is a shortened version of the AKS-74 assault rifle, developed in the early 80s for combat vehicle crews and airborne troops, also became very popular with law enforcement and special forces for its compact size.', 'Assault Rifle', 'Soviet Union', 192517.1, 0.9060164901005208),
('5.45x39mm', 'AKS-74uB', 'Kalashnikov Concern', 3.341, 650, 300, 'A special version of the AKS-74u assault rifle, modification B (Besshumny - \"Silenced\") is issued with a dovetail scope mount, a sound suppressor device, and special sights designed for firing subsonic ammunition.', 'Assault Rifle', 'Soviet Union', 192517.1, 1.036801242467647),
('9x18mm Makarov', 'APB', 'Molot Oruzhie', 1.611, 750, 50, 'The APB pistol (Avtomatícheskiy Pistolét Besshúmnyy - \"Silenced Automatic Pistol\", GRAU Index - 6P13) is a silenced version of the Stechkin machine pistol, widely used by different Russian special forces.', 'Pistol', 'Soviet Union', 192517.1, 1.066581796880949),
('9x39mm', 'AS VAL', 'TsNIITochMash', 2.587, 650, 900, 'AS VAL (Avtomat Specialniy VAL - \"Special Automatic rifle VAL\") is a silenced automatic rifle with an integral suppressor designed for special forces units. Developed in TsNIITochMash and based on the VSS Vintorez platform.', 'Assault Rifle', 'Soviet Union', 192517.1, 1.0685768153720714),
('12.7x55mm', 'ASh-12', 'KBP Instrument Design Bureau', 6.17, 650, 650, 'The ASh-12.7 (which stands for \"Automatic assault rifle, 12.7mm\") battle rifle is a dedicated CQB/Urban Operations weapon, developed by TsKIB SOO (\"Central Design and Research Bureau of Sporting and Hunting Arms\"), a subsidiary of the KBP Instrument Design Bureau of Tula, Russia, by request from the Russian FSB (Federal Security Service). The weapon was designed with extreme short-range stopping power in mind for FSB urban combat units.', 'Assault Rifle', 'Russian Federation', 192517.1, 1.081656450604436),
('5.56x45mm NATO', 'AUG A3', 'Steyr-Daimler-Puch', 4.043, 715, 500, 'Steyr AUG A3 is a 5.56x45 bullpup assault rifle, developed by the Austrian company Steyr-Daimler-Puch. AUG is known for good ergonomics, decent accuracy, low recoil and sufficient reliability. The rifle also stands out for its futuristic design. The A3 version features a bolt-catch button.', 'Assault Carbine', 'Austria', 192517.1, 0.94404339221101),
('.338 Lapua Magnum', 'AXMC LM', 'Accuracy International', 5.79, 30, 1000, 'The AXMC is the latest in a long and distinguished line of combat proven sniper rifles designed and manufactured by the British company Accuracy International. Chambered in .338 Lapua Magnum, but can be quickly converted to .300 Winchester Magnum and .308 Winchester by changing the barrel, bolt, and magazine/insert.', 'Bolt Action Rifle', 'United Kingdom', 192517.1, 0.88270542557345),
('.45 ACP', 'M1911A1', 'Colt', 1.214, 30, 50, 'Commonly known as just \"1911\", the M1911 is one of the most famous handguns on the planet. It went through both World Wars as the US Army\'s standard-issue, and despite being replaced in 1986, its further variations are still being used as the sidearm of different US Special Forces. The M1911A1 is the second generation of the original M1911 pistol. After World War I, the military\'s Model 1911 went through various changes including a shorter trigger with frame cuts, improved iron sights, an arched mainspring housing, and a redesigned grip safety.', 'Pistol', 'United States of America', 192517.1, 1.1296123105457805),
('12x70mm', 'M3 Super 90', 'Benelli', 3.306, 60, 70, 'The Benelli M3 S90 is a dual-mode shotgun designed and manufactured by Benelli. The M3 is notable for allowing the user to choose between semi-automatic or pump-action operation. Benelli shotguns show excellent ballistic performance, and the finish and fine workmanship are the epitome of traditional Italian style.', 'Shotgun', 'Italy', 192517.1, 1.0648696981514347),
('.45 ACP', 'M45A1', 'Colt', 1188, 30, 50, 'The MEU(SOC) pistol, (\"Marine Expeditionary Unit\"; \"Special Operations Capable\") officially designated the M45 MEUSOC, is a magazine-fed, recoil-operated, single-action, semiautomatic pistol chambered for the .45 ACP cartridge. It\'s a variant of the M1911, and has been the standard-issue side arm for the Force Recon Element of the United States Marine Corps\' Marine Expeditionary Units since 1985. The improved M45A1 features several changes to the original M1911A1 design. One feature is the dual recoil spring system that spreads out the recoil force of the .45 ACP round by lowering the peak force of the recoil pulse. It also has 3-dot tritium night sights, a 5-inch national match barrel, ambidextrous safety, a picatinny rail, and a desert tan Cerakote finish.', 'Pistol', 'United States of America', 192517.1, 0.9980255874010326),
('5.56x45mm NATO', 'M4A1 Carbine', 'Colt', 2.934, 800, 500, 'The Colt M4A1 carbine is a fully automatic variant of the basic M4 Carbine and was primarily designed for special operations use. However, U.S. Special Operations Command (USSOCOM) was soon to adopt the M4A1 for almost all special operations units, followed later by general introduction of the M4A1 into service with the U.S. Army and Marine Corps.\r\n\r\n', 'Assault Rifle', 'United States of America', 192517.1, 1.0477711813057753),
('9x19mm Parabellum', 'M9A3', 'Beretta', 0.818, 30, 50, 'The Beretta M9A3 is the newest addition to the M9 series of pistols. It was designed for military and police forces, as well as for sport and a home defence use. The main features of the A3 generation are a more ergonomic and durable FDE coating.', 'Pistol', 'Italy', 192517.1, 1.0559142320525587),
('5.56x45mm NATO', 'MDR 5.56', 'Desert Tech', 3.996, 650, 500, 'The MDR 5.56x45 bullpup assault rifle, designed and manufactured by Desert Tech LLC. A modular multi-caliber weapon with a compact bullpup layout intended for use by police and military special operations. Barrel lengths and calibers can be changed by the end-user within minutes with a minimum amount of tools.', 'Assault Rifle', 'United States of America', 192517.1, 0.9499528025732673),
('7.62x51mm NATO', 'MDR 7.62', 'Desert Tech', 4.469, 650, 500, 'The MDR 7.62x51 (.308) bullpup assault rifle, designed and manufactured by Desert Tech LLC. A modular multi-caliber weapon with a compact bullpup layout intended for use by police and military special operations. Barrel lengths and calibers can be changed by the end-user within minutes with a minimum amount of tools.', 'Assault Rifle', 'United States of America', 192517.1, 1.0992493937569539),
('7.62x39mm', 'MK47', 'CMMG', 2.322, 650, 500, 'CMMG Mk47 Mutant, an American-made carbine chambered in 7.62x39mm, manufactured by CMMG Inc. Works with all types of AK magazines, including steel, polymer and drums. The carbine has shown exceptional reliability, which, together with the classic ergonomics of the AR system, gives an excellent example of a firearm. This variant features a fully automatic firing mode, for Law Enforcement and Military use only.', 'Assault Rifle', 'United States of America', 192517.1, 1.0232532717840102),
('9x19mm Parabellum', 'MP9', 'Brugger and Thomet', 1.29, 900, 200, 'The Brügger & Thomet MP9 (Maschinenpistole 9mm, German for machine pistol) is a selective-fire 9×19mm Parabellum caliber machine pistol designed and manufactured by Brügger & Thomet of Switzerland. A perfect choice for a Personal Defense Weapon (PDW).', 'Personal Defense Weapon', 'Switzerland', 192517.1, 1),
('9x19mm Parabellum', 'MP9-N', 'Brugger and Thomet', 1.41, 1100, 200, 'MP9-N is the further modification of the MP9 Submachine gun, which was refined and optimized in cooperation with special units from police and military. MP9-N is currently in service with close protection teams as well as with SWAT teams worldwide. It is also a perfect choice as a Personal Defense Weapon (PDW).', 'Personal Defense Weapon', 'Switzerland', 192517.1, 0.9124269903179937),
('7.62x39mm', 'RPD', 'Degtyarev', 7.4, 700, 800, 'The Degtyarev hand-held machine gun chambered in 7.62x39 caliber. This machine gun was adopted by the Soviet Army and was used as a means of reinforcing infantry squads and platoons from the late forties to the early sixties. The RPD is elegantly designed, resulting in a compact, reliable and quite powerful fire support weapon. Manufactured by V.A. Degtyarev Plant.', 'Light Machine Gun', 'Soviet Union', 192517.1, 1.0989816545761215),
('7.62x51mm NATO', 'SA-58', 'DS Arms', 3.951, 700, 900, 'The SA-58 OSW (Operations Specialist Weapon), manufactured by American company DSA (or DS Arms - David Selvaggio Arms), is a legal copy of the FAL. It\'s made with the same Steyr-Daimler-Puch production line equipment as the StG-58. It may come with a different barrel length, an aluminum-alloy lower receiver, and improved glass-filled nylon furniture. Civilian models are semi-automatic, but military and law enforcement clients can procure select-fire models that have a fully automatic cyclic rate of 750 rounds/minute. The DSA-58 can use any metric-measurement FAL magazines.', 'Assault Rifle', 'United States of America', 192517.1, 1.119716641524266),
('7.62x51mm NATO', 'SCAR-H FDE', 'FN Herstal', 3.802, 600, 500, 'The FN SCAR-H (Special Operations Forces Combat Assault Rifle - Heavy) assault rifle chambered in 7.62x51 NATO rounds, was adopted by USSOCOM (United States Special Operations Command) as the Mk 17. Features a side-folding polymer stock and a free-floating, cold hammer-forged Mil-Spec barrel with hardchromed bore. Fully-ambidextrous operating controls instantly adapt the SCAR to any user or any shooting position. The receiver-integrated optical rail plus three accessory rails enable mounting of a wide variety of scopes, electronic sights, tactical lights and lasers. Manufactured by Fabrique Nationale Herstal. Comes in black and flat dark earth.', 'Assault Rifle', 'Soviet Union', 192517.1, 1.0161400453470366),
('7.62x51mm NATO', 'SCAR-H LB', 'FN Herstal', 3.802, 600, 500, 'The FN SCAR-H (Special Operations Forces Combat Assault Rifle - Heavy) assault rifle chambered in 7.62x51 NATO rounds, was adopted by USSOCOM (United States Special Operations Command) as the Mk 17. Features a side-folding polymer stock and a free-floating, cold hammer-forged Mil-Spec barrel with hardchromed bore. Fully-ambidextrous operating controls instantly adapt the SCAR to any user or any shooting position. The receiver-integrated optical rail plus three accessory rails enable mounting of a wide variety of scopes, electronic sights, tactical lights and lasers. Manufactured by Fabrique Nationale Herstal. Comes in black and flat dark earth.', 'Assault Rifle', 'United States of America', 192517.1, 0.9384510363096458),
('5.56x45mm NATO', 'SCAR-L FDE', 'FN Herstal', 3.289, 650, 500, 'The FN SCAR-L (Special Operation Forces Combat Assault Rifle - Light) assault rifle chambered in 5.56x45 NATO rounds, was adopted by USSOCOM (United States Special Operations Command) as the Mk 16. Features a side-folding polymer stock and a free-floating, cold hammer-forged Mil-Spec barrel with hardchromed bore. Fully-ambidextrous operating controls instantly adapt the SCAR to any user or any shooting position. The receiver-integrated optical rail plus three accessory rails enable mounting of a wide variety of scopes, electronic sights, tactical lights and lasers. Manufactured by Fabrique Nationale Herstal. Comes in black and flat dark earth.', 'Assault Rifle', 'United States of America', 192517.1, 1),
('5.56x45mm NATO', 'SCAR-L LB', 'FN Herstal', 3.289, 650, 500, 'The FN SCAR-L (Special Operation Forces Combat Assault Rifle - Light) assault rifle chambered in 5.56x45 NATO rounds, was adopted by USSOCOM (United States Special Operations Command) as the Mk 16. Features a side-folding polymer stock and a free-floating, cold hammer-forged Mil-Spec barrel with hardchromed bore. Fully-ambidextrous operating controls instantly adapt the SCAR to any user or any shooting position. The receiver-integrated optical rail plus three accessory rails enable mounting of a wide variety of scopes, electronic sights, tactical lights and lasers. Manufactured by Fabrique Nationale Herstal. Comes in black and flat dark earth.', 'Assault Rifle', 'United States of America', 192517.1, 0.9500427338537458);

-- --------------------------------------------------------

--
-- Table structure for table `weapon_attachment`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapon_attachment` (
  `WEP_NAME` varchar(64) NOT NULL,
  `PART_NAME` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapon_attachment`:
--   `WEP_NAME`
--       `weapons` -> `model`
--   `PART_NAME`
--       `attachments` -> `NAME`
--

--
-- Dumping data for table `weapon_attachment`
--

INSERT INTO `weapon_attachment` (`WEP_NAME`, `PART_NAME`) VALUES
('AKS-74uB', '6L23'),
('AKS-74uB', '6P1 Sb.8'),
('AK-74M', '6L20'),
('AK-74M', '6P1 SB.8V'),
('AKS-74uB', '6L20'),
('AKS-74uB', '6P26 Sb.5'),
('AKS-74uB', 'AKS-74uB Dust Cover'),
('AKS-74uB', 'PBS-4'),
('M4A1 Carbine', 'PMAG 30 GEN M3'),
('M4A1 Carbine', 'PMAG 10 GEN M3'),
('MDR 5.56', 'STANAG'),
('MDR 5.56', 'PMAG 10 GEN M3'),
('MDR 5.56', 'PMAG 30 GEN M3'),
('M4A1 Carbine', 'STANAG'),
('AKS-74u', 'Zenit B-11'),
('AKS-74uB', 'Zenit B-11'),
('ADAR 2-15', 'PMAG 30 GEN M3'),
('ADAR 2-15', 'STANAG'),
('AK-74M', '6L31'),
('AK-74M', 'AK-12 30R Mag'),
('AK-74M', 'PMAG 5.45 30 GEN M3'),
('AK-74M', 'Hexagon'),
('AK-74M', 'Hexagon Reactor'),
('AK-74M', 'Saiga 545'),
('AK-74M', 'RPK-16 Drum'),
('AKS-74uB', 'AK-12 30R Mag'),
('AKS-74uB', '6L31'),
('AKS-74uB', 'PMAG 5.45 30 GEN M3'),
('AKS-74uB', 'Saiga 545'),
('AKS-74uB', 'RPK-16 Drum'),
('AK-74M', 'AKdemia Bastion'),
('AK-74M', 'Defense PDC'),
('AK-74M', 'AKdemia Dominator'),
('AKS-74uB', '6P1 SB.8V'),
('AK-74M', '6P1 Sb.8'),
('AK-74M', 'RK-3'),
('AKS-74uB', 'RK-3'),
('AKS-74uB', 'MG-47 KGB'),
('AK-74M', 'MG-47 KGB'),
('AKS-74uB', '6P26 Sb.6'),
('AK-74M', '6P20 Sb.9'),
('AK-74M', 'RS47'),
('AK-74M', 'EMOD'),
('AK-74M', 'AK-12 Stock'),
('AKS-74uB', 'AK-12 Pistol Grip'),
('AK-74M', 'AK-12 Pistol Grip'),
('AK-74M', '6P34 Sb.15'),
('AK-74M', '6P34 0-1'),
('AK-74M', 'DTK-1 Compensator'),
('AK-74M', '6P20 0-20');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_attachments_seeker`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapon_attachments_seeker` (
  `WEP_NAME` varchar(64) DEFAULT NULL,
  `PART_NAME` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapon_attachments_seeker`:
--   `WEP_NAME`
--       `weapons` -> `model`
--   `PART_NAME`
--       `weapon_structure` -> `PART`
--

--
-- Dumping data for table `weapon_attachments_seeker`
--

INSERT INTO `weapon_attachments_seeker` (`WEP_NAME`, `PART_NAME`) VALUES
('AKS-74u', 'Stock'),
('AKS-74uB', 'Stock'),
('AK-12', 'Buffer Tube'),
('AK-12', 'Magazine'),
('AK-12', 'Dust Cover'),
('AK-12', 'Muzzle'),
('AK-12', 'Handguard'),
('AK-12', 'Platform'),
('AK-12', 'Rear Sight'),
('AK-12', 'Grip'),
('AK-12', 'Stock'),
('AK-74M', 'Magazine'),
('AK-74M', 'Dust Cover'),
('AK-74M', 'Muzzle'),
('AK-74M', 'Handguard'),
('AK-74M', 'Platform'),
('AK-74M', 'Rear Sight'),
('AK-74M', 'Grip'),
('AK-74M', 'Stock'),
('AK-74', 'Magazine'),
('AK-74', 'Dust Cover'),
('AK-74', 'Muzzle'),
('AK-74', 'Handguard'),
('AK-74', 'Platform'),
('AK-74', 'Rear Sight'),
('AK-74', 'Grip'),
('AK-74', 'Stock'),
('AKM', 'Magazine'),
('AKM', 'Dust Cover'),
('AKM', 'Muzzle'),
('AKM', 'Handguard'),
('AKM', 'Platform'),
('AKM', 'Rear Sight'),
('AKM', 'Grip'),
('AKM', 'Stock'),
('AK-101', 'Magazine'),
('AK-101', 'Dust Cover'),
('AK-101', 'Muzzle'),
('AK-101', 'Handguard'),
('AK-101', 'Platform'),
('AK-101', 'Rear Sight'),
('AK-101', 'Grip'),
('AK-101', 'Stock'),
('AK-102', 'Magazine'),
('AK-102', 'Dust Cover'),
('AK-102', 'Muzzle'),
('AK-102', 'Handguard'),
('AK-102', 'Platform'),
('AK-102', 'Rear Sight'),
('AK-102', 'Grip'),
('AK-102', 'Stock'),
('AK-103', 'Magazine'),
('AK-103', 'Dust Cover'),
('AK-103', 'Muzzle'),
('AK-103', 'Handguard'),
('AK-103', 'Platform'),
('AK-103', 'Rear Sight'),
('AK-103', 'Grip'),
('AK-103', 'Stock'),
('AK-104', 'Magazine'),
('AK-104', 'Dust Cover'),
('AK-104', 'Muzzle'),
('AK-104', 'Handguard'),
('AK-104', 'Platform'),
('AK-104', 'Rear Sight'),
('AK-104', 'Grip'),
('AK-104', 'Stock'),
('AK-105', 'Magazine'),
('AK-105', 'Dust Cover'),
('AK-105', 'Muzzle'),
('AK-105', 'Handguard'),
('AK-105', 'Platform'),
('AK-105', 'Rear Sight'),
('AK-105', 'Grip'),
('AK-105', 'Stock'),
('AKS-74u', 'Magazine'),
('AKS-74u', 'Dust Cover'),
('AKS-74u', 'Muzzle'),
('AKS-74u', 'Handguard'),
('AKS-74u', 'Platform'),
('AKS-74u', 'Grip'),
('AKS-74', 'Magazine'),
('AKS-74', 'Dust Cover'),
('AKS-74', 'Muzzle'),
('AKS-74', 'Handguard'),
('AKS-74', 'Platform'),
('AKS-74', 'Rear Sight'),
('AKS-74', 'Grip'),
('AKS-74', 'Stock'),
('AKS-74uB', 'Magazine'),
('AKS-74uB', 'Dust Cover'),
('AKS-74uB', 'Muzzle'),
('AKS-74uB', 'Handguard'),
('AKS-74uB', 'Platform'),
('AKS-74uB', 'Grip'),
('M4A1 Carbine', 'Handguard'),
('M4A1 Carbine', 'Front Sight'),
('M4A1 Carbine', 'Rear Sight'),
('M4A1 Carbine', 'Buffer Tube'),
('M4A1 Carbine', 'Grip'),
('M4A1 Carbine', 'Stock'),
('M4A1 Carbine', 'Magazine'),
('M4A1 Carbine', 'Charging Handle'),
('M4A1 Carbine', 'Barrel'),
('M4A1 Carbine', 'Upper Receiver'),
('M4A1 Carbine', 'Muzzle'),
('M4A1 Carbine', 'Platform'),
('ADAR 2-15', 'Barrel'),
('ADAR 2-15', 'Front Sight'),
('ADAR 2-15', 'Magazine'),
('ADAR 2-15', 'Platform'),
('ADAR 2-15', 'Upper Receiver'),
('ADAR 2-15', 'Handguard'),
('ADAR 2-15', 'Stock'),
('ADAR 2-15', 'Charging Handle'),
('ADAR 2-15', 'Muzzle'),
('MDR 5.56', 'Barrel'),
('MDR 5.56', 'Grip'),
('MDR 5.56', 'Magazine'),
('MDR 5.56', 'Platform'),
('MDR 5.56', 'Handguard'),
('MDR 5.56', 'Muzzle'),
('MDR 7.62', 'Barrel'),
('MDR 7.62', 'Grip'),
('MDR 7.62', 'Magazine'),
('MDR 7.62', 'Platform'),
('MDR 7.62', 'Handguard'),
('MDR 7.62', 'Muzzle');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_attachment_seeker`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapon_attachment_seeker` (
  `WEP_NAME` varchar(64) DEFAULT NULL,
  `PART_NAME` varchar(64) DEFAULT NULL,
  `ATTC_NAME` varchar(64) DEFAULT NULL,
  `DEF` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapon_attachment_seeker`:
--   `WEP_NAME`
--       `weapons` -> `model`
--   `PART_NAME`
--       `weapon_structure` -> `PART`
--   `ATTC_NAME`
--       `attachments` -> `NAME`
--

--
-- Dumping data for table `weapon_attachment_seeker`
--

INSERT INTO `weapon_attachment_seeker` (`WEP_NAME`, `PART_NAME`, `ATTC_NAME`, `DEF`) VALUES
('AKS-74uB', 'Platform', 'AKS-74uB', 1),
('AKS-74uB', 'Grip', '6P1 SB.8V', 1),
('AKS-74uB', 'Handguard', '6P26 Sb.6', 1),
('AKS-74uB', 'Stock', '6P26 Sb.5', 1),
('AKS-74uB', 'Magazine', '6L20', 1),
('AKS-74uB', 'Dust Cover', 'AKS-74uB Dust Cover', 1),
('AKS-74uB', 'Muzzle', 'PBS-4', 1),
('AK-74M', 'Magazine', '6L20', 1),
('AK-74M', 'Dust Cover', '6P34 0-1', 1),
('AK-74M', 'Muzzle', '6P20 0-20', 1),
('AK-74M', 'Handguard', '6P20 Sb.9', 1),
('AK-74M', 'Platform', 'AK-74M', 1),
('AK-74M', 'Rear Sight', '6P20 Sb.2', 1),
('AK-74M', 'Grip', '6P1 Sb.8', 1),
('AK-74M', 'Stock', '6P34 Sb.15', 1),
('M4A1 Carbine', 'Handguard', 'M4 Handguard', 1),
('M4A1 Carbine', 'Front Sight', 'M4 Front Sight', 1),
('M4A1 Carbine', 'Rear Sight', 'M4 Carry Handle', 1),
('M4A1 Carbine', 'Grip', 'Colt A2', 1),
('M4A1 Carbine', 'Stock', 'HS M4SS', 1),
('M4A1 Carbine', 'Magazine', 'STANAG', 1),
('M4A1 Carbine', 'Charging Handle', 'Colt Charging Handle', 1),
('M4A1 Carbine', 'Barrel', 'AR-15 370mm', 1),
('M4A1 Carbine', 'Upper Receiver', 'M4A1 Upper Receiver', 1),
('M4A1 Carbine', 'Muzzle', 'USGI A2', 1),
('M4A1 Carbine', 'Platform', 'M4A1', 1),
('ADAR 2-15', 'Barrel', 'AR-15 406mm', 1),
('ADAR 2-15', 'Stock', 'ADAR 2-15 Wooden Stock', 1),
('ADAR 2-15', 'Platform', 'ADAR 2-15', 1),
('ADAR 2-15', 'Upper Receiver', 'ADAR 2-15 Upper Receiver', 1),
('ADAR 2-15', 'Handguard', 'ADAR 2-15 Wood', 1),
('ADAR 2-15', 'Charging Handle', 'Colt Charging Handle', 1),
('ADAR 2-15', 'Front Sight', 'M4 Front Sight', 1);

-- --------------------------------------------------------

--
-- Table structure for table `weapon_defaults`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapon_defaults` (
  `ATTACHMENT` varchar(64) NOT NULL,
  `WEAPON` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapon_defaults`:
--   `ATTACHMENT`
--       `attachments` -> `NAME`
--   `WEAPON`
--       `weapons` -> `model`
--

--
-- Dumping data for table `weapon_defaults`
--

INSERT INTO `weapon_defaults` (`ATTACHMENT`, `WEAPON`) VALUES
('6P20 Sb.9', 'AK-74M'),
('6L23', 'AK-74M'),
('6P1 Sb.8', 'AK-74M'),
('6P20 0-20', 'AK-74M'),
('6P20 Sb.2', 'AK-74M'),
('6P34 0-1', 'AK-74M'),
('6P34 Sb.15', 'AK-74M'),
('AK-74M', 'AK-74M'),
('AKS-74uB', 'AKS-74uB'),
('PBS-4', 'AKS-74uB'),
('6P26 Sb.5', 'AKS-74uB'),
('6P26 Sb.6', 'AKS-74uB'),
('6L20', 'AKS-74uB'),
('6P1 SB.8V', 'AKS-74uB'),
('AKS-74uB', 'AKS-74uB'),
('AKS-74uB Dust Cover', 'AKS-74uB'),
('AR-15 370mm', 'M4A1 Carbine'),
('Colt Carbine', 'M4A1 Carbine'),
('Colt A2', 'M4A1 Carbine'),
('Colt Charging Handle', 'M4A1 Carbine'),
('HS M4SS', 'M4A1 Carbine'),
('M4 Carry Handle', 'M4A1 Carbine'),
('M4A1', 'M4A1 Carbine'),
('M4A1 Upper Receiver', 'M4A1 Carbine'),
('STANAG', 'M4A1 Carbine'),
('USGI A2', 'M4A1 Carbine'),
('M4A1 Upper Receiver', 'M4A1 Carbine'),
('M4 Front Sight', 'M4A1 Carbine'),
('M4 Handguard', 'M4A1 Carbine'),
('M4A1 Upper Receiver', 'M4A1 Carbine'),
('ADAR 2-15', 'ADAR 2-15'),
('ADAR 2-15 Upper Receiver', 'ADAR 2-15'),
('ADAR 2-15 Wooden Stock', 'ADAR 2-15'),
('ADAR 2-15 Wood', 'ADAR 2-15'),
('AR-15 406mm', 'ADAR 2-15'),
('PMAG 10 GEN M3', 'ADAR 2-15'),
('M4 Front Sight', 'ADAR 2-15'),
('ADAR 2-15 Flash Hider', 'ADAR 2-15'),
('6P34 Sb.15', 'AK-74M');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_structure`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapon_structure` (
  `PART` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapon_structure`:
--

--
-- Dumping data for table `weapon_structure`
--

INSERT INTO `weapon_structure` (`PART`) VALUES
('Barrel'),
('Bipod'),
('Bolt Assembly'),
('Buffer Tube'),
('Charging Handle'),
('Chassis'),
('Dust Cover'),
('Flashlight'),
('Foregrip'),
('Front Sight'),
('Gas Tube'),
('Grip'),
('Hammer'),
('Handguard'),
('Laser'),
('Lower Handguard'),
('Magazine'),
('Muzzle'),
('Optic'),
('Pistol Slide'),
('Platform'),
('Rear Sight'),
('Stock'),
('Trigger'),
('Upper Handguard'),
('Upper Receiver');

-- --------------------------------------------------------

--
-- Table structure for table `weapon_type`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `weapon_type` (
  `TYPE` varchar(64) NOT NULL,
  `SHORT` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `weapon_type`:
--

--
-- Dumping data for table `weapon_type`
--

INSERT INTO `weapon_type` (`TYPE`, `SHORT`) VALUES
('Assault Carbine', 'CAR'),
('Assault Rifle', 'AR'),
('Bolt Action Rifle', 'SR'),
('Designated Marksman Rifle', 'DMR'),
('Heavy Machine Gun', 'HMG'),
('Light Machine Gun', 'LMG'),
('Personal Defense Weapon', 'PDW'),
('Pistol', 'PST'),
('Revolver', 'REV'),
('Shotgun', 'SG'),
('Submachine Gun', 'SMG');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--
-- Creation: Jun 03, 2024 at 12:14 AM
--

CREATE TABLE `wishlist` (
  `EMAIL` varchar(256) DEFAULT NULL,
  `NAME` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `wishlist`:
--   `NAME`
--       `weapons` -> `model`
--

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`EMAIL`, `NAME`) VALUES
('nabeelmirza79@gmail.com', 'ADAR 2-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ammunition`
--
ALTER TABLE `ammunition`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `ammunition_variants`
--
ALTER TABLE `ammunition_variants`
  ADD PRIMARY KEY (`caliber`,`name`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`NAME`),
  ADD KEY `PART` (`PART`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`model`),
  ADD KEY `ammunition` (`ammunition`),
  ADD KEY `TYPE` (`TYPE`);

--
-- Indexes for table `weapon_attachment`
--
ALTER TABLE `weapon_attachment`
  ADD KEY `WEP_NAME` (`WEP_NAME`),
  ADD KEY `PART_NAME` (`PART_NAME`);

--
-- Indexes for table `weapon_attachments_seeker`
--
ALTER TABLE `weapon_attachments_seeker`
  ADD KEY `WEP_NAME` (`WEP_NAME`),
  ADD KEY `PART_NAME` (`PART_NAME`);

--
-- Indexes for table `weapon_attachment_seeker`
--
ALTER TABLE `weapon_attachment_seeker`
  ADD KEY `WEP_NAME` (`WEP_NAME`),
  ADD KEY `PART_NAME` (`PART_NAME`),
  ADD KEY `ATTC_NAME` (`ATTC_NAME`);

--
-- Indexes for table `weapon_defaults`
--
ALTER TABLE `weapon_defaults`
  ADD KEY `ATTACHMENT` (`ATTACHMENT`),
  ADD KEY `WEAPON` (`WEAPON`);

--
-- Indexes for table `weapon_structure`
--
ALTER TABLE `weapon_structure`
  ADD PRIMARY KEY (`PART`);

--
-- Indexes for table `weapon_type`
--
ALTER TABLE `weapon_type`
  ADD PRIMARY KEY (`TYPE`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `NAME` (`NAME`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ammunition_variants`
--
ALTER TABLE `ammunition_variants`
  ADD CONSTRAINT `ammunition_variants_ibfk_1` FOREIGN KEY (`caliber`) REFERENCES `ammunition` (`NAME`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`PART`) REFERENCES `weapon_structure` (`PART`);

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`ammunition`) REFERENCES `ammunition` (`NAME`),
  ADD CONSTRAINT `weapons_ibfk_2` FOREIGN KEY (`TYPE`) REFERENCES `weapon_type` (`TYPE`);

--
-- Constraints for table `weapon_attachment`
--
ALTER TABLE `weapon_attachment`
  ADD CONSTRAINT `weapon_attachment_ibfk_1` FOREIGN KEY (`WEP_NAME`) REFERENCES `weapons` (`model`),
  ADD CONSTRAINT `weapon_attachment_ibfk_2` FOREIGN KEY (`PART_NAME`) REFERENCES `attachments` (`NAME`);

--
-- Constraints for table `weapon_attachments_seeker`
--
ALTER TABLE `weapon_attachments_seeker`
  ADD CONSTRAINT `weapon_attachments_seeker_ibfk_1` FOREIGN KEY (`WEP_NAME`) REFERENCES `weapons` (`model`),
  ADD CONSTRAINT `weapon_attachments_seeker_ibfk_2` FOREIGN KEY (`PART_NAME`) REFERENCES `weapon_structure` (`PART`);

--
-- Constraints for table `weapon_attachment_seeker`
--
ALTER TABLE `weapon_attachment_seeker`
  ADD CONSTRAINT `weapon_attachment_seeker_ibfk_1` FOREIGN KEY (`WEP_NAME`) REFERENCES `weapons` (`model`),
  ADD CONSTRAINT `weapon_attachment_seeker_ibfk_2` FOREIGN KEY (`PART_NAME`) REFERENCES `weapon_structure` (`PART`),
  ADD CONSTRAINT `weapon_attachment_seeker_ibfk_3` FOREIGN KEY (`ATTC_NAME`) REFERENCES `attachments` (`NAME`);

--
-- Constraints for table `weapon_defaults`
--
ALTER TABLE `weapon_defaults`
  ADD CONSTRAINT `weapon_defaults_ibfk_1` FOREIGN KEY (`ATTACHMENT`) REFERENCES `attachments` (`NAME`),
  ADD CONSTRAINT `weapon_defaults_ibfk_2` FOREIGN KEY (`WEAPON`) REFERENCES `weapons` (`model`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`NAME`) REFERENCES `weapons` (`model`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
