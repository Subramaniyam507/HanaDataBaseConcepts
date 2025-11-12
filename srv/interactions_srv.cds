using app.interactions from '../db/interactions';


service CatalogService {

    @odata.draft.enabled: true
    entity Interactions_Header as projection on interactions.Headers;

    entity Interactions_Items  as projection on interactions.Items;

 
}
