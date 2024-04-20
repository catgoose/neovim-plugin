local deep_copy = require("neovim-plugin.utils").deep_copy

local default_log_level = "warn"

---@class Opts
---@field log_level string

---@class Constants
---@field get_val fun(): Constants._val
---@return Constants
local M = {}
---@class Constants._val
---@field plugin_name string
---@field opts Opts
---@field default_log_level string
---@field log_levels string[]
local _val = {
	plugin_name = "neovim-plugin",
	opts = {
		log_level = default_log_level,
	},
	default_log_level = default_log_level,
	log_levels = { "trace", "debug", "info", "warn", "error", "fatal" },
}

M.get = function()
	return deep_copy(_val)
end

return M
