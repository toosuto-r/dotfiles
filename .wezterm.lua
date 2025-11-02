local wezterm = require 'wezterm'

return {
  -- color_scheme = "Solarized (dark) (terminal.sexy)",
  -- color_scheme = "SynthWave (Gogh)",
  color_scheme = "Spacedust (Gogh)",
  -- color_scheme = "Solarized Dark (Gogh)",
  hide_tab_bar_if_only_one_tab = true,
  font_size=13.0,
  font = wezterm.font_with_fallback {"JetBrains Mono"}
}
