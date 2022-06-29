--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/MarieAillene1586773.lua
	Script Purpose	:	Waypoint Path for MarieAillene1586773.lua
	Script Author	:	Rylec
	Script Date	:	11-30-2019 03:16:50 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SetPlayerProximityFunction(NPC, 10, "InRange")
	waypoints(NPC)
end

function InRange(NPC, Spawn)
        local rand = math.random(1,3)
        
        if rand==1 then
               Say(NPC, "Coming through!")
        end        

        if rand==2 then
               Say(NPC, "Bligget! Teehehehehe")
        end   

        if rand==3 then
               Say(NPC, "On your left!")
        end   
end

function hailed(NPC, Spawn)
        Say(NPC, "Try to follow! Teehehehehe")  --text created by Rylec, not on Live
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 238.52, -38.97, -1461.15, 7, 0)
	MovementLoopAddLocation(NPC, 211.72, -38.97, -1516.05, 7, 0)
	MovementLoopAddLocation(NPC, 226.79, -38.97, -1582.01, 7, 0)
	MovementLoopAddLocation(NPC, 313.59, -38.97, -1669.82, 7, 0)
	MovementLoopAddLocation(NPC, 363.44, -38.97, -1699.25, 7, 0)
	MovementLoopAddLocation(NPC, 422.91, -37.93, -1703.86, 7, 0)
	MovementLoopAddLocation(NPC, 448.06, -37.85, -1687.93, 7, 0)
	MovementLoopAddLocation(NPC, 533.57, -37.95, -1625.49, 7, 0)
	MovementLoopAddLocation(NPC, 542.61, -38.97, -1576.73, 7, 0)
	MovementLoopAddLocation(NPC, 541.16, -38.97, -1550.53, 7, 0)
	MovementLoopAddLocation(NPC, 558.79, -38.97, -1497.49, 7, 0)
	MovementLoopAddLocation(NPC, 527.9, -38.97, -1436.96, 7, 0)
	MovementLoopAddLocation(NPC, 540.17, -38.97, -1398.03, 7, 0)
	MovementLoopAddLocation(NPC, 551.59, -38.97, -1383.39, 7, 0)
	MovementLoopAddLocation(NPC, 547.13, -38.97, -1371.77, 7, 0)
	MovementLoopAddLocation(NPC, 509.1, -38.97, -1343.73, 7, 0)
	MovementLoopAddLocation(NPC, 467.19, -38.97, -1331.54, 7, 0)
	MovementLoopAddLocation(NPC, 460.06, -38.97, -1327.97, 7, 0)
	MovementLoopAddLocation(NPC, 454.49, -38.97, -1314.77, 7, 0)
	MovementLoopAddLocation(NPC, 455.77, -38.97, -1282.2, 7, 0)
	MovementLoopAddLocation(NPC, 462.71, -38.97, -1255.58, 7, 0)
	MovementLoopAddLocation(NPC, 458.79, -38.97, -1243.49, 7, 0)
	MovementLoopAddLocation(NPC, 442.41, -38.97, -1235.52, 7, 0)
	MovementLoopAddLocation(NPC, 433.99, -38.97, -1245.53, 7, 0)
	MovementLoopAddLocation(NPC, 432.41, -38.97, -1257.39, 7, 0)
	MovementLoopAddLocation(NPC, 436.64, -38.97, -1268.16, 7, 0)
	MovementLoopAddLocation(NPC, 445.07, -38.97, -1272.87, 7, 0)
	MovementLoopAddLocation(NPC, 453.84, -38.97, -1265.27, 7, 0)
	MovementLoopAddLocation(NPC, 458.56, -38.97, -1252.33, 7, 0)
	MovementLoopAddLocation(NPC, 449.49, -38.97, -1243.75, 7, 0)
	MovementLoopAddLocation(NPC, 442.12, -38.97, -1242.08, 7, 0)
	MovementLoopAddLocation(NPC, 438.12, -38.97, -1254.11, 7, 0)
	MovementLoopAddLocation(NPC, 440.43, -38.97, -1263.69, 7, 0)
	MovementLoopAddLocation(NPC, 452.88, -38.97, -1254.37, 7, 0)
	MovementLoopAddLocation(NPC, 456.02, -38.97, -1221.7, 7, 0)
	MovementLoopAddLocation(NPC, 442.97, -38.97, -1188.42, 7, 0)
	MovementLoopAddLocation(NPC, 405.29, -38.97, -1185.92, 7, 0)
	MovementLoopAddLocation(NPC, 390.92, -38.97, -1206.57, 7, 0)
	MovementLoopAddLocation(NPC, 400.6, -38.97, -1230.3, 7, 0)
	MovementLoopAddLocation(NPC, 415.11, -38.97, -1244.77, 7, 0)
	MovementLoopAddLocation(NPC, 421.16, -38.97, -1254.62, 7, 0)
	MovementLoopAddLocation(NPC, 417.94, -38.97, -1268.71, 7, 0)
	MovementLoopAddLocation(NPC, 401.73, -38.97, -1286.5, 7, 0)
	MovementLoopAddLocation(NPC, 386.94, -38.97, -1294.12, 7, 0)
	MovementLoopAddLocation(NPC, 372.27, -38.97, -1298.04, 7, 0)
	MovementLoopAddLocation(NPC, 331.87, -38.97, -1298.33, 7, 0)
	MovementLoopAddLocation(NPC, 313.22, -38.97, -1295.72, 7, 0)
	MovementLoopAddLocation(NPC, 290.02, -38.97, -1287.21, 7, 0)
	MovementLoopAddLocation(NPC, 254.06, -38.97, -1294.94, 7, 0)
	MovementLoopAddLocation(NPC, 240.23, -38.97, -1303.42, 7, 0)
	MovementLoopAddLocation(NPC, 222.01, -38.97, -1303.59, 7, 0)
	MovementLoopAddLocation(NPC, 201.2, -38.97, -1289.85, 7, 0)
	MovementLoopAddLocation(NPC, 189.93, -38.97, -1272.02, 7, 0)
	MovementLoopAddLocation(NPC, 177.57, -38.97, -1267.13, 7, 0)
	MovementLoopAddLocation(NPC, 168.53, -38.97, -1268.8, 7, 0)
	MovementLoopAddLocation(NPC, 154.97, -38.97, -1295.69, 7, 0)
	MovementLoopAddLocation(NPC, 155.44, -38.97, -1320.05, 7, 0)
	MovementLoopAddLocation(NPC, 170.7, -38.97, -1339.62, 7, 0)
	MovementLoopAddLocation(NPC, 186.42, -38.97, -1344.94, 7, 0)
	MovementLoopAddLocation(NPC, 206.68, -38.97, -1340.09, 7, 0)
	MovementLoopAddLocation(NPC, 221.33, -38.97, -1328.7, 7, 0)
	MovementLoopAddLocation(NPC, 241.73, -38.97, -1318.21, 7, 0)
	MovementLoopAddLocation(NPC, 258.76, -38.97, -1322.71, 7, 0)
	MovementLoopAddLocation(NPC, 274.5, -38.97, -1339.93, 7, 0)
	MovementLoopAddLocation(NPC, 285.47, -38.97, -1363.35, 7, 0)
	MovementLoopAddLocation(NPC, 283.13, -38.97, -1389.9, 7, 0)
	MovementLoopAddLocation(NPC, 277.13, -38.97, -1406.39, 7, 0)
	MovementLoopAddLocation(NPC, 255.44, -38.97, -1416.97, 7, 0)
	MovementLoopAddLocation(NPC, 229.68, -38.97, -1418.18, 7, 0)
	MovementLoopAddLocation(NPC, 179.2, -38.97, -1432.92, 7, 0)
	MovementLoopAddLocation(NPC, 169.69, -38.97, -1441.86, 7, 0)
	MovementLoopAddLocation(NPC, 170.59, -38.97, -1451.74, 7, 0)
	MovementLoopAddLocation(NPC, 176.01, -38.97, -1456.54, 7, 0)
	MovementLoopAddLocation(NPC, 185.26, -38.97, -1455.07, 7, 0)
	MovementLoopAddLocation(NPC, 190.05, -38.97, -1446.17, 7, 0)
	MovementLoopAddLocation(NPC, 186.49, -38.97, -1439.44, 7, 0)
	MovementLoopAddLocation(NPC, 164.15, -38.97, -1430.15, 7, 0)
	MovementLoopAddLocation(NPC, 140.57, -38.97, -1413.53, 7, 0)
	MovementLoopAddLocation(NPC, 115.83, -38.97, -1382.41, 7, 0)
	MovementLoopAddLocation(NPC, 109.87, -38.97, -1362.25, 7, 0)
	MovementLoopAddLocation(NPC, 115.05, -38.97, -1333.81, 7, 0)
	MovementLoopAddLocation(NPC, 116.36, -38.97, -1322.76, 7, 0)
	MovementLoopAddLocation(NPC, 114.04, -38.97, -1314.74, 7, 0)
	MovementLoopAddLocation(NPC, 106.89, -38.97, -1312.86, 7, 0)
	MovementLoopAddLocation(NPC, 105.24, -38.97, -1320.15, 7, 0)
	MovementLoopAddLocation(NPC, 110.41, -38.97, -1321.65, 7, 0)
	MovementLoopAddLocation(NPC, 116.92, -38.97, -1317.69, 7, 0)
	MovementLoopAddLocation(NPC, 116.95, -38.97, -1306.36, 7, 0)
	MovementLoopAddLocation(NPC, 108.44, -38.97, -1298.04, 7, 0)
	MovementLoopAddLocation(NPC, 99.5, -38.97, -1298.12, 7, 0)
	MovementLoopAddLocation(NPC, 98.26, -38.97, -1304.38, 7, 0)
	MovementLoopAddLocation(NPC, 106.38, -38.97, -1304.61, 7, 0)
	MovementLoopAddLocation(NPC, 107.64, -38.97, -1294.13, 7, 0)
	MovementLoopAddLocation(NPC, 64.43, -38.97, -1268.21, 7, 0)
	MovementLoopAddLocation(NPC, 52.5, -38.97, -1264.16, 7, 0)
	MovementLoopAddLocation(NPC, 46.04, -38.97, -1264.32, 7, 0)
	MovementLoopAddLocation(NPC, 40.22, -38.97, -1270.19, 7, 0)
	MovementLoopAddLocation(NPC, 39.01, -38.97, -1276.34, 7, 0)
	MovementLoopAddLocation(NPC, 48.7, -38.97, -1285.99, 7, 0)
	MovementLoopAddLocation(NPC, 62.44, -38.97, -1290.03, 7, 0)
	MovementLoopAddLocation(NPC, 70.31, -38.97, -1284.11, 7, 0)
	MovementLoopAddLocation(NPC, 64.63, -38.97, -1273.66, 7, 0)
	MovementLoopAddLocation(NPC, 54.68, -38.97, -1268.77, 7, 0)
	MovementLoopAddLocation(NPC, 48.75, -38.97, -1270.88, 7, 0)
	MovementLoopAddLocation(NPC, 53.33, -38.97, -1286.17, 7, 0)
	MovementLoopAddLocation(NPC, 76.89, -38.97, -1307.4, 7, 0)
	MovementLoopAddLocation(NPC, 86.11, -38.97, -1350.29, 7, 0)
	MovementLoopAddLocation(NPC, 83.85, -38.97, -1399.21, 7, 0)
	MovementLoopAddLocation(NPC, 59.96, -38.97, -1432.55, 7, 0)
	MovementLoopAddLocation(NPC, 51.05, -38.97, -1456.3, 7, 0)
	MovementLoopAddLocation(NPC, 6.27, -38.97, -1533.54, 7, 0)
	MovementLoopAddLocation(NPC, 8.82, -38.97, -1554.05, 7, 0)
	MovementLoopAddLocation(NPC, 13.91, -38.97, -1560.75, 7, 0)
	MovementLoopAddLocation(NPC, 20.68, -38.97, -1562.97, 7, 0)
	MovementLoopAddLocation(NPC, 30.76, -38.97, -1556.21, 7, 0)
	MovementLoopAddLocation(NPC, 29.45, -38.97, -1541.71, 7, 0)
	MovementLoopAddLocation(NPC, 22.3, -38.97, -1533.52, 7, 0)
	MovementLoopAddLocation(NPC, 13.51, -38.97, -1536.18, 7, 0)
	MovementLoopAddLocation(NPC, 13.47, -38.97, -1579.77, 7, 0)
	MovementLoopAddLocation(NPC, 23.23, -38.97, -1638.15, 7, 0)
	MovementLoopAddLocation(NPC, 45.58, -38.97, -1684.54, 7, 0)
	MovementLoopAddLocation(NPC, 69.92, -38.97, -1716.39, 7, 0)
	MovementLoopAddLocation(NPC, 103.17, -38.97, -1731.1, 7, 0)
	MovementLoopAddLocation(NPC, 154.07, -38.97, -1721.51, 7, 0)
	MovementLoopAddLocation(NPC, 182.07, -38.97, -1701.99, 7, 0)
	MovementLoopAddLocation(NPC, 181.05, -38.97, -1676.04, 7, 0)
	MovementLoopAddLocation(NPC, 184.34, -38.97, -1660.32, 7, 0)
	MovementLoopAddLocation(NPC, 171.77, -38.97, -1634.66, 7, 0)
	MovementLoopAddLocation(NPC, 169.19, -38.97, -1605.49, 7, 0)
	MovementLoopAddLocation(NPC, 225.17, -38.97, -1509.86, 7, 0)
	MovementLoopAddLocation(NPC, 235.73, -38.97, -1498.65, 7, 0)
	MovementLoopAddLocation(NPC, 268.55, -38.97, -1498.38, 7, 0)
	MovementLoopAddLocation(NPC, 290.43, -38.97, -1491.67, 7, 0)
	MovementLoopAddLocation(NPC, 300.89, -38.97, -1480.07, 7, 0)
	MovementLoopAddLocation(NPC, 301.47, -38.97, -1465.12, 7, 0)
	MovementLoopAddLocation(NPC, 292.09, -38.97, -1453.76, 7, 0)
	MovementLoopAddLocation(NPC, 270.88, -38.97, -1450.23, 7, 0)
	MovementLoopAddLocation(NPC, 244.01, -38.97, -1458.23, 7, 0)
	MovementLoopAddLocation(NPC, 213.53, -38.97, -1514.57, 7, 0)
	MovementLoopAddLocation(NPC, 227.7, -38.97, -1580.56, 7, 0)
	MovementLoopAddLocation(NPC, 253.25, -38.97, -1609.21, 7, 0)
	MovementLoopAddLocation(NPC, 312.92, -38.97, -1667.34, 7, 0)
	MovementLoopAddLocation(NPC, 363.66, -38.97, -1697.93, 7, 0)
	MovementLoopAddLocation(NPC, 420.73, -37.96, -1704.33, 7, 0)
	MovementLoopAddLocation(NPC, 445.02, -37.88, -1689.06, 7, 0)
	MovementLoopAddLocation(NPC, 533.21, -37.93, -1626.36, 7, 0)
	MovementLoopAddLocation(NPC, 543.78, -38.97, -1578.31, 7, 0)
	MovementLoopAddLocation(NPC, 540.34, -38.97, -1551.75, 7, 0)
	MovementLoopAddLocation(NPC, 558.94, -38.97, -1498.44, 7, 0)
	MovementLoopAddLocation(NPC, 528.64, -38.97, -1436.05, 7, 0)
	MovementLoopAddLocation(NPC, 539.42, -38.97, -1398.82, 7, 0)
	MovementLoopAddLocation(NPC, 552.02, -38.97, -1384.51, 7, 0)
	MovementLoopAddLocation(NPC, 549.88, -38.97, -1375.29, 7, 0)
	MovementLoopAddLocation(NPC, 511.83, -38.97, -1344.22, 7, 0)
	MovementLoopAddLocation(NPC, 495.26, -38.97, -1337.16, 7, 0)
	MovementLoopAddLocation(NPC, 469.77, -38.97, -1333.94, 7, 0)
	MovementLoopAddLocation(NPC, 461.11, -38.97, -1328.39, 7, 0)
	MovementLoopAddLocation(NPC, 455.84, -38.97, -1316.94, 7, 0)
	MovementLoopAddLocation(NPC, 454.52, -38.97, -1282.3, 7, 0)
	MovementLoopAddLocation(NPC, 462.91, -38.97, -1256.52, 7, 0)
	MovementLoopAddLocation(NPC, 459.06, -38.97, -1243.66, 7, 0)
	MovementLoopAddLocation(NPC, 443.69, -38.97, -1236.43, 7, 0)
	MovementLoopAddLocation(NPC, 436.77, -38.97, -1243.76, 7, 0)
	MovementLoopAddLocation(NPC, 432.61, -38.97, -1257.16, 7, 0)
	MovementLoopAddLocation(NPC, 435.37, -38.97, -1268.88, 7, 0)
	MovementLoopAddLocation(NPC, 444.26, -38.97, -1273.73, 7, 0)
	MovementLoopAddLocation(NPC, 453.23, -38.97, -1264.44, 7, 0)
	MovementLoopAddLocation(NPC, 456.85, -38.97, -1253.91, 7, 0)
	MovementLoopAddLocation(NPC, 450.8, -38.97, -1244.46, 7, 0)
	MovementLoopAddLocation(NPC, 444.16, -38.97, -1241.85, 7, 0)
	MovementLoopAddLocation(NPC, 436.48, -38.97, -1251.7, 7, 0)
	MovementLoopAddLocation(NPC, 436.5, -38.97, -1261.43, 7, 0)
	MovementLoopAddLocation(NPC, 443.72, -38.97, -1265.35, 7, 0)
	MovementLoopAddLocation(NPC, 450.05, -38.97, -1258.69, 7, 0)
	MovementLoopAddLocation(NPC, 456.09, -38.97, -1223.13, 7, 0)
	MovementLoopAddLocation(NPC, 441.85, -38.97, -1188.75, 7, 0)
	MovementLoopAddLocation(NPC, 405.52, -38.97, -1184.57, 7, 0)
	MovementLoopAddLocation(NPC, 391.95, -38.97, -1205.71, 7, 0)
	MovementLoopAddLocation(NPC, 399.24, -38.97, -1227.6, 7, 0)
	MovementLoopAddLocation(NPC, 415.07, -38.97, -1247.05, 7, 0)
	MovementLoopAddLocation(NPC, 419.85, -38.97, -1254.8, 7, 0)
	MovementLoopAddLocation(NPC, 421.01, -38.97, -1266.75, 7, 0)
	MovementLoopAddLocation(NPC, 411.33, -38.97, -1280.53, 7, 0)
	MovementLoopAddLocation(NPC, 401.39, -38.97, -1286.66, 7, 0)
	MovementLoopAddLocation(NPC, 369.48, -38.97, -1298.13, 7, 0)
	MovementLoopAddLocation(NPC, 313.23, -38.97, -1294.79, 7, 0)
	MovementLoopAddLocation(NPC, 289.07, -38.97, -1288.8, 7, 0)
	MovementLoopAddLocation(NPC, 256.74, -38.97, -1292.98, 7, 0)
	MovementLoopAddLocation(NPC, 239.92, -38.97, -1303.64, 7, 0)
	MovementLoopAddLocation(NPC, 222.13, -38.97, -1305.45, 7, 0)
	MovementLoopAddLocation(NPC, 203.38, -38.97, -1290.64, 7, 0)
	MovementLoopAddLocation(NPC, 192.12, -38.97, -1274.67, 7, 0)
	MovementLoopAddLocation(NPC, 178.29, -38.97, -1268.86, 7, 0)
	MovementLoopAddLocation(NPC, 169.47, -38.97, -1270.1, 7, 0)
	MovementLoopAddLocation(NPC, 154.56, -38.97, -1294.27, 7, 0)
	MovementLoopAddLocation(NPC, 156.58, -38.97, -1319.26, 7, 0)
	MovementLoopAddLocation(NPC, 169.86, -38.97, -1338.35, 7, 0)
	MovementLoopAddLocation(NPC, 184.65, -38.97, -1345.15, 7, 0)
	MovementLoopAddLocation(NPC, 204.97, -38.97, -1340.52, 7, 0)
	MovementLoopAddLocation(NPC, 217.93, -38.97, -1329.48, 7, 0)
	MovementLoopAddLocation(NPC, 239.98, -38.97, -1320.31, 7, 0)
	MovementLoopAddLocation(NPC, 257.66, -38.97, -1322.77, 7, 0)
	MovementLoopAddLocation(NPC, 274.95, -38.97, -1338.75, 7, 0)
	MovementLoopAddLocation(NPC, 284.09, -38.97, -1363.41, 7, 0)
	MovementLoopAddLocation(NPC, 284.02, -38.97, -1388.98, 7, 0)
	MovementLoopAddLocation(NPC, 278.41, -38.97, -1404.98, 7, 0)
	MovementLoopAddLocation(NPC, 254.51, -38.97, -1415.56, 7, 0)
	MovementLoopAddLocation(NPC, 238.84, -38.97, -1417.43, 7, 0)
	MovementLoopAddLocation(NPC, 223.94, -38.97, -1420.76, 7, 0)
	MovementLoopAddLocation(NPC, 206.29, -38.97, -1427.62, 7, 0)
	MovementLoopAddLocation(NPC, 178.55, -38.97, -1432.2, 7, 0)
	MovementLoopAddLocation(NPC, 170.38, -38.97, -1442.15, 7, 0)
	MovementLoopAddLocation(NPC, 171.36, -38.97, -1450.21, 7, 0)
	MovementLoopAddLocation(NPC, 177.05, -38.97, -1454.62, 7, 0)
	MovementLoopAddLocation(NPC, 184.78, -38.97, -1454.78, 7, 0)
	MovementLoopAddLocation(NPC, 188.26, -38.97, -1447.04, 7, 0)
	MovementLoopAddLocation(NPC, 182.28, -38.97, -1436.92, 7, 0)
	MovementLoopAddLocation(NPC, 165.26, -38.97, -1431.78, 7, 0)
	MovementLoopAddLocation(NPC, 144.46, -38.97, -1417.55, 7, 0)
	MovementLoopAddLocation(NPC, 114.48, -38.97, -1382.55, 7, 0)
	MovementLoopAddLocation(NPC, 108.71, -38.97, -1363.48, 7, 0)
	MovementLoopAddLocation(NPC, 115.45, -38.97, -1335.06, 7, 0)
	MovementLoopAddLocation(NPC, 115.72, -38.97, -1322.19, 7, 0)
	MovementLoopAddLocation(NPC, 112.78, -38.97, -1315.47, 7, 0)
	MovementLoopAddLocation(NPC, 108.63, -38.97, -1314.61, 7, 0)
	MovementLoopAddLocation(NPC, 106.93, -38.97, -1318.27, 7, 0)
	MovementLoopAddLocation(NPC, 110.48, -38.97, -1320.48, 7, 0)
	MovementLoopAddLocation(NPC, 117.57, -38.97, -1315.71, 7, 0)
	MovementLoopAddLocation(NPC, 119.65, -38.97, -1305.23, 7, 0)
	MovementLoopAddLocation(NPC, 105.49, -38.97, -1296.21, 7, 0)
	MovementLoopAddLocation(NPC, 99.47, -38.97, -1298.61, 7, 0)
	MovementLoopAddLocation(NPC, 100.17, -38.97, -1301.9, 7, 0)
	MovementLoopAddLocation(NPC, 104.31, -38.97, -1302.97, 7, 0)
	MovementLoopAddLocation(NPC, 108.71, -38.97, -1297.79, 7, 0)
	MovementLoopAddLocation(NPC, 65.65, -38.97, -1269.89, 7, 0)
	MovementLoopAddLocation(NPC, 52.83, -38.97, -1265.1, 7, 0)
	MovementLoopAddLocation(NPC, 45.17, -38.97, -1264.5, 7, 0)
	MovementLoopAddLocation(NPC, 38.96, -38.97, -1270.2, 7, 0)
	MovementLoopAddLocation(NPC, 38.01, -38.97, -1276.87, 7, 0)
	MovementLoopAddLocation(NPC, 46.14, -38.97, -1285.52, 7, 0)
	MovementLoopAddLocation(NPC, 61.92, -38.97, -1288.29, 7, 0)
	MovementLoopAddLocation(NPC, 69.58, -38.97, -1283.77, 7, 0)
	MovementLoopAddLocation(NPC, 64.03, -38.97, -1272.46, 7, 0)
	MovementLoopAddLocation(NPC, 54.21, -38.97, -1267.91, 7, 0)
	MovementLoopAddLocation(NPC, 47.8, -38.97, -1271.53, 7, 0)
	MovementLoopAddLocation(NPC, 53.46, -38.97, -1285.33, 7, 0)
	MovementLoopAddLocation(NPC, 75.51, -38.97, -1306.68, 7, 0)
	MovementLoopAddLocation(NPC, 83.4, -38.97, -1337.28, 7, 0)
	MovementLoopAddLocation(NPC, 87.58, -38.97, -1351.34, 7, 0)
	MovementLoopAddLocation(NPC, 82.58, -38.97, -1400.84, 7, 0)
	MovementLoopAddLocation(NPC, 60.52, -38.97, -1431.13, 7, 0)
	MovementLoopAddLocation(NPC, 7.19, -38.97, -1534.23, 7, 0)
	MovementLoopAddLocation(NPC, 8.5, -38.97, -1554.97, 7, 0)
	MovementLoopAddLocation(NPC, 13.68, -38.97, -1561.9, 7, 0)
	MovementLoopAddLocation(NPC, 22.33, -38.97, -1563.69, 7, 0)
	MovementLoopAddLocation(NPC, 30.72, -38.97, -1556.06, 7, 0)
	MovementLoopAddLocation(NPC, 27.9, -38.97, -1542.49, 7, 0)
	MovementLoopAddLocation(NPC, 21.2, -38.97, -1534.08, 7, 0)
	MovementLoopAddLocation(NPC, 13.08, -38.97, -1535.7, 7, 0)
	MovementLoopAddLocation(NPC, 9.43, -38.97, -1545.68, 7, 0)
	MovementLoopAddLocation(NPC, 11.98, -38.97, -1557.8, 7, 0)
	MovementLoopAddLocation(NPC, 24.1, -38.97, -1636.83, 7, 0)
	MovementLoopAddLocation(NPC, 44.82, -38.97, -1684.86, 7, 0)
	MovementLoopAddLocation(NPC, 70.15, -38.97, -1716.21, 7, 0)
	MovementLoopAddLocation(NPC, 104.14, -38.97, -1731.99, 7, 0)
	MovementLoopAddLocation(NPC, 155.77, -38.97, -1722.88, 7, 0)
	MovementLoopAddLocation(NPC, 181.87, -38.97, -1700.19, 7, 0)
	MovementLoopAddLocation(NPC, 181.89, -38.97, -1677.34, 7, 0)
	MovementLoopAddLocation(NPC, 185.28, -38.97, -1660.79, 7, 0)
	MovementLoopAddLocation(NPC, 170.25, -38.97, -1635.43, 7, 0)
	MovementLoopAddLocation(NPC, 171.25, -38.97, -1604.82, 7, 0)
	MovementLoopAddLocation(NPC, 188.77, -38.97, -1565.13, 7, 0)
	MovementLoopAddLocation(NPC, 224.84, -38.97, -1509.74, 7, 0)
	MovementLoopAddLocation(NPC, 235.03, -38.97, -1500.19, 7, 0)
	MovementLoopAddLocation(NPC, 250.16, -38.97, -1496.38, 7, 0)
	MovementLoopAddLocation(NPC, 270.38, -38.97, -1497.3, 7, 0)
	MovementLoopAddLocation(NPC, 289.56, -38.97, -1491.89, 7, 0)
	MovementLoopAddLocation(NPC, 302.19, -38.97, -1480.23, 7, 0)
	MovementLoopAddLocation(NPC, 302.81, -38.97, -1464.91, 7, 0)
	MovementLoopAddLocation(NPC, 289.88, -38.97, -1454.27, 7, 0)
	MovementLoopAddLocation(NPC, 270.93, -38.97, -1450.68, 7, 0)
	MovementLoopAddLocation(NPC, 245.64, -38.97, -1456.59, 7, 0)
end