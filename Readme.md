# Recommended Settings

Settings recommended for immediate use after installing the mod.

# Installation

To use this mod with your Flashforge AD5X/AD5M/AD5M Pro:

1. Install zMod: https://github.com/ghzserg/zmod  
2. [Update zMod](https://github.com/ghzserg/zmod/wiki/Setup_en#updating-the-mod)
2. Run the command: ```ENABLE_PLUGIN name=recommend```

# Removal

Run the command: ```DISABLE_PLUGIN name=recommend```

# List of Settings Included in the Plugin

## More Accurate Bed Mesh Calibration
```
[bed_mesh]
move_check_distance: 5
horizontal_move_z: 2

[probe]
speed: 2
lift_speed: 5
```

## Correct SCV Settings

[FIX_SCV](https://github.com/ghzserg/zmod/wiki/Global_en#fix_scv)

```
[printer]
square_corner_velocity: 9
```

```SAVE_ZMOD_DATA FIX_SCV=1```

## Fixing Error E0011

[FIX_E0011](https://github.com/ghzserg/zmod/wiki/Global_en#fix_e0011)

```SAVE_ZMOD_DATA FIX_E0011=1```

## Fixing Error E0017

[FIX_E0017](https://github.com/ghzserg/zmod/wiki/Global_en#fix_e0017)

```SAVE_ZMOD_DATA FIX_E0017=1```

## Enabling MD5 Checksum Verification

[FORCE_MD5](https://github.com/ghzserg/zmod/wiki/Global_en#force_md5)

```SAVE_ZMOD_DATA FORCE_MD5=1```

## Fast Dialog Closure

[CLOSE_DIALOGS](https://github.com/ghzserg/zmod/wiki/Global_en#close_dialogs)

```SAVE_ZMOD_DATA CLOSE_DIALOGS=2```


## Fixing Wi-Fi issues

[WIFI](https://github.com/ghzserg/zmod/wiki/Global_ru#wifi)

```SAVE_ZMOD_DATA WIFI=1```
