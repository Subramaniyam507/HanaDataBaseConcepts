namespace app.interactions;

using {
  
    Currency,
    cuid,
    managed
} from '@sap/cds/common';

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
