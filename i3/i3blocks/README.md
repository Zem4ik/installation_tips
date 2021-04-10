# i3blocks

## Текущая раскладка языка (xkb-layout)

Требует установки [xkb-switch](https://aur.archlinux.org/packages/xkb-switch/)

## Уровень загруки CPU (cpu_usage)

Требует установки [sysstat](https://archlinux.org/packages/community/x86_64/sysstat/)

## Текущая громкость (volume)

Для корректной работы требуется добавить следующую строчку в `.xinitrc`:

```shell
pactl subscribe | grep --line-buffered "sink" | while read line; do pkill -RTMIN+10 i3block; done &
```
