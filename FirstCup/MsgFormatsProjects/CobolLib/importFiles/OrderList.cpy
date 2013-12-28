       01  OrderList.
           05  StartPoint                  PIC X.
           05  InvoiceCount                PIC 99   COMP SYNC.
           05  ItemCount                   PIC 99   COMP.
           05  Inventory.
               10  Item                    OCCURS 10.
                   15  ItemType            PIC X.
                   15  ItemCode            PIC XX.
                   15  Description         PIC X(50).
                   15  Price               PIC 9(4)   COMP-3.
                   15  Category            PIC X(50).
           05  SaleList.
               10  Invoice                 OCCURS 1 TO 50 TIMES
                                           DEPENDING ON InvoiceCount.
                   15  InvoiceHeader.
                       20  CustomerInitial PIC X       OCCURS 2.
                       20  Surname         PIC X(50).
                   15  Items.
                       20  Item            OCCURS 1 TO 50 TIMES
                                           DEPENDING ON ItemCount.
                           25  ItemCode    PIC XX.
                           25  Quantity    PIC 9(9)   COMP-5.
           05  PointOfSaleType             PIC X.
           05  PointOfSale1.
	         10  TillNumber              PIC 9(9)   COMP.
	         10  FILLER                  PIC X(47).
           05  PointOfSale2                REDEFINES PointOfSale1.
               10  SalesPersonInitial      PIC X.
               10  SalesPersonSurname      PIC X(50).