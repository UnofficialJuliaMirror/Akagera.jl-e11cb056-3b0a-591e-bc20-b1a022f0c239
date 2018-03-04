mutable struct AnimeContainer
    interval::Int
    frames::Vector{String}
    animate_type::String

    function AnimeContainer(interval::Int, frames::Vector{String}, animate_type::String)
        self = new()
        self.interval = interval
        self.frames = frames
        self.animate_type = animate_type

        return self
    end
end

# Animes from cli-spinners goes here...

dots = AnimeContainer(
    80,
    [
        "⠋",
        "⠙",
        "⠹",
        "⠸",
        "⠼",
        "⠴",
        "⠦",
        "⠧",
        "⠇",
        "⠏"
     ],
    "linear"
)

dots2 = AnimeContainer(
    80,
    [
        "⣾",
        "⣽",
        "⣻",
        "⢿",
        "⡿",
        "⣟",
        "⣯",
        "⣷"
     ],
    "linear"
)

dots3 = AnimeContainer(
    80,
    [
        "⠋",
        "⠙",
        "⠚",
        "⠞",
        "⠖",
        "⠦",
        "⠴",
        "⠲",
        "⠳",
        "⠓"
     ],
    "linear"
)

dots4 = AnimeContainer(
    80,
    [
        "⠄",
        "⠆",
        "⠇",
        "⠋",
        "⠙",
        "⠸",
        "⠰",
        "⠠",
        "⠰",
        "⠸",
        "⠙",
        "⠋",
        "⠇",
        "⠆"
     ],
    "linear"
)

dots5 = AnimeContainer(
    80,
    [
        "⠋",
        "⠙",
        "⠚",
        "⠒",
        "⠂",
        "⠂",
        "⠒",
        "⠲",
        "⠴",
        "⠦",
        "⠖",
        "⠒",
        "⠐",
        "⠐",
        "⠒",
        "⠓",
        "⠋"
     ],
    "linear"
)

dots6 = AnimeContainer(
    80,
    [
        "⠁",
        "⠉",
        "⠙",
        "⠚",
        "⠒",
        "⠂",
        "⠂",
        "⠒",
        "⠲",
        "⠴",
        "⠤",
        "⠄",
        "⠄",
        "⠤",
        "⠴",
        "⠲",
        "⠒",
        "⠂",
        "⠂",
        "⠒",
        "⠚",
        "⠙",
        "⠉",
        "⠁"
      ],
    "linear"
)

dots7 = AnimeContainer(
    80,
    [
        "⠈",
        "⠉",
        "⠋",
        "⠓",
        "⠒",
        "⠐",
        "⠐",
        "⠒",
        "⠖",
        "⠦",
        "⠤",
        "⠠",
        "⠠",
        "⠤",
        "⠦",
        "⠖",
        "⠒",
        "⠐",
        "⠐",
        "⠒",
        "⠓",
        "⠋",
        "⠉",
        "⠈"
      ],
    "linear"
)

dots8 = AnimeContainer(
    80,
    [
        "⠁",
        "⠁",
        "⠉",
        "⠙",
        "⠚",
        "⠒",
        "⠂",
        "⠂",
        "⠒",
        "⠲",
        "⠴",
        "⠤",
        "⠄",
        "⠄",
        "⠤",
        "⠠",
        "⠠",
        "⠤",
        "⠦",
        "⠖",
        "⠒",
        "⠐",
        "⠐",
        "⠒",
        "⠓",
        "⠋",
        "⠉",
        "⠈",
        "⠈"
      ],
    "linear"
)

dots9 = AnimeContainer(
    80,
    [
        "⢹",
        "⢺",
        "⢼",
        "⣸",
        "⣇",
        "⡧",
        "⡗",
        "⡏"
     ],
    "linear"
)

dots10 = AnimeContainer(
    80,
    [
        "⢄",
        "⢂",
        "⢁",
        "⡁",
        "⡈",
        "⡐",
        "⡠"
     ],
    "linear"
)

dots11 = AnimeContainer(
    100,
    [
        "⠁",
        "⠂",
        "⠄",
        "⡀",
        "⢀",
        "⠠",
        "⠐",
        "⠈"
     ],
    "linear"
)

dots12 = AnimeContainer(
    80,
    [
        "⢀⠀",
        "⡀⠀",
        "⠄⠀",
        "⢂⠀",
        "⡂⠀",
        "⠅⠀",
        "⢃⠀",
        "⡃⠀",
        "⠍⠀",
        "⢋⠀",
        "⡋⠀",
        "⠍⠁",
        "⢋⠁",
        "⡋⠁",
        "⠍⠉",
        "⠋⠉",
        "⠋⠉",
        "⠉⠙",
        "⠉⠙",
        "⠉⠩",
        "⠈⢙",
        "⠈⡙",
        "⢈⠩",
        "⡀⢙",
        "⠄⡙",
        "⢂⠩",
        "⡂⢘",
        "⠅⡘",
        "⢃⠨",
        "⡃⢐",
        "⠍⡐",
        "⢋⠠",
        "⡋⢀",
        "⠍⡁",
        "⢋⠁",
        "⡋⠁",
        "⠍⠉",
        "⠋⠉",
        "⠋⠉",
        "⠉⠙",
        "⠉⠙",
        "⠉⠩",
        "⠈⢙",
        "⠈⡙",
        "⠈⠩",
        "⠀⢙",
        "⠀⡙",
        "⠀⠩",
        "⠀⢘",
        "⠀⡘",
        "⠀⠨",
        "⠀⢐",
        "⠀⡐",
        "⠀⠠",
        "⠀⢀",
        "⠀⡀"
      ],
    "linear"
)

line = AnimeContainer(
    130,
     [
        "-",
        "\\",
        "|",
        "/"
     ],
    "linear"
)

line2 = AnimeContainer(
    100,
    [
        "⠂",
        "-",
        "–",
        "—",
        "–",
        "-"
    ],
    "linear"
)

pipe = AnimeContainer(
    100,
    [
        "┤",
        "┘",
        "┴",
        "└",
        "├",
        "┌",
        "┬",
        "┐"
     ],
    "linear"
)

simpleDots = AnimeContainer(
    400,
    [
        ".  ",
        ".. ",
        "...",
        "   "
     ],
    "linear"
)

simpleDotsScrolling = AnimeContainer(
    200,
    [
        ".  ",
        ".. ",
        "...",
        " ..",
        "  .",
        "   "
    ],
    "linear"
)

star = AnimeContainer(
    70,
    [
        "✶",
        "✸",
        "✹",
        "✺",
        "✹",
        "✷"
    ],
    "linear"
)

star2 = AnimeContainer(
    80,
    [
        "+",
        "x",
        "*"
     ],
    "linear"
)

flip = AnimeContainer(
    70,
    [
        "_",
        "_",
        "_",
        "-",
        "`",
        "`",
        "'",
        "´",
        "-",
        "_",
        "_",
        "_"
     ],
    "linear"
)

hamburger = AnimeContainer(
    100,
    [
        "☱",
        "☲",
        "☴"
     ],
    "linear"
)

growVertical = AnimeContainer(
    120,
    [
        "▁",
        "▃",
        "▄",
        "▅",
        "▆",
        "▇",
        "▆",
        "▅",
        "▄",
        "▃"
     ],
    "linear"
)

growHorizontal = AnimeContainer(
    120,
    [
        "▏",
        "▎",
        "▍",
        "▌",
        "▋",
        "▊",
        "▉",
        "▊",
        "▋",
        "▌",
        "▍",
        "▎"
     ],
     "linear"
)

balloon = AnimeContainer(
    140,
    [
        " ",
        ".",
        "o",
        "O",
        "@",
        "*",
        " "
     ],
    "linear"
)

balloon2 = AnimeContainer(
    120,
    [
        ".",
        "o",
        "O",
        "°",
        "O",
        "o",
        "."
     ],
    "linear"
)

noise = AnimeContainer(
    100,
    [
        "▓",
        "▒",
        "░"
     ],
    "linear"
)

bounce = AnimeContainer(
    120,
    [
        "⠁",
        "⠂",
        "⠄",
        "⠂"
     ],
    "linear"
)

boxBounce = AnimeContainer(
    120,
    [
        "▖",
        "▘",
        "▝",
        "▗"
     ],
    "linear"
)

boxBounce2 = AnimeContainer(
    100,
    [
        "▌",
        "▀",
        "▐",
        "▄"
     ],
    "linear"
)

triangle = AnimeContainer(
    50,
    [
        "◢",
        "◣",
        "◤",
        "◥"
     ],
    "linear"
)

arc = AnimeContainer(
    100,
    [
        "◜",
        "◠",
        "◝",
        "◞",
        "◡",
        "◟"
     ],
    "linear"
)

circle = AnimeContainer(
    120,
    [
        "◡",
        "⊙",
        "◠"
    ],
    "linear"
)

squareCorners = AnimeContainer(
    180,
    [
        "◰",
        "◳",
        "◲",
        "◱"
    ],
    "linear"
)

circleQuarters = AnimeContainer(
    120,
    [
        "◴",
        "◷",
        "◶",
        "◵"
    ],
    "linear"
)

circleHalves = AnimeContainer(
    50,
    [
        "◐",
        "◓",
        "◑",
        "◒"
    ],
    "linear"
)

squish = AnimeContainer(
    100,
    [
        "╫",
        "╪"
    ],
    "linear"
)

toggle = AnimeContainer(
    250,
    [
        "⊶",
        "⊷"
    ],
    "linear"
)

toggle2 = AnimeContainer(
    80,
    [
        "▫",
        "▪"
    ],
    "linear"
)

toggle3 = AnimeContainer(
    120,
    [
        "□",
        "■"
    ],
    "linear"
)

toggle4 = AnimeContainer(
    100,
    [
        "■",
        "□",
        "▪",
        "▫"
    ],
    "linear"
)

toggle5 = AnimeContainer(
    100,
    [
        "▮",
        "▯"
    ],
    "linear"
)

toggle6 = AnimeContainer(
    300,
    [
        "ဝ",
        "၀"
    ],
    "linear"
)

toggle7 = AnimeContainer(
    80,
    [
        "⦾",
        "⦿"
    ],
    "linear"
)

toggle8 = AnimeContainer(
    100,
    [
        "◍",
        "◌"
    ],
    "linear"
)

toggle9 = AnimeContainer(
    100,
    [
        "◉",
        "◎"
    ],
    "linear"
)

toggle10 = AnimeContainer(
    100,
    [
        "㊂",
        "㊀",
        "㊁"
    ],
    "linear"
)

toggle11 = AnimeContainer(
    50,
    [
        "⧇",
        "⧆"
    ],
    "linear"
)

toggle12 = AnimeContainer(
    120,
    [
        "☗",
        "☖"
    ],
    "linear"
)

toggle13 = AnimeContainer(
    80,
    [
        "=",
        "*",
        "-"
    ],
    "linear"
)

arrow = AnimeContainer(
    100,
    [
        "←",
        "↖",
        "↑",
        "↗",
        "→",
        "↘",
        "↓",
        "↙"
    ],
    "linear"
)

arrow2 = AnimeContainer(
    80,
    [
        "⬆️ ",
        "↗️ ",
        "➡️ ",
        "↘️ ",
        "⬇️ ",
        "↙️ ",
        "⬅️ ",
        "↖️ "
    ],
    "linear"
)

arrow3 = AnimeContainer(
    120,
    [
        "▹▹▹▹▹",
        "▸▹▹▹▹",
        "▹▸▹▹▹",
        "▹▹▸▹▹",
        "▹▹▹▸▹",
        "▹▹▹▹▸"
    ],
    "linear"
)

bouncingBar = AnimeContainer(
    80,
    [
        "[    ]",
        "[=   ]",
        "[==  ]",
        "[=== ]",
        "[ ===]",
        "[  ==]",
        "[   =]",
        "[    ]",
        "[   =]",
        "[  ==]",
        "[ ===]",
        "[====]",
        "[=== ]",
        "[==  ]",
        "[=   ]"
    ],
    "linear"
)

bouncingBall = AnimeContainer(
    80,
    [
        "( ●    )",
        "(  ●   )",
        "(   ●  )",
        "(    ● )",
        "(     ●)",
        "(    ● )",
        "(   ●  )",
        "(  ●   )",
        "( ●    )",
        "(●     )"
    ],
    "linear"
)

smiley = AnimeContainer(
    200,
    [
        "😄 ",
        "😝 "
    ],
    "linear"
)

monkey = AnimeContainer(
    300,
    [
        "🙈 ",
        "🙈 ",
        "🙉 ",
        "🙊 "
    ],
    "linear"
)

hearts = AnimeContainer(
    100,
    [
        "💛 ",
        "💙 ",
        "💜 ",
        "💚 ",
        "❤️ "
    ],
    "linear"
)

clock = AnimeContainer(
    100,
    [
        "🕐 ",
        "🕑 ",
        "🕒 ",
        "🕓 ",
        "🕔 ",
        "🕕 ",
        "🕖 ",
        "🕗 ",
        "🕘 ",
        "🕙 ",
        "🕚 "
      ],
      "linear"
)

earth = AnimeContainer(
    180,
    [
        "🌍 ",
        "🌎 ",
        "🌏 "
    ],
    "linear"
)

moon = AnimeContainer(
    80,
    [
        "🌑 ",
        "🌒 ",
        "🌓 ",
        "🌔 ",
        "🌕 ",
        "🌖 ",
        "🌗 ",
        "🌘 "
    ],
    "linear"
)

runner = AnimeContainer(
    140,
    [
        "🚶 ",
        "🏃 "
    ],
    "linear"
)

pong = AnimeContainer(
    80,
    [
        "▐⠂       ▌",
        "▐⠈       ▌",
        "▐ ⠂      ▌",
        "▐ ⠠      ▌",
        "▐  ⡀     ▌",
        "▐  ⠠     ▌",
        "▐   ⠂    ▌",
        "▐   ⠈    ▌",
        "▐    ⠂   ▌",
        "▐    ⠠   ▌",
        "▐     ⡀  ▌",
        "▐     ⠠  ▌",
        "▐      ⠂ ▌",
        "▐      ⠈ ▌",
        "▐       ⠂▌",
        "▐       ⠠▌",
        "▐       ⡀▌",
        "▐      ⠠ ▌",
        "▐      ⠂ ▌",
        "▐     ⠈  ▌",
        "▐     ⠂  ▌",
        "▐    ⠠   ▌",
        "▐    ⡀   ▌",
        "▐   ⠠    ▌",
        "▐   ⠂    ▌",
        "▐  ⠈     ▌",
        "▐  ⠂     ▌",
        "▐ ⠠      ▌",
        "▐ ⡀      ▌",
        "▐⠠       ▌"
    ],
    "linear"
)

shark = AnimeContainer(
    120,
    [
        "▐|\\____________▌",
        "▐_|\\___________▌",
        "▐__|\\__________▌",
        "▐___|\\_________▌",
        "▐____|\\________▌",
        "▐_____|\\_______▌",
        "▐______|\\______▌",
        "▐_______|\\_____▌",
        "▐________|\\____▌",
        "▐_________|\\___▌",
        "▐__________|\\__▌",
        "▐___________|\\_▌",
        "▐____________|\\▌",
        "▐____________/|▌",
        "▐___________/|_▌",
        "▐__________/|__▌",
        "▐_________/|___▌",
        "▐________/|____▌",
        "▐_______/|_____▌",
        "▐______/|______▌",
        "▐_____/|_______▌",
        "▐____/|________▌",
        "▐___/|_________▌",
        "▐__/|__________▌",
        "▐_/|___________▌",
        "▐/|____________▌"
    ],
    "linear"
)

dqpb = AnimeContainer(
    100,
    [
        "d",
        "q",
        "p",
        "b"
    ],
    "linear"
)

weather = AnimeContainer(
    100,
    [
        "☀️ ",
        "☀️ ",
        "☀️ ",
        "🌤 ",
        "⛅️ ",
        "🌥 ",
        "☁️ ",
        "🌧 ",
        "🌨 ",
        "🌧 ",
        "🌨 ",
        "🌧 ",
        "🌨 ",
        "⛈ ",
        "🌨 ",
        "🌧 ",
        "🌨 ",
        "☁️ ",
        "🌥 ",
        "⛅️ ",
        "🌤 ",
        "☀️ ",
        "☀️ "
    ],
    "linear"
)

christmas = AnimeContainer(
    400,
    [
        "🌲",
        "🎄"
    ],
    "linear"
)
