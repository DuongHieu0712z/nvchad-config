local M = {}

-- Search more glyphs/icons of Nerd Font at https://www.nerdfonts.com/cheat-sheet

M.listchars = {
  eol      = "↩", -- end of line
  tab      = "▸·", -- tab
  space    = "·", -- space
  trail    = "·", -- trailing space
  extends  = "⯈", -- in last column, when wrap line is off and line continues
  precedes = "⯇", -- in first column, when wrap line is off and character visible in first column
  conceal  = " ",  -- show in place of concealed text, when 'conceallevel' is set to 1
  nbsp     = "⌴", -- non-breakable space
}

M.diagnostics = {
  default     = "",
  error       = "",
  warning     = "",
  information = "",
  question    = "",
  hint        = "󱠃",
  debug       = "",
  trace       = "✎",
  todo        = "",
  hack        = "",
  performance = "󰅒",
  note        = "󱜾",
}

M.gitsigns = {
  add    = '▎',
  change = '▎',
  delete = '',
}

M.kind_icons = {
  Array         = "",
  Boolean       = "",
  Calendar      = "",
  Class         = "",
  Codeium       = "",
  Color         = "",
  Copilot       = "",
  Constant      = "",
  Constructor   = "",
  Enum          = "",
  EnumMember    = "",
  Event         = "",
  Field         = "",
  File          = "",
  Folder        = "",
  Function      = "󰊕",
  Interface     = "",
  Key           = "",
  Keyword       = "",
  Method        = "",
  Module        = "",
  Namespace     = "󰌗",
  Null          = "󰟢",
  Number        = "",
  Object        = "",
  Operator      = "",
  Package       = "",
  Parameter     = "",
  Property      = "",
  Reference     = "󰈇",
  Snippet       = "",
  String        = "",
  Struct        = "",
  Table         = "",
  TabNine       = "󱃲",
  Tag           = "",
  Text          = "󰉿",
  TypeParameter = "󰊄",
  Unit          = "",
  Value         = "󰏿",
  Variable      = "",
  Watch         = "",
}

M.dap = {
  Breakpoint          = "󰏃",
  BreakpointCondition = "󰁘",
  BreakpointRejected  = "󰅝",
  LogPoint            = "󰆉",
  Stopped             = "→",
}

return M
