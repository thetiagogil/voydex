-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_availability
-- Scope: version-group-specific (frlg)
-- Pokemon: 354 (VG-wide)
INSERT INTO
    reference.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (1577, 1, 100, 7, NULL, 'native'),
    -- #002 Ivysaur
    (1578, 2, 200, 7, NULL, 'native'),
    -- #003 Venusaur
    (1579, 3, 300, 7, NULL, 'native'),
    -- #004 Charmander
    (1580, 4, 400, 7, NULL, 'native'),
    -- #005 Charmeleon
    (1581, 5, 500, 7, NULL, 'native'),
    -- #006 Charizard
    (1582, 6, 600, 7, NULL, 'native'),
    -- #007 Squirtle
    (1583, 7, 700, 7, NULL, 'native'),
    -- #008 Wartortle
    (1584, 8, 800, 7, NULL, 'native'),
    -- #009 Blastoise
    (1585, 9, 900, 7, NULL, 'native'),
    -- #010 Caterpie
    (1586, 10, 1000, 7, NULL, 'native'),
    -- #011 Metapod
    (1587, 11, 1100, 7, NULL, 'native'),
    -- #012 Butterfree
    (1588, 12, 1200, 7, NULL, 'native'),
    -- #013 Weedle
    (1589, 13, 1300, 7, NULL, 'native'),
    -- #014 Kakuna
    (1590, 14, 1400, 7, NULL, 'native'),
    -- #015 Beedrill
    (1591, 15, 1500, 7, NULL, 'native'),
    -- #016 Pidgey
    (1592, 16, 1600, 7, NULL, 'native'),
    -- #017 Pidgeotto
    (1593, 17, 1700, 7, NULL, 'native'),
    -- #018 Pidgeot
    (1594, 18, 1800, 7, NULL, 'native'),
    -- #019 Rattata
    (1595, 19, 1900, 7, NULL, 'native'),
    -- #020 Raticate
    (1596, 20, 2000, 7, NULL, 'native'),
    -- #021 Spearow
    (1597, 21, 2100, 7, NULL, 'native'),
    -- #022 Fearow
    (1598, 22, 2200, 7, NULL, 'native'),
    -- #023 Ekans
    (1599, 23, 2300, 7, NULL, 'native'),
    -- #024 Arbok
    (1600, 24, 2400, 7, NULL, 'native'),
    -- #025 Pikachu
    (1601, 25, 2500, 7, NULL, 'native'),
    -- #026 Raichu
    (1602, 26, 2600, 7, NULL, 'native'),
    -- #029 Nidoran♀
    (1603, 29, 2900, 7, NULL, 'native'),
    -- #030 Nidorina
    (1604, 30, 3000, 7, NULL, 'native'),
    -- #031 Nidoqueen
    (1605, 31, 3100, 7, NULL, 'native'),
    -- #032 Nidoran♂
    (1606, 32, 3200, 7, NULL, 'native'),
    -- #033 Nidorino
    (1607, 33, 3300, 7, NULL, 'native'),
    -- #034 Nidoking
    (1608, 34, 3400, 7, NULL, 'native'),
    -- #035 Clefairy
    (1609, 35, 3500, 7, NULL, 'native'),
    -- #036 Clefable
    (1610, 36, 3600, 7, NULL, 'native'),
    -- #039 Jigglypuff
    (1611, 39, 3900, 7, NULL, 'native'),
    -- #040 Wigglytuff
    (1612, 40, 4000, 7, NULL, 'native'),
    -- #041 Zubat
    (1613, 41, 4100, 7, NULL, 'native'),
    -- #042 Golbat
    (1614, 42, 4200, 7, NULL, 'native'),
    -- #046 Paras
    (1615, 46, 4600, 7, NULL, 'native'),
    -- #047 Parasect
    (1616, 47, 4700, 7, NULL, 'native'),
    -- #048 Venonat
    (1617, 48, 4800, 7, NULL, 'native'),
    -- #049 Venomoth
    (1618, 49, 4900, 7, NULL, 'native'),
    -- #050 Diglett
    (1619, 50, 5000, 7, NULL, 'native'),
    -- #051 Dugtrio
    (1620, 51, 5100, 7, NULL, 'native'),
    -- #054 Psyduck
    (1621, 54, 5400, 7, NULL, 'native'),
    -- #055 Golduck
    (1622, 55, 5500, 7, NULL, 'native'),
    -- #060 Poliwag
    (1623, 60, 6000, 7, NULL, 'native'),
    -- #061 Poliwhirl
    (1624, 61, 6100, 7, NULL, 'native'),
    -- #062 Poliwrath
    (1625, 62, 6200, 7, NULL, 'native'),
    -- #063 Abra
    (1626, 63, 6300, 7, NULL, 'native'),
    -- #064 Kadabra
    (1627, 64, 6400, 7, NULL, 'native'),
    -- #065 Alakazam
    (1628, 65, 6500, 7, NULL, 'native'),
    -- #066 Machop
    (1629, 66, 6600, 7, NULL, 'native'),
    -- #067 Machoke
    (1630, 67, 6700, 7, NULL, 'native'),
    -- #068 Machamp
    (1631, 68, 6800, 7, NULL, 'native'),
    -- #072 Tentacool
    (1632, 72, 7200, 7, NULL, 'native'),
    -- #073 Tentacruel
    (1633, 73, 7300, 7, NULL, 'native'),
    -- #074 Geodude
    (1634, 74, 7400, 7, NULL, 'native'),
    -- #075 Graveler
    (1635, 75, 7500, 7, NULL, 'native'),
    -- #076 Golem
    (1636, 76, 7600, 7, NULL, 'native'),
    -- #077 Ponyta
    (1637, 77, 7700, 7, NULL, 'native'),
    -- #078 Rapidash
    (1638, 78, 7800, 7, NULL, 'native'),
    -- #079 Slowpoke
    (1639, 79, 7900, 7, NULL, 'native'),
    -- #080 Slowbro
    (1640, 80, 8000, 7, NULL, 'native'),
    -- #081 Magnemite
    (1641, 81, 8100, 7, NULL, 'native'),
    -- #082 Magneton
    (1642, 82, 8200, 7, NULL, 'native'),
    -- #083 Farfetch
    (1643, 83, 8300, 7, NULL, 'native'),
    -- #084 Doduo
    (1644, 84, 8400, 7, NULL, 'native'),
    -- #085 Dodrio
    (1645, 85, 8500, 7, NULL, 'native'),
    -- #086 Seel
    (1646, 86, 8600, 7, NULL, 'native'),
    -- #087 Dewgong
    (1647, 87, 8700, 7, NULL, 'native'),
    -- #088 Grimer
    (1648, 88, 8800, 7, NULL, 'native'),
    -- #089 Muk
    (1649, 89, 8900, 7, NULL, 'native'),
    -- #090 Shellder
    (1650, 90, 9000, 7, NULL, 'native'),
    -- #091 Cloyster
    (1651, 91, 9100, 7, NULL, 'native'),
    -- #092 Gastly
    (1652, 92, 9200, 7, NULL, 'native'),
    -- #093 Haunter
    (1653, 93, 9300, 7, NULL, 'native'),
    -- #094 Gengar
    (1654, 94, 9400, 7, NULL, 'native'),
    -- #095 Onix
    (1655, 95, 9500, 7, NULL, 'native'),
    -- #096 Drowzee
    (1656, 96, 9600, 7, NULL, 'native'),
    -- #097 Hypno
    (1657, 97, 9700, 7, NULL, 'native'),
    -- #098 Krabby
    (1658, 98, 9800, 7, NULL, 'native'),
    -- #099 Kingler
    (1659, 99, 9900, 7, NULL, 'native'),
    -- #100 Voltorb
    (1660, 100, 10000, 7, NULL, 'native'),
    -- #101 Electrode
    (1661, 101, 10100, 7, NULL, 'native'),
    -- #102 Exeggcute
    (1662, 102, 10200, 7, NULL, 'native'),
    -- #103 Exeggutor
    (1663, 103, 10300, 7, NULL, 'native'),
    -- #104 Cubone
    (1664, 104, 10400, 7, NULL, 'native'),
    -- #105 Marowak
    (1665, 105, 10500, 7, NULL, 'native'),
    -- #106 Hitmonlee
    (1666, 106, 10600, 7, NULL, 'native'),
    -- #107 Hitmonchan
    (1667, 107, 10700, 7, NULL, 'native'),
    -- #108 Lickitung
    (1668, 108, 10800, 7, NULL, 'native'),
    -- #109 Koffing
    (1669, 109, 10900, 7, NULL, 'native'),
    -- #110 Weezing
    (1670, 110, 11000, 7, NULL, 'native'),
    -- #111 Rhyhorn
    (1671, 111, 11100, 7, NULL, 'native'),
    -- #112 Rhydon
    (1672, 112, 11200, 7, NULL, 'native'),
    -- #113 Chansey
    (1673, 113, 11300, 7, NULL, 'native'),
    -- #114 Tangela
    (1674, 114, 11400, 7, NULL, 'native'),
    -- #115 Kangaskhan
    (1675, 115, 11500, 7, NULL, 'native'),
    -- #116 Horsea
    (1676, 116, 11600, 7, NULL, 'native'),
    -- #117 Seadra
    (1677, 117, 11700, 7, NULL, 'native'),
    -- #118 Goldeen
    (1678, 118, 11800, 7, NULL, 'native'),
    -- #119 Seaking
    (1679, 119, 11900, 7, NULL, 'native'),
    -- #120 Staryu
    (1680, 120, 12000, 7, NULL, 'native'),
    -- #121 Starmie
    (1681, 121, 12100, 7, NULL, 'native'),
    -- #122 Mr. Mime
    (1682, 122, 12200, 7, NULL, 'native'),
    -- #124 Jynx
    (1683, 124, 12400, 7, NULL, 'native'),
    -- #128 Tauros
    (1684, 128, 12800, 7, NULL, 'native'),
    -- #129 Magikarp
    (1685, 129, 12900, 7, NULL, 'native'),
    -- #130 Gyarados
    (1686, 130, 13000, 7, NULL, 'native'),
    -- #131 Lapras
    (1687, 131, 13100, 7, NULL, 'native'),
    -- #132 Ditto
    (1688, 132, 13200, 7, NULL, 'native'),
    -- #133 Eevee
    (1689, 133, 13300, 7, NULL, 'native'),
    -- #134 Vaporeon
    (1690, 134, 13400, 7, NULL, 'native'),
    -- #135 Jolteon
    (1691, 135, 13500, 7, NULL, 'native'),
    -- #136 Flareon
    (1692, 136, 13600, 7, NULL, 'native'),
    -- #137 Porygon
    (1693, 137, 13700, 7, NULL, 'native'),
    -- #138 Omanyte
    (1694, 138, 13800, 7, NULL, 'native'),
    -- #139 Omastar
    (1695, 139, 13900, 7, NULL, 'native'),
    -- #140 Kabuto
    (1696, 140, 14000, 7, NULL, 'native'),
    -- #141 Kabutops
    (1697, 141, 14100, 7, NULL, 'native'),
    -- #142 Aerodactyl
    (1698, 142, 14200, 7, NULL, 'native'),
    -- #143 Snorlax
    (1699, 143, 14300, 7, NULL, 'native'),
    -- #144 Articuno
    (1700, 144, 14400, 7, NULL, 'native'),
    -- #145 Zapdos
    (1701, 145, 14500, 7, NULL, 'native'),
    -- #146 Moltres
    (1702, 146, 14600, 7, NULL, 'native'),
    -- #147 Dratini
    (1703, 147, 14700, 7, NULL, 'native'),
    -- #148 Dragonair
    (1704, 148, 14800, 7, NULL, 'native'),
    -- #149 Dragonite
    (1705, 149, 14900, 7, NULL, 'native'),
    -- #150 Mewtwo
    (1706, 150, 15000, 7, NULL, 'native'),
    -- #151 Mew
    (1707, 151, 15100, 7, NULL, 'native'),
    -- #152 Chikorita
    (1708, 152, 15200, 7, NULL, 'native'),
    -- #153 Bayleef
    (1709, 153, 15300, 7, NULL, 'native'),
    -- #154 Meganium
    (1710, 154, 15400, 7, NULL, 'native'),
    -- #155 Cyndaquil
    (1711, 155, 15500, 7, NULL, 'native'),
    -- #156 Quilava
    (1712, 156, 15600, 7, NULL, 'native'),
    -- #157 Typhlosion
    (1713, 157, 15700, 7, NULL, 'native'),
    -- #158 Totodile
    (1714, 158, 15800, 7, NULL, 'native'),
    -- #159 Croconaw
    (1715, 159, 15900, 7, NULL, 'native'),
    -- #160 Feraligatr
    (1716, 160, 16000, 7, NULL, 'native'),
    -- #161 Sentret
    (1717, 161, 16100, 7, NULL, 'native'),
    -- #162 Furret
    (1718, 162, 16200, 7, NULL, 'native'),
    -- #163 Hoothoot
    (1719, 163, 16300, 7, NULL, 'native'),
    -- #164 Noctowl
    (1720, 164, 16400, 7, NULL, 'native'),
    -- #165 Ledyba
    (1721, 165, 16500, 7, NULL, 'native'),
    -- #166 Ledian
    (1722, 166, 16600, 7, NULL, 'native'),
    -- #167 Spinarak
    (1723, 167, 16700, 7, NULL, 'native'),
    -- #168 Ariados
    (1724, 168, 16800, 7, NULL, 'native'),
    -- #169 Crobat
    (1725, 169, 16900, 7, NULL, 'native'),
    -- #170 Chinchou
    (1726, 170, 17000, 7, NULL, 'native'),
    -- #171 Lanturn
    (1727, 171, 17100, 7, NULL, 'native'),
    -- #172 Pichu
    (1728, 172, 17200, 7, NULL, 'native'),
    -- #173 Cleffa
    (1729, 173, 17300, 7, NULL, 'native'),
    -- #174 Igglybuff
    (1730, 174, 17400, 7, NULL, 'native'),
    -- #175 Togepi
    (1731, 175, 17500, 7, NULL, 'native'),
    -- #176 Togetic
    (1732, 176, 17600, 7, NULL, 'native'),
    -- #177 Natu
    (1733, 177, 17700, 7, NULL, 'native'),
    -- #178 Xatu
    (1734, 178, 17800, 7, NULL, 'native'),
    -- #179 Mareep
    (1735, 179, 17900, 7, NULL, 'native'),
    -- #180 Flaaffy
    (1736, 180, 18000, 7, NULL, 'native'),
    -- #181 Ampharos
    (1737, 181, 18100, 7, NULL, 'native'),
    -- #182 Bellossom
    (1738, 182, 18200, 7, NULL, 'native'),
    -- #183 Marill
    (1739, 183, 18300, 7, NULL, 'native'),
    -- #184 Azumarill
    (1740, 184, 18400, 7, NULL, 'native'),
    -- #185 Sudowoodo
    (1741, 185, 18500, 7, NULL, 'native'),
    -- #186 Politoed
    (1742, 186, 18600, 7, NULL, 'native'),
    -- #187 Hoppip
    (1743, 187, 18700, 7, NULL, 'native'),
    -- #188 Skiploom
    (1744, 188, 18800, 7, NULL, 'native'),
    -- #189 Jumpluff
    (1745, 189, 18900, 7, NULL, 'native'),
    -- #190 Aipom
    (1746, 190, 19000, 7, NULL, 'native'),
    -- #191 Sunkern
    (1747, 191, 19100, 7, NULL, 'native'),
    -- #192 Sunflora
    (1748, 192, 19200, 7, NULL, 'native'),
    -- #193 Yanma
    (1749, 193, 19300, 7, NULL, 'native'),
    -- #194 Wooper
    (1750, 194, 19400, 7, NULL, 'native'),
    -- #195 Quagsire
    (1751, 195, 19500, 7, NULL, 'native'),
    -- #196 Espeon
    (1752, 196, 19600, 7, NULL, 'native'),
    -- #197 Umbreon
    (1753, 197, 19700, 7, NULL, 'native'),
    -- #198 Murkrow
    (1754, 198, 19800, 7, NULL, 'native'),
    -- #199 Slowking
    (1755, 199, 19900, 7, NULL, 'native'),
    -- #200 Misdreavus
    (1756, 200, 20000, 7, NULL, 'native'),
    -- #201 Unown
    (1757, 201, 20100, 7, NULL, 'native'),
    -- #202 Wobbuffet
    (1758, 202, 20200, 7, NULL, 'native'),
    -- #203 Girafarig
    (1759, 203, 20300, 7, NULL, 'native'),
    -- #204 Pineco
    (1760, 204, 20400, 7, NULL, 'native'),
    -- #205 Forretress
    (1761, 205, 20500, 7, NULL, 'native'),
    -- #206 Dunsparce
    (1762, 206, 20600, 7, NULL, 'native'),
    -- #207 Gligar
    (1763, 207, 20700, 7, NULL, 'native'),
    -- #208 Steelix
    (1764, 208, 20800, 7, NULL, 'native'),
    -- #209 Snubbull
    (1765, 209, 20900, 7, NULL, 'native'),
    -- #210 Granbull
    (1766, 210, 21000, 7, NULL, 'native'),
    -- #211 Qwilfish
    (1767, 211, 21100, 7, NULL, 'native'),
    -- #212 Scizor
    (1768, 212, 21200, 7, NULL, 'native'),
    -- #213 Shuckle
    (1769, 213, 21300, 7, NULL, 'native'),
    -- #214 Heracross
    (1770, 214, 21400, 7, NULL, 'native'),
    -- #215 Sneasel
    (1771, 215, 21500, 7, NULL, 'native'),
    -- #216 Teddiursa
    (1772, 216, 21600, 7, NULL, 'native'),
    -- #217 Ursaring
    (1773, 217, 21700, 7, NULL, 'native'),
    -- #218 Slugma
    (1774, 218, 21800, 7, NULL, 'native'),
    -- #219 Magcargo
    (1775, 219, 21900, 7, NULL, 'native'),
    -- #220 Swinub
    (1776, 220, 22000, 7, NULL, 'native'),
    -- #221 Piloswine
    (1777, 221, 22100, 7, NULL, 'native'),
    -- #222 Corsola
    (1778, 222, 22200, 7, NULL, 'native'),
    -- #223 Remoraid
    (1779, 223, 22300, 7, NULL, 'native'),
    -- #224 Octillery
    (1780, 224, 22400, 7, NULL, 'native'),
    -- #225 Delibird
    (1781, 225, 22500, 7, NULL, 'native'),
    -- #226 Mantine
    (1782, 226, 22600, 7, NULL, 'native'),
    -- #227 Skarmory
    (1783, 227, 22700, 7, NULL, 'native'),
    -- #228 Houndour
    (1784, 228, 22800, 7, NULL, 'native'),
    -- #229 Houndoom
    (1785, 229, 22900, 7, NULL, 'native'),
    -- #230 Kingdra
    (1786, 230, 23000, 7, NULL, 'native'),
    -- #231 Phanpy
    (1787, 231, 23100, 7, NULL, 'native'),
    -- #232 Donphan
    (1788, 232, 23200, 7, NULL, 'native'),
    -- #233 Porygon2
    (1789, 233, 23300, 7, NULL, 'native'),
    -- #234 Stantler
    (1790, 234, 23400, 7, NULL, 'native'),
    -- #235 Smeargle
    (1791, 235, 23500, 7, NULL, 'native'),
    -- #236 Tyrogue
    (1792, 236, 23600, 7, NULL, 'native'),
    -- #237 Hitmontop
    (1793, 237, 23700, 7, NULL, 'native'),
    -- #238 Smoochum
    (1794, 238, 23800, 7, NULL, 'native'),
    -- #239 Elekid
    (1795, 239, 23900, 7, NULL, 'native'),
    -- #240 Magby
    (1796, 240, 24000, 7, NULL, 'native'),
    -- #241 Miltank
    (1797, 241, 24100, 7, NULL, 'native'),
    -- #242 Blissey
    (1798, 242, 24200, 7, NULL, 'native'),
    -- #243 Raikou
    (1799, 243, 24300, 7, NULL, 'native'),
    -- #244 Entei
    (1800, 244, 24400, 7, NULL, 'native'),
    -- #245 Suicune
    (1801, 245, 24500, 7, NULL, 'native'),
    -- #246 Larvitar
    (1802, 246, 24600, 7, NULL, 'native'),
    -- #247 Pupitar
    (1803, 247, 24700, 7, NULL, 'native'),
    -- #248 Tyranitar
    (1804, 248, 24800, 7, NULL, 'native'),
    -- #249 Lugia
    (1805, 249, 24900, 7, NULL, 'native'),
    -- #250 Ho-Oh
    (1806, 250, 25000, 7, NULL, 'native'),
    -- #251 Celebi
    (1807, 251, 25100, 7, NULL, 'native'),
    -- #252 Treecko
    (1808, 252, 25200, 7, NULL, 'native'),
    -- #253 Grovyle
    (1809, 253, 25300, 7, NULL, 'native'),
    -- #254 Sceptile
    (1810, 254, 25400, 7, NULL, 'native'),
    -- #255 Torchic
    (1811, 255, 25500, 7, NULL, 'native'),
    -- #256 Combusken
    (1812, 256, 25600, 7, NULL, 'native'),
    -- #257 Blaziken
    (1813, 257, 25700, 7, NULL, 'native'),
    -- #258 Mudkip
    (1814, 258, 25800, 7, NULL, 'native'),
    -- #259 Marshtomp
    (1815, 259, 25900, 7, NULL, 'native'),
    -- #260 Swampert
    (1816, 260, 26000, 7, NULL, 'native'),
    -- #261 Poochyena
    (1817, 261, 26100, 7, NULL, 'native'),
    -- #262 Mightyena
    (1818, 262, 26200, 7, NULL, 'native'),
    -- #263 Zigzagoon
    (1819, 263, 26300, 7, NULL, 'native'),
    -- #264 Linoone
    (1820, 264, 26400, 7, NULL, 'native'),
    -- #265 Wurmple
    (1821, 265, 26500, 7, NULL, 'native'),
    -- #266 Silcoon
    (1822, 266, 26600, 7, NULL, 'native'),
    -- #267 Beautifly
    (1823, 267, 26700, 7, NULL, 'native'),
    -- #268 Cascoon
    (1824, 268, 26800, 7, NULL, 'native'),
    -- #269 Dustox
    (1825, 269, 26900, 7, NULL, 'native'),
    -- #276 Taillow
    (1826, 276, 27600, 7, NULL, 'native'),
    -- #277 Swellow
    (1827, 277, 27700, 7, NULL, 'native'),
    -- #278 Wingull
    (1828, 278, 27800, 7, NULL, 'native'),
    -- #279 Pelipper
    (1829, 279, 27900, 7, NULL, 'native'),
    -- #280 Ralts
    (1830, 280, 28000, 7, NULL, 'native'),
    -- #281 Kirlia
    (1831, 281, 28100, 7, NULL, 'native'),
    -- #282 Gardevoir
    (1832, 282, 28200, 7, NULL, 'native'),
    -- #283 Surskit
    (1833, 283, 28300, 7, NULL, 'native'),
    -- #284 Masquerain
    (1834, 284, 28400, 7, NULL, 'native'),
    -- #285 Shroomish
    (1835, 285, 28500, 7, NULL, 'native'),
    -- #286 Breloom
    (1836, 286, 28600, 7, NULL, 'native'),
    -- #287 Slakoth
    (1837, 287, 28700, 7, NULL, 'native'),
    -- #288 Vigoroth
    (1838, 288, 28800, 7, NULL, 'native'),
    -- #289 Slaking
    (1839, 289, 28900, 7, NULL, 'native'),
    -- #290 Nincada
    (1840, 290, 29000, 7, NULL, 'native'),
    -- #291 Ninjask
    (1841, 291, 29100, 7, NULL, 'native'),
    -- #292 Shedinja
    (1842, 292, 29200, 7, NULL, 'native'),
    -- #293 Whismur
    (1843, 293, 29300, 7, NULL, 'native'),
    -- #294 Loudred
    (1844, 294, 29400, 7, NULL, 'native'),
    -- #295 Exploud
    (1845, 295, 29500, 7, NULL, 'native'),
    -- #296 Makuhita
    (1846, 296, 29600, 7, NULL, 'native'),
    -- #297 Hariyama
    (1847, 297, 29700, 7, NULL, 'native'),
    -- #298 Azurill
    (1848, 298, 29800, 7, NULL, 'native'),
    -- #299 Nosepass
    (1849, 299, 29900, 7, NULL, 'native'),
    -- #300 Skitty
    (1850, 300, 30000, 7, NULL, 'native'),
    -- #301 Delcatty
    (1851, 301, 30100, 7, NULL, 'native'),
    -- #304 Aron
    (1852, 304, 30400, 7, NULL, 'native'),
    -- #305 Lairon
    (1853, 305, 30500, 7, NULL, 'native'),
    -- #306 Aggron
    (1854, 306, 30600, 7, NULL, 'native'),
    -- #307 Meditite
    (1855, 307, 30700, 7, NULL, 'native'),
    -- #308 Medicham
    (1856, 308, 30800, 7, NULL, 'native'),
    -- #309 Electrike
    (1857, 309, 30900, 7, NULL, 'native'),
    -- #310 Manectric
    (1858, 310, 31000, 7, NULL, 'native'),
    -- #311 Plusle
    (1859, 311, 31100, 7, NULL, 'native'),
    -- #312 Minun
    (1860, 312, 31200, 7, NULL, 'native'),
    -- #313 Volbeat
    (1861, 313, 31300, 7, NULL, 'native'),
    -- #314 Illumise
    (1862, 314, 31400, 7, NULL, 'native'),
    -- #315 Roselia
    (1863, 315, 31500, 7, NULL, 'native'),
    -- #316 Gulpin
    (1864, 316, 31600, 7, NULL, 'native'),
    -- #317 Swalot
    (1865, 317, 31700, 7, NULL, 'native'),
    -- #318 Carvanha
    (1866, 318, 31800, 7, NULL, 'native'),
    -- #319 Sharpedo
    (1867, 319, 31900, 7, NULL, 'native'),
    -- #320 Wailmer
    (1868, 320, 32000, 7, NULL, 'native'),
    -- #321 Wailord
    (1869, 321, 32100, 7, NULL, 'native'),
    -- #322 Numel
    (1870, 322, 32200, 7, NULL, 'native'),
    -- #323 Camerupt
    (1871, 323, 32300, 7, NULL, 'native'),
    -- #324 Torkoal
    (1872, 324, 32400, 7, NULL, 'native'),
    -- #325 Spoink
    (1873, 325, 32500, 7, NULL, 'native'),
    -- #326 Grumpig
    (1874, 326, 32600, 7, NULL, 'native'),
    -- #327 Spinda
    (1875, 327, 32700, 7, NULL, 'native'),
    -- #328 Trapinch
    (1876, 328, 32800, 7, NULL, 'native'),
    -- #329 Vibrava
    (1877, 329, 32900, 7, NULL, 'native'),
    -- #330 Flygon
    (1878, 330, 33000, 7, NULL, 'native'),
    -- #331 Cacnea
    (1879, 331, 33100, 7, NULL, 'native'),
    -- #332 Cacturne
    (1880, 332, 33200, 7, NULL, 'native'),
    -- #333 Swablu
    (1881, 333, 33300, 7, NULL, 'native'),
    -- #334 Altaria
    (1882, 334, 33400, 7, NULL, 'native'),
    -- #339 Barboach
    (1883, 339, 33900, 7, NULL, 'native'),
    -- #340 Whiscash
    (1884, 340, 34000, 7, NULL, 'native'),
    -- #341 Corphish
    (1885, 341, 34100, 7, NULL, 'native'),
    -- #342 Crawdaunt
    (1886, 342, 34200, 7, NULL, 'native'),
    -- #343 Baltoy
    (1887, 343, 34300, 7, NULL, 'native'),
    -- #344 Claydol
    (1888, 344, 34400, 7, NULL, 'native'),
    -- #345 Lileep
    (1889, 345, 34500, 7, NULL, 'native'),
    -- #346 Cradily
    (1890, 346, 34600, 7, NULL, 'native'),
    -- #347 Anorith
    (1891, 347, 34700, 7, NULL, 'native'),
    -- #348 Armaldo
    (1892, 348, 34800, 7, NULL, 'native'),
    -- #349 Feebas
    (1893, 349, 34900, 7, NULL, 'native'),
    -- #350 Milotic
    (1894, 350, 35000, 7, NULL, 'native'),
    -- #351 Castform
    (1895, 351, 35100, 7, NULL, 'native'),
    -- #352 Kecleon
    (1896, 352, 35200, 7, NULL, 'native'),
    -- #353 Shuppet
    (1897, 353, 35300, 7, NULL, 'native'),
    -- #354 Banette
    (1898, 354, 35400, 7, NULL, 'native'),
    -- #355 Duskull
    (1899, 355, 35500, 7, NULL, 'native'),
    -- #356 Dusclops
    (1900, 356, 35600, 7, NULL, 'native'),
    -- #357 Tropius
    (1901, 357, 35700, 7, NULL, 'native'),
    -- #358 Chimecho
    (1902, 358, 35800, 7, NULL, 'native'),
    -- #359 Absol
    (1903, 359, 35900, 7, NULL, 'native'),
    -- #360 Wynaut
    (1904, 360, 36000, 7, NULL, 'native'),
    -- #361 Snorunt
    (1905, 361, 36100, 7, NULL, 'native'),
    -- #362 Glalie
    (1906, 362, 36200, 7, NULL, 'native'),
    -- #363 Spheal
    (1907, 363, 36300, 7, NULL, 'native'),
    -- #364 Sealeo
    (1908, 364, 36400, 7, NULL, 'native'),
    -- #365 Walrein
    (1909, 365, 36500, 7, NULL, 'native'),
    -- #366 Clamperl
    (1910, 366, 36600, 7, NULL, 'native'),
    -- #367 Huntail
    (1911, 367, 36700, 7, NULL, 'native'),
    -- #368 Gorebyss
    (1912, 368, 36800, 7, NULL, 'native'),
    -- #369 Relicanth
    (1913, 369, 36900, 7, NULL, 'native'),
    -- #370 Luvdisc
    (1914, 370, 37000, 7, NULL, 'native'),
    -- #371 Bagon
    (1915, 371, 37100, 7, NULL, 'native'),
    -- #372 Shelgon
    (1916, 372, 37200, 7, NULL, 'native'),
    -- #373 Salamence
    (1917, 373, 37300, 7, NULL, 'native'),
    -- #374 Beldum
    (1918, 374, 37400, 7, NULL, 'native'),
    -- #375 Metang
    (1919, 375, 37500, 7, NULL, 'native'),
    -- #376 Metagross
    (1920, 376, 37600, 7, NULL, 'native'),
    -- #377 Regirock
    (1921, 377, 37700, 7, NULL, 'native'),
    -- #378 Regice
    (1922, 378, 37800, 7, NULL, 'native'),
    -- #379 Registeel
    (1923, 379, 37900, 7, NULL, 'native'),
    -- #380 Latias
    (1924, 380, 38000, 7, NULL, 'native'),
    -- #381 Latios
    (1925, 381, 38100, 7, NULL, 'native'),
    -- #382 Kyogre
    (1926, 382, 38200, 7, NULL, 'native'),
    -- #383 Groudon
    (1927, 383, 38300, 7, NULL, 'native'),
    -- #384 Rayquaza
    (1928, 384, 38400, 7, NULL, 'native'),
    -- #385 Jirachi
    (1929, 385, 38500, 7, NULL, 'native'),
    -- #386 Deoxys
    (1930, 386, 38600, 7, NULL, 'native');