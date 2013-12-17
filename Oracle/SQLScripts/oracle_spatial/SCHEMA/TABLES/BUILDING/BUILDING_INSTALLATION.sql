-- BUILDING_INSTALLATION.sql
--
-- Authors:     Prof. Dr. Thomas H. Kolbe <thomas.kolbe@tum.de>
--              Zhihang Yao <zhihang.yao@tum.de>
--              Claus Nagel <cnagel@virtualcitysystems.de>
--              Philipp Willkomm <pwillkomm@moss.de>
--              Gerhard K�nig <gerhard.koenig@tu-berlin.de>
--              Alexandra Lorenz <di.alex.lorenz@googlemail.com>
--
-- Copyright:   (c) 2012-2014  Chair of Geoinformatics,
--                             Technische Universit�t M�nchen, Germany
--                             http://www.gis.bv.tum.de
--
--              (c) 2007-2012  Institute for Geodesy and Geoinformation Science,
--                             Technische Universit�t Berlin, Germany
--                             http://www.igg.tu-berlin.de
--
--              This skript is free software under the LGPL Version 2.1.
--              See the GNU Lesser General Public License at
--              http://www.gnu.org/copyleft/lgpl.html
--              for more details.
-------------------------------------------------------------------------------
-- About:
--
--
-------------------------------------------------------------------------------
--
-- ChangeLog:
--
-- Version | Date       | Description                               | Author
-- 3.0.0     2013-12-06   new version for 3DCityDB V3                 ZYao
--                                                                    TKol
--                                                                    CNag
--                                                                    PWil
-- 2.0.0     2007-11-23   release version                             TKol
--                                                                    GKoe
--                                                                    CNag
--                                                                    ALor
--
CREATE TABLE BUILDING_INSTALLATION
(
ID NUMBER NOT NULL,
IS_EXTERNAL NUMBER(1, 0),
CLASS VARCHAR2(256),
CLASS_CODESPACE VARCHAR2(4000),
FUNCTION VARCHAR2(1000),
FUNCTION_CODESPACE VARCHAR2(4000),
USAGE VARCHAR2(1000),
USAGE_CODESPACE VARCHAR2(4000),
BUILDING_ID NUMBER,
ROOM_ID NUMBER,
LOD2_IMPLICIT_REP_ID NUMBER,
LOD2_IMPLICIT_REF_POINT MDSYS.SDO_GEOMETRY,
LOD2_IMPLICIT_TRANSPORMATION VARCHAR2(1000),
LOD3_IMPLICIT_REP_ID NUMBER,
LOD3_IMPLICIT_REF_POINT MDSYS.SDO_GEOMETRY,
LOD3_IMPLICIT_TRANSFORMATION VARCHAR2(1000),
LOD4_IMPLICIT_REP_ID NUMBER,
LOD4_IMPLICIT_REF_POINT MDSYS.SDO_GEOMETRY,
LOD4_IMPLICIT_TRANFORMATION VARCHAR2(1000),
LOD2_BREP_ID NUMBER,
LOD3_BREP_ID NUMBER,
LOD4_BREP_ID NUMBER,
LOD2_OTHER_GEOM MDSYS.SDO_GEOMETRY,
LOD3_OTHER_GEOM MDSYS.SDO_GEOMETRY,
LOD4_OTHER_GEOM MDSYS.SDO_GEOMETRY 
)
;
ALTER TABLE BUILDING_INSTALLATION
ADD CONSTRAINT BUILDING_INSTALLATION_PK PRIMARY KEY
(
ID
)
 ENABLE
;