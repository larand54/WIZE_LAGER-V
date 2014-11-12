//
// This unit is just a jotter for me to keep an easily accessible
// record of SQL code I create in stored procedures etc.
//
// There should be no executable code in this unit.
//
//

unit SQLStuff;

interface

//
// The contents of the following comment block is a series of
// SQL statements that will create all the stored procedures
// and anything else needed in the underlying database.
//
// It does NOT create anything that existed in the database
// before I received it. Instead, it creates the new things
// I have added.
//
// An easy way to run this SQL code is to copy (to the clipboard)
// the comment block (without the enclosing curly brackets),
// copy it into the MS SQL Server Query Analyser, and then
// execute it.
//
// The SQL code is barely commented as it should be self-
// explanatory.
//

{

----------------------------------------------------------------
--
--   vida_UserRights
--
----------------------------------------------------------------
--
-- This stored procedure obtains user access rights and returns
-- them in OUTPUT parameters.
-- This procedure does not return a data set.
-- If the specified user name / password is invalid (does not
-- exist in the users table for example) the parameters are
-- set to zero which is interpretted by the Vida application
-- as no access rights, which makes sense.
--
----------------------------------------------------------------

DROP PROCEDURE vida_UserRights
GO

CREATE PROCEDURE vida_UserRights
@UserName  varchar(80),
@UserPswd  varchar(80),
@Company   int OUTPUT,
@InvSec    int OUTPUT,
@IntOrdSec int OUTPUT,
@ProdSec   int OUTPUT,
@CliSec    int OUTPUT,
@OrdSec    int OUTPUT,
@BaseSec   int OUTPUT

AS

SELECT  @InvSec    = InventorySec,
        @IntOrdSec = InternalOrderSec,
        @ProdSec   = ProductSec,
        @CliSec    = ClientSec,
        @OrdSec    = OrderSec,
        @BaseSec   = BaseData,
        @Company   = CompanyNo

From	  Users U, LogCompany L

WHERE	  UserName   = @UserName
  AND   Password   = @UserPswd
  AND   L.ClientNo = U.CompanyNo

GO


----------------------------------------------------------------
--
--   vida_SawmillLoadOrderList
--
----------------------------------------------------------------
--
-- This stored procedure obtains load orders for one supplier.
-- This data is returned in a data set.
-- The procedure was written for the Load Orders grid.
-- Column names are changed to match the purpose to which the
-- data is used in the Supplier Load Order grid, to make it
-- easier (more meaningful) to follow data flow.
--
----------------------------------------------------------------

DROP PROCEDURE vida_SawmillLoadOrderList
GO

CREATE PROCEDURE vida_SawmillLoadOrderList

@Supplier int

AS

SELECT SP.SupplierNo              AS Supplier,         -- Integer
       SP.ShippingPlanStatus,       --AS Status,           -- Integer
       SP.ShippingPlanNo           AS LONumber,         -- Integer
       SP.PackageCode              AS PKGCode,          -- Char 10
       SP.ProductDescription       AS Product,          -- Char 100
       SP.LengthDescription        AS Length,           -- Char 100
       SP.StartETDYearWeek         AS FromWeek,         -- Integer
       SP.EndETDYearWeek           AS ToWeek,           -- Integer
       SP.NoOfUnits                AS Volume,           -- Float
       SP.SupplierShipPlanObjectNo, -- AS UNIQUE_RECORD_NO, -- Integer
       SP.ShowInGrid,                                   -- SmallInt
       LI.LogicalInventoryName     AS ShipTo,           -- VarChar 50
       Od.OrderNoText              AS OrderNo,          -- VarChar 20
       UN.VolumeUnitName           AS UnitName,         -- VarChar 10
       Cy.CityName                 AS Destination,      -- VarChar 50
       Cr.CarrierName              AS Vessel,           -- Char 50
       Vg.ETD                      AS ETD               -- DateTime

FROM
            dbo.SupplierShippingPlan SP
       LEFT OUTER JOIN dbo.Orders                Od  ON  SP.OrderNo                 = Od.OrderNo -- not all suppliershippingplans have a related Orders
            INNER JOIN dbo.UnitName              UN  ON  SP.VolumeUnitNo            = UN.VolumeUnit_No
       LEFT OUTER JOIN dbo.LogicalInventoryPoint LI  ON  LI.LogicalInventoryPointNo = SP.ShipToInvPointNo -- not all suppliershippingplan have a shiptoInvPointno declared
       LEFT OUTER JOIN dbo.City                  Cy  ON  SP.DestinationNo           = Cy.CityNo -- LINK TO LOAD ORDER DESTINATIONno not all suppliershippingplan have a Destination declared
       LEFT OUTER JOIN dbo.Booking               Bk

            INNER JOIN dbo.BookingConnection     BC  ON  Bk.BookingNo               = BC.BookingNo
            INNER JOIN dbo.VoyageDestination     VD  ON  Bk.VoyageNo                = VD.VoyageNo
                                                    AND Bk.DestinationNo           = VD.DestinationNo

            INNER JOIN dbo.Voyage                Vg  ON  VD.VoyageNo                = Vg.VoyageNo
            INNER JOIN dbo.Carrier               Cr  ON  Vg.CarrierNo               = Cr.CarrierNo
                                                     ON  SP.ShippingPlanNo          = BC.ShippingPlanNo

WHERE  SP.SupplierNo         =  @Supplier
  AND  SP.ShowInGrid         =  0
  AND  SP.SHIPTYPE           =  1 -- SHIPTYPE 1 MEAN THE RECORD IS PURCHASE TYPE (VIDA WOOD PURCHASE OF SAWMILLS)
  AND  SP.SHIPPINGPLANSTATUS <> 0 -- DO NOT SHOW STATUS 0 "PRELIMINARY"

GO


----------------------------------------------------------------
--
--   vida_Suppliers
--
----------------------------------------------------------------
--
-- This stored procedure obtains a list of supplier names & IDs.
-- This data is returned in a data set.
-- The procedure was written for the Load Orders grid.
--
----------------------------------------------------------------

DROP PROCEDURE vida_Suppliers
GO

CREATE PROCEDURE vida_Suppliers

AS

SELECT C.ClientNo,     -- Integer
       C.ClientName    -- VarChar 80

FROM   dbo.Client        C,
       dbo.ClientRole    R

WHERE  C.ClientNo = R.ClientNo
  AND  R.RoleType = 9

GO


}

implementation



end.




