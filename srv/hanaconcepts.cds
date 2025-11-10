using {my.company.sales as sales} from '../db/schema';


service MyService {

    entity Customers as projection on sales.Customers;
    entity  Products as projection on sales.Products;
    entity SalesOrders as projection on sales.SalesOrders;

}