---@class Utils
---@field deep_copy fun(orig: table): table
---@field string_format fun(msg: string, ...): string
---@return Utils
local M = {}

function M.deep_copy(orig)
	local t = type(orig)
	local copy
	if t == "table" then
		copy = {}
		for k, v in pairs(orig) do
			copy[k] = M.deep_copy(v)
		end
	else
		copy = orig
	end
	return copy
end

function M.string_format(msg, ...)
	local args = { ... }
	for i, v in ipairs(args) do
		if type(v) == "table" then
			args[i] = vim.inspect(v)
		end
	end
	return string.format(msg, unpack(args))
end

return M
