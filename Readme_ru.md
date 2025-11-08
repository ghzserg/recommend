# Рекомендуемы настройки

Настройки, которые рекомендуется использовать сразу после установки мода

# Установка

Чтобы использовать этот мод для вашего Flashforge AD5X/AD5M/AD5M Pro

1. Установите zMod: https://github.com/ghzserg/zmod
2. [Обновите zMod](https://github.com/ghzserg/zmod/wiki/Setup#%D0%BE%D0%B1%D0%BD%D0%BE%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BC%D0%BE%D0%B4%D0%B0)
3. Выполните команду: ```ENABLE_PLUGIN name=recommend```

# Удаление

Выполните команду: ```DISABLE_PLUGIN name=recommend```

# Список настроек входящих в плагин

## Более точное снятие карты стола
```
[bed_mesh]
move_check_distance: 5
horizontal_move_z: 2

[probe]
speed:2
lift_speed:5
```

## Корректные настройки SCV

[FIX_SCV](https://github.com/ghzserg/zmod/wiki/Global_ru#fix_scv)

```
[printer]
square_corner_velocity: 9
```

```SAVE_ZMOD_DATA FIX_SCV=1```

## Исправление ошибки E0011

[FIX_E0011](https://github.com/ghzserg/zmod/wiki/Global_ru#fix_e0011)

```SAVE_ZMOD_DATA FIX_E0011=1```

## Исправление ошибки E0017

[FIX_E0017](https://github.com/ghzserg/zmod/wiki/Global_ru#fix_e0017)

```SAVE_ZMOD_DATA FIX_E0017=1```

## Включение контроля MD5

[FORCE_MD5](https://github.com/ghzserg/zmod/wiki/Global_ru#force_md5)

```SAVE_ZMOD_DATA FORCE_MD5=1```

## Быстрое закрытие диалогов

[CLOSE_DIALOGS](https://github.com/ghzserg/zmod/wiki/Global_ru#close_dialogs)

```SAVE_ZMOD_DATA CLOSE_DIALOGS=2```

## Исправление проблем с Wi-Fi

[WIFI](https://github.com/ghzserg/zmod/wiki/Global_ru#wifi)

```SAVE_ZMOD_DATA WIFI=1```