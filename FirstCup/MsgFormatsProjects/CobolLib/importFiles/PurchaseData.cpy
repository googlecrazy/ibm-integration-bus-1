       01  PurchaseData.
           03  InvoiceCount                PIC 99   COMP.
           03  ItemCount                   PIC 99   COMP.
           03  SaleList                    OCCURS 1.
               05  Invoice                 OCCURS 1 TO 50 TIMES
                                           DEPENDING ON InvoiceCount.
                   07  CustomerInitial     PIC X       OCCURS 2.
                   07  Surname             PIC X(50).
                   07  Items               OCCURS 1 TO 50 TIMES
                                           DEPENDING ON ItemCount.
                       09  ItemType        PIC X.
                       09  Item1.
                           11  itemCode        PIC XX.
                           11  Description     PIC X(50).
                           11  Price           PIC S9(4)   COMP-3.
                           11  Category        PIC X(50).
                           11  Quantity        PIC 9(9)   COMP-5.
                       09  Item2 REDEFINES Item1.
                           11  ItemCode        PIC XX.
                           11  Colour          PIC X(50).
                           11  Price           PIC S9(4)   COMP-3.
                           11  Quantity        PIC 9(9)   COMP-5.
                           11  FILLER          PIC X(50).
           03  Trailer.
	           05  TotalQuantity           PIC 9(9)   COMP.
                 05  PointOfSaleType         PIC X.

