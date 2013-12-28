       01  CustomerAddress.
           03  Addresses  OCCURS 5.
               05  AddressString            PIC X(162).
               05  AddressParts             REDEFINES AddressString.
                   07  HouseNumber          PIC 9(3).
                   07  Street               PIC X(50).
                   07  City                 PIC X(50).
                   07  County               PIC X(50).
                   07  Postcode             PIC X(8).
                   07  Country              PIC X.
                       88  England          VALUE "E".
                       88  Northern-Ireland VALUE "N".
                       88  Scotland         VALUE "S".
                       88  Wales            VALUE "W".