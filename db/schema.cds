namespace my.company.sales;

using { cuid, managed } from '@sap/cds/common';

entity Customers : cuid, managed {
  name        : String(100);
  region      : String(50);
  email       : String(100);
  loyaltyTier : String(20); // e.g., Silver, Gold, Platinum
}

entity Products : cuid, managed {
  name        : String(100);
  category    : String(50);
  price       : Decimal(15,2);
  currency    : String(5);
  stockQty    : Integer;
}

entity SalesOrders : cuid, managed {
  customer    : Association to Customers;
  product     : Association to Products;
  quantity    : Integer;
  unitPrice   : Decimal(15,2);
  discountPct : Decimal(5,2);
  orderDate   : Date;
  region      : String(50);
  netAmount   : Decimal(15,2) @Core.Computed; // to be calculated via procedure
}
