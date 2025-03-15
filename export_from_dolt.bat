@echo off

rem Export csvs from dolt to here.

set HOME_DIR=C:\Users\User
set "DOLT=%HOME_DIR%\Git\database_dolt"
set "DATABASE_CSV=%HOME_DIR%\Git\database_csv"
set "REFERENCE=%DATABASE_CSV%\reference"
set "RESOURCE=%DATABASE_CSV%\resource"
set "ASSET=%DATABASE_CSV%\asset"

cd "%DOLT%\reference"
dolt sql -r csv -q "SELECT * FROM `blog`" > %REFERENCE%\blog.csv
dolt sql -r csv -q "SELECT * FROM `document`" > %REFERENCE%\document.csv
dolt sql -r csv -q "SELECT * FROM `entry`" > %REFERENCE%\entry.csv
dolt sql -r csv -q "SELECT * FROM `lession`" > %REFERENCE%\lession.csv
dolt sql -r csv -q "SELECT * FROM `reference`" > %REFERENCE%\reference.csv
dolt sql -r csv -q "SELECT * FROM `sheet`" > %REFERENCE%\sheet.csv

cd "%DOLT%\resource"
dolt sql -r csv -q "SELECT * FROM `andriod`" > %RESOURCE%\andriod.csv
dolt sql -r csv -q "SELECT * FROM `anki`" > %RESOURCE%\anki.csv
dolt sql -r csv -q "SELECT * FROM `autohotkey`" > %RESOURCE%\autohotkey.csv
dolt sql -r csv -q "SELECT * FROM `brave`" > %RESOURCE%\brave.csv
dolt sql -r csv -q "SELECT * FROM `civitai`" > %RESOURCE%\civitai.csv
dolt sql -r csv -q "SELECT * FROM `cmder`" > %RESOURCE%\cmder.csv
dolt sql -r csv -q "SELECT * FROM `datasette`" > %RESOURCE%\datasette.csv
dolt sql -r csv -q "SELECT * FROM `directory_opus`" > %RESOURCE%\directory_opus.csv
dolt sql -r csv -q "SELECT * FROM `discord`" > %RESOURCE%\discord.csv
dolt sql -r csv -q "SELECT * FROM `github_cli`" > %RESOURCE%\github_cli.csv
dolt sql -r csv -q "SELECT * FROM `godot`" > %RESOURCE%\godot.csv
dolt sql -r csv -q "SELECT * FROM `joplin`" > %RESOURCE%\joplin.csv
dolt sql -r csv -q "SELECT * FROM `keypirinha`" > %RESOURCE%\keypirinha.csv
dolt sql -r csv -q "SELECT * FROM `latex`" > %RESOURCE%\latex.csv
dolt sql -r csv -q "SELECT * FROM `linux`" > %RESOURCE%\linux.csv
dolt sql -r csv -q "SELECT * FROM `lobechat`" > %RESOURCE%\lobechat.csv
dolt sql -r csv -q "SELECT * FROM `logseq`" > %RESOURCE%\logseq.csv
dolt sql -r csv -q "SELECT * FROM `love`" > %RESOURCE%\love.csv
dolt sql -r csv -q "SELECT * FROM `mkdocs`" > %RESOURCE%\mkdocs.csv
dolt sql -r csv -q "SELECT * FROM `mpv`" > %RESOURCE%\mpv.csv
dolt sql -r csv -q "SELECT * FROM `neovim`" > %RESOURCE%\neovim.csv
dolt sql -r csv -q "SELECT * FROM `obsidian`" > %RESOURCE%\obsidian.csv
dolt sql -r csv -q "SELECT * FROM `renpy`" > %RESOURCE%\renpy.csv
dolt sql -r csv -q "SELECT * FROM `rime`" > %RESOURCE%\rime.csv
dolt sql -r csv -q "SELECT * FROM `rofi`" > %RESOURCE%\rofi.csv
dolt sql -r csv -q "SELECT * FROM `scoop`" > %RESOURCE%\scoop.csv
dolt sql -r csv -q "SELECT * FROM `serve`" > %RESOURCE%\serve.csv
dolt sql -r csv -q "SELECT * FROM `sphinx`" > %RESOURCE%\sphinx.csv
dolt sql -r csv -q "SELECT * FROM `stable_diffusion_web_ui`" > %RESOURCE%\stable_diffusion_web_ui.csv
dolt sql -r csv -q "SELECT * FROM `sublime_text`" > %RESOURCE%\sublime_text.csv
dolt sql -r csv -q "SELECT * FROM `tabby`" > %RESOURCE%\tabby.csv
dolt sql -r csv -q "SELECT * FROM `tmux`" > %RESOURCE%\tmux.csv
dolt sql -r csv -q "SELECT * FROM `vim`" > %RESOURCE%\vim.csv
dolt sql -r csv -q "SELECT * FROM `visual_studio_code`" > %RESOURCE%\visual_studio_code.csv
dolt sql -r csv -q "SELECT * FROM `web`" > %RESOURCE%\web.csv
dolt sql -r csv -q "SELECT * FROM `web_app`" > %RESOURCE%\web_app.csv
dolt sql -r csv -q "SELECT * FROM `zsh`" > %RESOURCE%\zsh.csv

cd "%DOLT%\asset"
dolt sql -r csv -q "SELECT * FROM `asset`" > %ASSET%\asset.csv
dolt sql -r csv -q "SELECT * FROM `font`" > %ASSET%\font.csv

pause