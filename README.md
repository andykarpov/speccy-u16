# Speccy для ReVerSE-U16 ревизий A и C

Порт актуальной конфигурации из проекта DivGMX/divgmx_speccy.

### Отличия от оригинальной сборки:

* Добавлен Makefile для автоматической сборки проекта
* Сброс по F4
* Поправлены адреса ПЗУ образов при чтении из SPI flash

### Требования к хосту для сборки

* Linux
* установленный Altera Quartus Web Edition 13.0+, 
* директория qurtus/bin добавлена в PATH (чтобы был доступ к quartus_sh, quartus_pgm и т.п. консольным утилитам)
* установленный sjasmplus из [https://github.com/z00m128/sjasmplus](https://github.com/z00m128/sjasmplus) и доступный в PATH
* установленный php-cli не ниже 5.6
* наличие make 
* установленный python 2.7

### Порядок сборки 

* **cd syn**
* правим Makefile, если нужно (выбираем ревизию платы, камень, флешку и т.п.)
* **make** - сборка проекта, включая сборку загрузчика и подготовку файлов для конвертации в jic
* **make jic** - сборка jic 
* **make program** - заливка jic через usb blaster в плату
* profit :)

#### Если что-то пошло не так

* make clean
* goto 10 ;)

### Запуск проекта
1. Записать в корень на microSD (FAT32) карту файлы из softwares/ (FATALL и файлы поддержки для DivMMC)
2. Записать на microSD образы TRD, SCL, TAP, музыку, другие файлы, поддерживающиеся в FATALL / DivMMC
3. Запрограммировать VNC2 с помощью FT_Prog утилиты образом из vnc2/Release/firmware.rom
4. Влить с помощью Quartus Programmer в плату полученный jic (либо make program)

#### Boot
* При включении загружается Loader. Делаем настройки даты/времени, если необходимо (Кнопка S), нажимаем Enter
* После чего попадаем в меню GLuck. 
* Выбираем Fat boot -> ZController -> FATALL
* В fatall слева - RAM-диск, справа - файлы на Вашей SD-карточке
* Выбираем нужный образ, нажимаем 5 (для копирования TRD/SCL-образа на RAM-диск)
* Переходим в левую панель, нажимаем Enter на B-файле, либо F4 -> Gluck boot -> нажимаем Enter на нужном файле
* Profit