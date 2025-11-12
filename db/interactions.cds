
using {
  

    cuid,
    managed
} from '@sap/cds/common';

context  app.interactions{


    type BusinessKey : String(10);
type Price       : Decimal(10, 2);
type Text        : String(1024);

entity Headers : cuid, managed {
    items   : Composition of many Items
                  on items.interaction = $self;
    partner : BusinessKey;

};

entity Items : cuid {
    interaction : Association to Headers;
    text        : localized Text;
    date        : DateTime;
   
    price       : Price;

};
}

@cds.persistence.exists
@cds.persistence.calcview
entity V_INTERATION {
  key ID         : String(36);
  PARTNER        : String(10);
  CREATEDAT      : Timestamp;
  CREATEDBY      : String(255);
  TEXT           : String(1024);
  DATE           : DateTime;
  PRICE          : Decimal(10,2);
}
