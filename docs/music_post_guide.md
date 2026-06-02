# Music Post Guide

## RU

Этот комплект нужен, чтобы один заполненный файл автоматически запускал первый слой контент-кампании.

### Как использовать

1. Скопируй шаблон.
2. Заполни поля.
3. Положи файл в одну из папок:
 - `music post/моя музыка/новая/`
 - `music post/моя музыка/старая/`
 - `music post/не моя/`
 - старые папки `music PROJECT/` и `music vibe/` тоже читаются как legacy-источники
4. Локальный ingest-скрипт заберёт файл в работу.
5. После этого появятся:
 - `brief.md`
 - `campaign_pack.json`
 - `campaign_pack.md`
 - исходный `input.yaml`

### Что желательно заполнять

- название трека
- свой или чужой
- BPM
- тональность
- структура
- текст
- настроение
- референсы
- цель
- права
- FL Studio project path, если есть

### Что можно скидывать дополнительно

- `.flp` файл проекта
- текст песни
- stems или bounce
- ссылку на исходник
- заметки по референсам
- путь к `.flp` файлу проекта

### Ограничение по FL Studio

Я могу использовать `.flp` как указание на проект, имя файла, путь и связанный контекст. 
Содержимое `.flp` напрямую без специального парсера не читается. Если хочешь, чтобы я извлекал больше смысла, добавляй рядом:

- текстовый экспорт
- список дорожек
- заметки по аранжировке
- bounce или stems

## EN

This package is meant to let one filled file trigger the first content campaign layer automatically.

### How to use

1. Copy the template.
2. Fill the fields.
3. Put the file into one of these folders:
 - `music post/моя музыка/новая/`
 - `music post/моя музыка/старая/`
 - `music post/не моя/`
4. The local ingest script will pick it up.

### Recommended fields

- track title
- own vs чужой
- BPM
- key
- structure
- lyrics
- mood
- references
- goal
- rights
- FL Studio project path, if available

### Optional extras

- `.flp` project file
- lyrics text
- stems / bounce
- source link
- reference notes

### FL Studio limitation

I can use a `.flp` file as a project pointer, file name, path, and attached context. 
I cannot directly read the internals of `.flp` without a dedicated parser. If you want more context, add:

- text export
- track list
- arrangement notes
- bounce or stems

### Автозапуск

```bash
./scripts/scan_music_post.sh
```

### Что дальше делает система

- собирает первый рабочий brief
- строит пакет публикаций
- сохраняет всё локально в `music_project/context/music_post_runs/`
- при необходимости отправляет уведомление в Telegram
