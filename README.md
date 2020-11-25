# Authotkey-Assortment
Variedad de scripts hechos en Autotkey, para uso personal.

Descripción de los módulos:

- **always\_on_top.ahk**: `CTRL + SPACE` para activar. La ventana activa se mantiene en primer plano, a menos que sea minimizada. Deshabilitado para Sublime Text.
- **fast_scroll.ahk**: `Click Derecho + Rueda del ratón` para activar scroll acelerado. Deshabilitado para Sublime Text.
- **form_filler.ahk**:  `ALT + Insert` para llenar formularios con _foo_ y _bar_.
- **numpad_search.ahk**: `NUMPAD SUB + NUMPAD ADD` acceso directo a `CTRL + F`
- **super_copy.ahk**: `CTRL + SHIFT + C` para activar. Selecciona el texto a copiar y pega en el instante con clic derecho. Automáticamente se desactiva una vez que se pego el texto seleccionado.
- **quick_google.ahk**: `CTRL + SHIFT + J` para ejecutar una búsqueda en Google desde una ventana de dialogo, `ESC` para cancelar
- **instant_timestamp_convert**: `ALT + U` detecta una cadena de 4 a 11 números en el portapapeles. Si detecta que puede ser un [Unix Timestamp](https://es.wikipedia.org/wiki/Tiempo_Unix) lo convierte a la fecha y hora actual en el lenguaje del usuario, muestra un Mensaje/Dialogo con la fecha convertida y reemplaza el string de números con la fecha convertida para que el usuario pueda pegarla.


Para agregar o remover módulos, edita **main.ahk**, al compilar se incluyen los módulos en el ejecutable.
