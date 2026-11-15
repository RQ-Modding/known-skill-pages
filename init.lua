-- Known Skill Pages: a character can know more than the game's 17 skills, shown 17 at a time.
-- The loader's rq.knownskills (2.54.0) makes each character's skill rows longer, keeps the rows past
-- the game's in the mod data beside the save, and gives the status page a slim scroll bar and the
-- skill window two arrows beside KNOWN SKILLS. The most known skills is a setting in Config's Mods
-- tab, read when the game starts.

if not rq.knownskills or not rq.knownskills.install or not rq.config or not rq.config.settings then
  error("known-skill-pages: rq.knownskills missing (loader 2.54.0 or newer needed)")
end

local MIN, MAX, DEFAULT = 17, 51, 34

local settings = rq.config.settings({
  id = "known-skill-pages",
  title = "Known Skill Pages",
  rows = {
    { kind = "slider", key = "most", label = "Most known skills", min = MIN, max = MAX, step = 1,
      default = DEFAULT, format = "%.0f", recommend = { MIN, DEFAULT },
      warn = "Past 34 a character keeps more passives and knowledges at once than the game was made for.",
      note = { "17 is the game's own: 17 more on each page.", "Takes effect the next time the game starts." } },
  },
})

local function most_of(v)
  v = math.tointeger(math.floor((tonumber(v) or DEFAULT) + 0.5)) or DEFAULT
  return math.min(math.max(v, MIN), MAX)
end

local most = most_of(settings.get("most"))
rq.knownskills.install({ most = most })

settings.on_change(function(key, value)
  if key == "most" and most_of(value) ~= most then
    rq.log(string.format("known-skill-pages: %d known skills from the next start (%d now)", most_of(value), most))
  end
end)

rq.log(string.format("known-skill-pages: %d known skills at most", most))

return { most = most, settings = settings }
