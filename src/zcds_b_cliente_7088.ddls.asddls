@AbapCatalog.sqlViewName: 'ZV_CLIENTE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Details Customers - 7088'
@Metadata.allowExtensions: true
define view ZCDS_B_CLIENTE_7088
  as select from ztb_cliente_7088
{
  key id_cliente  as IdCliente,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as Url
}
