@AbapCatalog.sqlViewName: 'ZV_ACC_CAT_7088'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Tipo Acceso&Categoria - 7088'
define view ZCDS_B_ACC_CAT_7088
  as select from ztb_acc_cat_7088
{
  key bi_categ    as BiCateg,
  key tipo_acceso as TipoAcceso
}
