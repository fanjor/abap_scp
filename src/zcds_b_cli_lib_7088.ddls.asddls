@AbapCatalog.sqlViewName: 'ZV_CLILIB_7088'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Cliente & Libro - 7088'
define view ZCDS_B_CLI_LIB_7088
  as select from ztb_cli_lib_7088
{
  key id_cliente as IdCliente,
  key id_libro   as IdLibro
}
