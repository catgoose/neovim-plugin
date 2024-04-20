local cfg = require("neovim-plugin.core.config")

---@class NeovimPlugin
---@field setup fun(opts: table)
---@field Log Logger
---@return NeovimPlugin
local M = {}

function M.setup(opts)
	opts = opts or {}
	cfg.init(opts)
	M.Log = require("neovim-plugin.core.logger").init()
end

return M
