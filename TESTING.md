# Testing Known Skill Pages

For people and agents who test the mod in the game. Read it before you use anything the mod adds.
Assume nothing about the mod when it is not installed: check `logs\rqmod.log` for
`Loading known-skill-pages` and the lines
`rq.knownskills: on (<most> known skills at most, rows 1 to <most + 3>, the page bar and arrows)` and
`known-skill-pages: <most> known skills at most`.

## What it adds

- **Longer skill rows:** every character's `Ｃ[iic].スキル` has `most` + 4 rows (38 at the default
  34); new skills take rows 1 to `most` + 1. `rq.chara.skill_room` counts to `most`.
- **Controls** (kit controls in `rq.ui.get`, only while the character shown has more than 17 known
  skills):
  - status page: `scrollbar-known-pages` at x 414, y 127, 14 x 440, between the known skills and
    the equipment column. Its arrows are the top and bottom 40 pixels. The wheel over the skills
    (x 271 to 427, y 127 to 566) turns the page without changing the character.
  - skill window: `button-known-prev` at 274, 95 and `button-known-next` at 470, 95, beside the
    KNOWN SKILLS heading (40 x 20 each). The one at an end is listed with `enabled = false`.
- **`rq.ui.get` fields:** `status.knownPage` and `knownPages` on the status page,
  `skillShop.knownPage` and `knownPages` in the skill window.
- **Setting:** Config, Mods tab, Known Skill Pages, Most known skills (slider, 17 to 51, default 34,
  read when the game starts).

Do not invent other controls. A click over a kit control stays with the kit: move the cursor away
before a right click that should close the skill window.

## How to check it

1. Give a character more than 17 known skills (`rq.chara.grant`, or buy them in the skill window).
   Open the status page: the bar shows, page 1 has the first 17 in the game's order and the item
   effect slot last.
2. Wheel down over the skills, or click the bar's lower arrow: page 2 has the rest. The character
   does not change.
3. Open the skill window: page 1 again (another character resets to page 1, the same keeps its
   page). The right arrow shows page 2 in the known column; REMOVE or upgrade there acts on the skill
   shown.
4. Put a skill from page 2 on the hotbar and use it in a fight; a Boost past row 18 raises the stat
   after `rq.chara.recalc`.
5. Save through the SYSTEM menu and load: every skill is back in its row. The save file's arrays
   have 21 rows.

## Forcing it for a test

`rq.mod.get("known-skill-pages")` returns `most` (the number installed this start) and `settings`
(the `rq.config.settings` handle). `rq.knownskills.page()`, `page_count()` and `set_page(n)` read and
turn the page. The setting changes only at the next start.

## Test Lab

`known-skills` (with this mod installed): the longer rows on every character, a Boost and Stone
Throw past row 18 in the stats and a fight, the refill, the game's free-row check, the bar, the
wheel and the arrows with shots (`ksp-status-1.png`, `ksp-status-2.png`, `ksp-window-2.png`), a
full list at the new most, a save and a load, a row past the most kept beside the save until a row
is free, Skill Again, and Biscuitta put back.
