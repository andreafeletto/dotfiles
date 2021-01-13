require('vis')
require('plugins/cscope')
require('plugins/open_rej')
require('plugins/vis-smart-backspace')
require('plugins/vis-surround')

fzf = require('plugins/fzf-open')
fzf.fzf_args = "--height 50% --margin 5% --preview 'bat -f --style plain {}'"

prs = require('plugins/pairs')
prs.autopairs = false

-- enable: <C-w>e --
-- disable <C-w>d --
spell = require('plugins/spellcheck')
spell.cmd = "nuspell -d %s"
spell.list_cmd = "nuspell -l -d %s"

toggler = require('plugins/vis-toggler')
toggler.config = require('plugins/vis-toggler.defaults')

vis.events.subscribe(vis.events.INIT, function()
	vis:command('set escdelay 0')
	vis:command('set theme base16-gruvbox-dark-pale')

	-- System Clipboard --
	vis:map(vis.modes.NORMAL, ' y', '"+<vis-operator-yank>')
	vis:map(vis.modes.VISUAL, ' y', '"+<vis-operator-yank>')

	-- Custom Keybindings --
	vis:map(vis.modes.NORMAL, ' f', ':fzf<Enter><Enter>')

	-- Disable Arrows --
	keys = {'<Left>', '<Right>', '<Up>', '<Down>'}
	for _, key in ipairs(keys) do
		vis:map(vis.modes.NORMAL, key, '')
		vis:map(vis.modes.INSERT, key, '')
		vis:map(vis.modes.VISUAL, key, '')
	end
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set relativenumbers')
	vis:command('set colorcolumn 80')
	vis:command('set cursorline')
end)
