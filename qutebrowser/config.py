# Configuration Browser:

config.load_autoconfig(False)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

config.set('content.cookies.accept', 'all', 'devtools://*')


config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')


config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:145.0) Gecko/20100101 Firefox/145.0', 'https://accounts.google.com/*')


config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {qt_key}/{qt_version} {upstream_browser_key}/{upstream_browser_version_short} Safari/{webkit_version}', 'https://gitlab.gnome.org/*')


config.set('content.images', True, 'chrome-devtools://*')


config.set('content.images', True, 'devtools://*')


config.set('content.javascript.enabled', True, 'chrome-devtools://*')

config.set('content.javascript.enabled', True, 'devtools://*')


config.set('content.javascript.enabled', True, 'chrome://*/*')


config.set('content.javascript.enabled', True, 'qute://*/*')


config.set('content.local_content_can_access_remote_urls', True, 'file:///home/Anchovy/.local/share/qutebrowser/userscripts/*')


config.set('content.local_content_can_access_file_urls', False, 'file:///home/Anchovy/.local/share/qutebrowser/userscripts/*')




# My configuration:

# General Configuration:

c.colors.webpage.darkmode.enabled = True
c.fonts.default_family = "0xProto Nerd Font"
c.fonts.default_size = "12pt"

# Tabs:
c.colors.tabs.odd.bg = '#000000'
c.colors.tabs.even.bg = '#000000'

c.colors.tabs.selected.odd.bg = '#7b68ee'
c.colors.tabs.selected.odd.fg = '#000000'
c.colors.tabs.selected.even.bg = '#7b68ee'
c.colors.tabs.selected.even.fg = '#000000'


c.colors.tabs.bar.bg = '#000000'

c.statusbar.padding = {"bottom": 1, "top": 1, "left": 0, "right": 0}

c.tabs.position = 'top'
c.tabs.favicons.show = 'never'

c.fonts.tabs.selected = '10pt "0xProto Nerd Font"'

c.tabs.title.format = '{index}: {current_title} {host}'

c.tabs.width = '7%'

# Status bar:

c.colors.statusbar.insert.bg= '#031400'
c.colors.statusbar.insert.fg = '#dc143c'

c.colors.statusbar.caret. bg = '#fff600'
c.colors.statusbar.caret.selection.bg = '#cb4b16'
c.colors.statusbar.caret.selection.fg = '#ffffff'

c.colors.downloads.bar.bg = '#6c71c4'

# Command ToolBox:
c.colors.completion.category.bg = '#000000'
c.colors.completion.category.fg = '#E4D00A'
c.colors.completion.item.selected.bg = '#000000'
c.colors.completion.item.selected.fg = '#dc143c'

c.colors.completion.category.border.bottom = "#cb3b16"
c.colors.completion.category.border.top = "#cb3b16"
c.colors.completion.item.selected.border.bottom = "#dc143c"
c.colors.completion.item.selected.border.top = "#dc143c"

c.colors.completion.odd.bg = '#000000'               # Filas impares (negro/gris muy oscuro)
c.colors.completion.even.bg = '#222222'              # Filas pares (ligeramente más claro)
c.colors.completion.fg = '#32cd32'




# Search:

c.url.searchengines = {
# note - if you use duckduckgo, you can make use of its built in bangs, of which there are many! https://duckduckgo.com/bangs
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        '!aw': 'https://wiki.archlinux.org/?search={}',
        '!apkg': 'https://archlinux.org/packages/?sort=&q={}&maintainer=&flagged=',
        '!gh': 'https://github.com/search?o=desc&q={}&s=stars',
        '!yt': 'https://www.youtube.com/results?search_query={}',


 }

# Dark mode:
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'  # Mejor que hsl o rgb, más natural
c.colors.webpage.darkmode.policy.images = 'smart'  # Invierte imágenes solo si son claras (mejor que 'never' o 'always')
c.colors.webpage.darkmode.policy.page = 'always'  # Fuerza en todas las páginas
c.colors.webpage.darkmode.contrast = 0.0  # 0.0 es neutro; prueba -0.1 para más contraste si texto se ve apagado
c.colors.webpage.darkmode.threshold.background = 100  # Umbrales para decidir qué invertir
c.colors.webpage.darkmode.threshold.foreground = 150

# Pide dark mode nativo a los sitios que lo soportan
c.colors.webpage.preferred_color_scheme = 'dark'

# Excepción para páginas locales (ya la tienes, buena idea)
config.set('colors.webpage.darkmode.enabled', False, 'file://*')


## Adblock:




# Keybind:

config.bind('<Ctrl-D>', 'config-cycle colors.webpage.darkmode.enabled False True ;; reload')
