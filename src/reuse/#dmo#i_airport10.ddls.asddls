@AbapCatalog.sqlViewName: '/DMO/IAIRPO_RE10'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airport View - CDS Data Model'

define view /DMO/I_Airport10 as select from /dmo/airport10 as Airport

{

    key Airport.airport_id  as AirportID, 
    Airport.name            as Name, 
    Airport.city            as City, 
    Airport.country         as Country   
}
