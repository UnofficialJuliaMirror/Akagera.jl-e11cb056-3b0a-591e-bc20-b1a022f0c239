"""
    AnimeContainer(interval::Int, frames::Vector{String}, animate_type::String)

Construct an `AnimeContainer`, animation container literally.
"""
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

const dots = AnimeContainer(
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

const dots2 = AnimeContainer(
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

const dots3 = AnimeContainer(
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

const dots4 = AnimeContainer(
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

const dots5 = AnimeContainer(
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

const dots6 = AnimeContainer(
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

const dots7 = AnimeContainer(
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

const dots8 = AnimeContainer(
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

const dots9 = AnimeContainer(
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

const dots10 = AnimeContainer(
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

const dots11 = AnimeContainer(
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

const dots12 = AnimeContainer(
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

const line = AnimeContainer(
    130,
     [
        "-",
        "\\",
        "|",
        "/"
     ],
    "linear"
)

const line2 = AnimeContainer(
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

const pipe = AnimeContainer(
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

const simpleDots = AnimeContainer(
    400,
    [
        ".  ",
        ".. ",
        "...",
        "   "
     ],
    "linear"
)

const simpleDotsScrolling = AnimeContainer(
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

const star = AnimeContainer(
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

const star2 = AnimeContainer(
    80,
    [
        "+",
        "x",
        "*"
     ],
    "linear"
)

const flip = AnimeContainer(
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

const hamburger = AnimeContainer(
    100,
    [
        "☱",
        "☲",
        "☴"
     ],
    "linear"
)

const growVertical = AnimeContainer(
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

const growHorizontal = AnimeContainer(
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

const balloon = AnimeContainer(
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

const balloon2 = AnimeContainer(
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

const noise = AnimeContainer(
    100,
    [
        "▓",
        "▒",
        "░"
     ],
    "linear"
)

const bounce = AnimeContainer(
    120,
    [
        "⠁",
        "⠂",
        "⠄",
        "⠂"
     ],
    "linear"
)

const boxBounce = AnimeContainer(
    120,
    [
        "▖",
        "▘",
        "▝",
        "▗"
     ],
    "linear"
)

const boxBounce2 = AnimeContainer(
    100,
    [
        "▌",
        "▀",
        "▐",
        "▄"
     ],
    "linear"
)

const triangle = AnimeContainer(
    50,
    [
        "◢",
        "◣",
        "◤",
        "◥"
     ],
    "linear"
)

const arc = AnimeContainer(
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

const circle = AnimeContainer(
    120,
    [
        "◡",
        "⊙",
        "◠"
    ],
    "linear"
)

const squareCorners = AnimeContainer(
    180,
    [
        "◰",
        "◳",
        "◲",
        "◱"
    ],
    "linear"
)

const circleQuarters = AnimeContainer(
    120,
    [
        "◴",
        "◷",
        "◶",
        "◵"
    ],
    "linear"
)

const circleHalves = AnimeContainer(
    50,
    [
        "◐",
        "◓",
        "◑",
        "◒"
    ],
    "linear"
)

const squish = AnimeContainer(
    100,
    [
        "╫",
        "╪"
    ],
    "linear"
)

const toggle = AnimeContainer(
    250,
    [
        "⊶",
        "⊷"
    ],
    "linear"
)

const toggle2 = AnimeContainer(
    80,
    [
        "▫",
        "▪"
    ],
    "linear"
)

const toggle3 = AnimeContainer(
    120,
    [
        "□",
        "■"
    ],
    "linear"
)

const toggle4 = AnimeContainer(
    100,
    [
        "■",
        "□",
        "▪",
        "▫"
    ],
    "linear"
)

const toggle5 = AnimeContainer(
    100,
    [
        "▮",
        "▯"
    ],
    "linear"
)

const toggle6 = AnimeContainer(
    300,
    [
        "ဝ",
        "၀"
    ],
    "linear"
)

const toggle7 = AnimeContainer(
    80,
    [
        "⦾",
        "⦿"
    ],
    "linear"
)

const toggle8 = AnimeContainer(
    100,
    [
        "◍",
        "◌"
    ],
    "linear"
)

const toggle9 = AnimeContainer(
    100,
    [
        "◉",
        "◎"
    ],
    "linear"
)

const toggle10 = AnimeContainer(
    100,
    [
        "㊂",
        "㊀",
        "㊁"
    ],
    "linear"
)

const toggle11 = AnimeContainer(
    50,
    [
        "⧇",
        "⧆"
    ],
    "linear"
)

const toggle12 = AnimeContainer(
    120,
    [
        "☗",
        "☖"
    ],
    "linear"
)

const toggle13 = AnimeContainer(
    80,
    [
        "=",
        "*",
        "-"
    ],
    "linear"
)

const arrow = AnimeContainer(
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

const arrow2 = AnimeContainer(
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

const arrow3 = AnimeContainer(
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

const bouncingBar = AnimeContainer(
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

const bouncingBall = AnimeContainer(
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

const smiley = AnimeContainer(
    200,
    [
        "😄 ",
        "😝 "
    ],
    "linear"
)

const monkey = AnimeContainer(
    300,
    [
        "🙈 ",
        "🙈 ",
        "🙉 ",
        "🙊 "
    ],
    "linear"
)

const hearts = AnimeContainer(
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

const clock = AnimeContainer(
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

const earth = AnimeContainer(
    180,
    [
        "🌍 ",
        "🌎 ",
        "🌏 "
    ],
    "linear"
)

const moon = AnimeContainer(
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

const runner = AnimeContainer(
    140,
    [
        "🚶 ",
        "🏃 "
    ],
    "linear"
)

const pong = AnimeContainer(
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

const shark = AnimeContainer(
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

const dqpb = AnimeContainer(
    100,
    [
        "d",
        "q",
        "p",
        "b"
    ],
    "linear"
)

const weather = AnimeContainer(
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

const christmas = AnimeContainer(
    400,
    [
        "🌲",
        "🎄"
    ],
    "linear"
)
