# Known Skill Pages

More known skills than 17, shown 17 at a time on the status page and in the skill window.

## Showcase

### Aegis with too many skills learned

<img width="483" height="662" alt="image" src="https://github.com/user-attachments/assets/cb9595aa-e2d8-4abc-82b1-d206a2fec813" />

### Second Page

<img width="472" height="610" alt="image" src="https://github.com/user-attachments/assets/9d052901-c9cf-4df4-b0eb-5ac9185e396b" />

### Skills Page Buttons at the top

<img width="692" height="620" alt="image" src="https://github.com/user-attachments/assets/9b888692-3ae7-41a5-89a9-c47d368702dd" />

## What it changes

A character can know at most 17 skills, plus the item effect skill. Passives, knowledges, Boosts and
the skills a class wants for every element fill that list early, and then the skill window has no
room even for the skill that would free some. This mod raises the most to 34 (a setting, 17 to 51):

- **New skills** can be bought or given past 17, up to the most, and work as the first 17 do: in
  fights, on the hotbar, in the stats (passives and Boosts count), refilled by the game's heals and
  rests.
- **The status page** shows the known skills 17 at a time, sorted as the game sorts them, with the
  item effect slot always last. A slim scroll bar between the skills and the equipment turns the
  page, and so does the mouse wheel over the skills. The page opens on page 1, and on page 1 again
  for another character.
- **The skill window** has two arrows beside the KNOWN SKILLS heading for the same pages. REMOVE and
  the upgrade buttons work on the skill shown, on any page.
- With 17 known skills or fewer nothing looks different: one page, no bar, no arrows.

## With other mods

- **Potential Skill Pages:** pages the buy list on the right; this mod pages the known list on the
  left. Both work at once.
- **Skill Removal Payback, Loadouts, Better Elemental Knowledge** and other mods that buy, erase or
  count skills see every known skill, on every page, and count free rows to the new most.

## Keys and settings

Config, Mods tab, **Known Skill Pages**:

| Setting | What it does | Default |
| --- | --- | --- |
| Most known skills | How many known skills a character can have, 17 to 51. 17 is the game's own. | 34 |

The setting takes effect the next time the game starts. Up to 34 is the recommended range: past it a
character keeps more passives and knowledges at once than the game was balanced for.

A smaller number than a character already has does not erase anything: the skills that no longer
fit wait in the mod's data beside the save, and come back at a save or a load once there is room
(or the number is raised again). A skill the character learned again in the meantime is not
doubled.

## Saves

The save itself stays the game's: it holds each character's first 18 rows, as the game writes them.
The skills past those rows are kept in the mod's data next to the save file and come back when the
save is loaded with the mod.

If you remove the mod, characters keep only the skills in the game's rows (mostly the ones learned
first), and the first save without the mod drops the others for good. Use Skill Again on such a
character to get all of the skill points back and buy the skills again.

## Install

Needs [RQ MOD](https://github.com/RQ-Modding/RQ-Mod) with loader **2.54.0** or newer. Extract the
release zip into the game's `mods` folder, so that you have `mods/known-skill-pages/mod.json`.

## How it works

`rq.knownskills.install{ most = n }` makes every character's skill rows longer and changes the
numbers the game's code counts them with, keeps the rows past the game's in `rq.savedata`, and
shows the known list in pages with its scroll bar and arrows. The setting is a `rq.config.settings`
slider.

## License

MIT, see [LICENSE](LICENSE).
