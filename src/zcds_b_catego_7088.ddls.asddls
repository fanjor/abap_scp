@AbapCatalog.sqlViewName: 'ZV_CATEGO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Categoria - 7088'
define view ZCDS_B_CATEGO_7088
  as select from ztb_catego_7088
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
