-- monkai theme
return {
	"tanvirtin/monokai.nvim",
    config = function()
        local monokai = require("monokai")
        monokai.setup({ palette = monokai.soda })
    end
}
