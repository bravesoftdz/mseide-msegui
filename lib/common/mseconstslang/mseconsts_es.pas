{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_es;

{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 mseconsts;
 
implementation
uses
 msetypes{msestrings},sysutils,mseformatstr;
 
const 
extendedconst: extendedaty =
 (
'¿Borrar la fila seleccionada?',
'¿Borrar %s filas seleccionadas?'
); 

 modalresulttext: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'&Cancelar',
'&Interrumpir',
'&Aceptar',
'&Sí',
'&No',
'&Todo',
'Sí a &todo',
'N&o a todo',
'&Ignorar',
'O&mitir',
'Omitir to&do',
'Co&ntinuar'
);

 modalresulttextnoshortcut: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'Cancelar',
'Interrumpir',
'Aceptar',
'Sí',
'No',
'Todo',
'Sí a todo',
'No a todo',
'Ignorar',
'Omitir',
'Omitir todo',
'Continuar'
 );

 stockcaption: stockcaptionaty = (
'',
'no es válido',
'Error de formato',
'Se necesita un valor',
'Error',
'Mín.',
'Máx.',
'Error de intervalo',
'&Deshacer',
'&Rehacer',
'&Copiar',
'C&ortar',
'&Pegar',
'Seleccionar &todo',
'&Insertar fila',
'&Añadir fila',
'&Eliminar fila',
'&Carpetas',
'&Principal',
'&Subir un nivel',
'Crear carpeta',
'N&ombre',
'&Mostrar archivos ocultos',
'&Filtro',
'Guardar',
'Abrir',
'Nombre',
'Crear una carpeta nueva',
'Atrás',
'Adelante',
'Arriba',
'Archivo',
'existe  ¿quiere sobreescribirlo?',
'ha sido modificado. ¿Guardar?',
'ADVERTENCIA',
'ERROR',
'Excepción',
'Sistema',
'no existe',
'CONTRASEÑA',
'Escriba la contraseña',
'La contraseña es incorrecta.',
'No puedo leer la carpeta',
'Formato gráfico no admitido',
'Error de formato gráfico',
'Mapa de bits MS',
'Icono MS',
'Imagen JPEG',
'Imagen PNG',
'Imagen XPM',
'Imagen PNM',
'Imagen TARGA',
'Imagen TIFF',
'Todo',
'Confirmación',
'¿Quiere eliminar el registro?',
'¿Quiere copiar el registro?',
'Cerrar página',
'Primero',
'Anterior',
'Siguiente',
'Último',
'Añadir',
'Eliminar',
'Editar',
'Guardar',
'Cancelar',
'Actualizar',
'Filtro de edición',
'Filtro edición mínimo',
'Filtro edición máximo',
'Reiniciar filtro',
'Filtro activo',
'Buscar',
'Edición automática',
'Copiar registro',
'Diálogo',
'Insertar',
'Copiar',
'Pegar',
'Insertar fila',
'Añadir fila',
'Eliminar fila',
'Deshacer',
'Rehacer',
'Cortar',
'Seleccionar todo',
'Filtro desactivado',
'Vertical',
'Apaisado',
'¿Quiere eliminar la fila?',
'filas seleccionadas?',
'Un elemento solamente',
'Copiar celdas',
'Pegar celdas',
'Cerrar',
'Maximizar',
'Restaurar',
'Minimizar',
'Ajustar tamaño',
'Flotar',
'Permanecer en primer plano',
'Permanecer en el fondo',
'Bloquear hijas',
'Sin bloquear',
'Entrada',
'Botón',
'Encendido',
'Apagado',
'Borde izquierdo',
'Borde superior',
'Borde derecho',
'Borde inferior',
'Principio del texto',
'Fin del texto',
'Modo entrada',
'Sobrescribir',
'Borrado',
'Copiado',
'Insertado',
'Pegado',
'Retirado',
'Ventana activada',
'Menú',
'Principio del archivo',
'Fin del archivo',
'Salida de voz',
'Hablar de nuevo',
'Primera columna',
'Primera fila',
'Última columna',
'Última fila',
'Selección',
'Ruta de hablar',
'Deshabilitar botón',
'Primer campo',
'Último campo',
'Primer elemento',
'Último elemento',
'Más lento',
'Más rápido',
'Ventana',
'Área',
'Área activada',
'Bajar volumen',
'Subir volumen',
'Cancelar habla'
);

function delete_n_selected_rows(const params: array of const): msestring;
begin
 with params[0] do begin
  if vinteger = 1 then begin
   result:= extendedconst[ex_del_row_selected];
  end
  else begin
   result := StringReplace(extendedconst[ex_del_rows_selected], #37#115, inttostrmse(vinteger), [rfReplaceAll]);
  end;
 end;
end;

const
 textgenerator: defaultgeneratortextty = (
              {$ifdef FPC}@{$endif}delete_n_selected_rows
                                     );

initialization
registerlangconsts('es',@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

