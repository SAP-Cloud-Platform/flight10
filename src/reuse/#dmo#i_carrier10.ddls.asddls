@AbapCatalog.sqlViewName: '/DMO/ICARRI_RE10'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier View - CDS Data Model'

@Search.searchable: true
define view /DMO/I_Carrier10
  as select from /dmo/carrier10 as Airline

{
  key Airline.carrier_id    as AirlineID,

      @Semantics.text: true
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Airline.name          as Name,

      @Semantics.currencyCode: true
      Airline.currency_code as CurrencyCode
}
