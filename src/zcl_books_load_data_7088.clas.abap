CLASS zcl_books_load_data_7088 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_BOOKS_LOAD_DATA_7088 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_categ  TYPE TABLE OF ztb_acc_cat_7088,
          lt_categorias TYPE TABLE OF ztb_catego_7088,
          lt_clientes   TYPE TABLE OF ztb_cliente_7088,
          lt_libros     TYPE TABLE OF ztb_libros_7088,
          lt_cli_lib    TYPE TABLE OF ztb_cli_lib_7088.


    "** TIPOS DE ACCESO & CATEGORIAS **
    lt_acc_categ = VALUE #(
      ( bi_categ = 'N' tipo_acceso = 'P' )
      ( bi_categ = 'C' tipo_acceso = 'I' )
      ( bi_categ = 'S' tipo_acceso = 'P' )
      ( bi_categ = 'T' tipo_acceso = 'I' ) ).

    DELETE FROM ztb_acc_cat_7088.
    INSERT ztb_acc_cat_7088 FROM TABLE @lt_acc_categ.

    SELECT * FROM ztb_acc_cat_7088 INTO TABLE @lt_acc_categ.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_ACC_CAT_7088 data inserted successfully!').


    "** CATEGORIAS **
    lt_categorias = VALUE #(
      ( bi_categ = 'N' descripcion = 'Novel' )
      ( bi_categ = 'C' descripcion = 'Short Stories' )
      ( bi_categ = 'S' descripcion = 'Science' )
      ( bi_categ = 'T' descripcion = 'Travel' ) ).

    DELETE FROM ztb_catego_7088.
    INSERT ztb_catego_7088 FROM TABLE @lt_categorias.

    SELECT * FROM ztb_catego_7088 INTO TABLE @lt_categorias.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_CATEGO_7088 data inserted successfully!').


    "** CLIENTES **
    lt_clientes = VALUE #(
      ( id_cliente = 'U20010000000123' tipo_acceso = 'P' nombre = 'Beto' apellidos = 'Oliveira' email = 'beto.oliveira@mcgill.ca' url = 'www.beto-oliveira.com' )
      ( id_cliente = 'G20150000009876' tipo_acceso = 'I' nombre = 'Arnulfo' apellidos = 'Caicedo' email = 'acaicedo28@hotmail.com' url = 'www.lectores2001-acaicedo.com' ) ).

    DELETE FROM ztb_cliente_7088.
    INSERT ztb_cliente_7088 FROM TABLE @lt_clientes.

    SELECT * FROM ztb_cliente_7088 INTO TABLE @lt_clientes.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLIENTE_7088 data inserted successfully!').


    "** LIBROS **
    lt_libros = VALUE #(
      ( id_libro = 'CN01008765' bi_categ = 'N' titulo = 'Cien Anos de Soledad' autor = 'Gabriel Garcia Marquez' editorial = 'Alfaguara' idioma = 'S' paginas = '606' precio = '120000' moneda = 'COP' formato = 'H' url = 'www.cienanosdesoledad.com' )
      ( id_libro = 'CS03001936' bi_categ = 'S' titulo = 'La Teoria del Todo' autor = 'Stephen W Hawking' editorial = 'Debate' idioma = 'S' paginas = '151' precio = '40000' moneda = 'COP' formato = 'B' url = 'www.debate.com/ciencia/lateoriadeltodo/' )
      ( id_libro = 'DT04006102' bi_categ = 'T' titulo = 'Mediterranean Europe' autor = 'Several' editorial = 'Lonely Planet' idioma = 'E' paginas = '1136' precio = '25.95' moneda = 'USD' formato = 'D' url = 'www.lonelyplanet.com/mediterranean-europe/' )
      ( id_libro = 'DC05009043' bi_categ = 'C' titulo = 'Cuentos de la Selva' autor = 'Horacio Quiroga' editorial = 'EMU' idioma = 'S' paginas = '95' precio = '30000' moneda = 'COP' formato = 'D' url = 'www.emu.mx/cuentos-de-la-selva/' ) ).

    DELETE FROM ztb_libros_7088.
    INSERT ztb_libros_7088 FROM TABLE @lt_libros.

    SELECT * FROM ztb_libros_7088 INTO TABLE @lt_libros.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_LIBROS_7088 data inserted successfully!').


    "** CLIENTE & LIBRO **
    lt_cli_lib = VALUE #(
      ( id_cliente = 'U20010000000123' id_libro = 'CN01008765' )
      ( id_cliente = 'U20010000000123' id_libro = 'CS03001936' )
      ( id_cliente = 'G20150000009876' id_libro = 'DT04006102' )
      ( id_cliente = 'G20150000009876' id_libro = 'DC05009043' ) ).

    DELETE FROM ztb_cli_lib_7088.
    INSERT ztb_cli_lib_7088 FROM TABLE @lt_cli_lib.

    SELECT * FROM ztb_cli_lib_7088 INTO TABLE @lt_cli_lib.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLI_LIB_7088 data inserted successfully!').

  ENDMETHOD.
ENDCLASS.
