@AbapCatalog.sqlViewName: 'ZVI_LIBRARY_7088'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Biblioteca - 7088'
@Metadata.allowExtensions: true
define view ZCDS_I_LIBRARY_7088
  as select from ZCDS_B_CLI_LIB_7088 as CliLib
  association [0..*] to ZCDS_B_LIBRO_7088   as _Libro   on CliLib.IdLibro = _Libro.IdLibro
  association [0..*] to ZCDS_B_CLIENTE_7088 as _Cliente on CliLib.IdCliente = _Cliente.IdCliente
{
  key IdCliente,
  key IdLibro,
      _Libro.BiCateg as Categoria,
      _Libro.Titulo as Titulo,
      _Libro.Autor as Autor,
      _Libro.Editorial as Editorial,
      _Libro.Idioma as Idioma,
      _Libro.Paginas as Paginas,
      _Libro.Precio as Precio,
      _Libro.Moneda as Moneda,
      _Libro.Formato as Formato,
      _Libro.Url as LibroURL,
      _Cliente.TipoAcceso as TipoAcceso,
      _Cliente.Nombre as Nombre,
      _Cliente.Apellidos as Apellidos,
      _Cliente.Email as ClienteEMAIL,
      _Cliente.Url as ClienteURL,
      case
        when _Libro.BiCateg = 'N' then 2
        when _Libro.BiCateg = 'C' then 2
        when _Libro.BiCateg = 'S' then 3
        when _Libro.BiCateg = 'T' then 1
        else 0
      end as Class,
      '' as Classif,
      _Libro,
      _Cliente
}
