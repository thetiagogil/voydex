-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen7 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Breakneck Blitz Generation VII
  (622, 7, 1, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- All-Out Pummeling Generation VII
  (624, 7, 7, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Supersonic Skystrike Generation VII
  (626, 7, 10, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Acid Downpour Generation VII
  (628, 7, 8, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Tectonic Rage Generation VII
  (630, 7, 9, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Continental Crush Generation VII
  (632, 7, 13, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Savage Spin-Out Generation VII
  (634, 7, 12, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Never-Ending Nightmare Generation VII
  (636, 7, 14, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Corkscrew Crash Generation VII
  (638, 7, 17, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Inferno Overdrive Generation VII
  (640, 7, 2, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Hydro Vortex Generation VII
  (642, 7, 3, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Bloom Doom Generation VII
  (644, 7, 5, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Gigavolt Havoc Generation VII
  (646, 7, 4, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Shattered Psyche Generation VII
  (648, 7, 11, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Subzero Slammer Generation VII
  (650, 7, 6, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Devastating Drake Generation VII
  (652, 7, 15, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Black Hole Eclipse Generation VII
  (654, 7, 16, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Twinkle Tackle Generation VII
  (656, 7, 18, NULL, NULL, 1, 0, 'variable', 'A Z-Move whose power depends on the move it comes from.'),
  -- Catastropika Generation VII
  (658, 7, 4, 210, NULL, 1, 0, 'physical', 'Pikachu''s own Z-Move; a plain attack with no added effect.'),
  -- Shore Up Generation VII
  (659, 7, 9, NULL, NULL, 5, 0, 'status', 'Restores half of the user''s max HP, or more in a sandstorm.'),
  -- First Impression Generation VII
  (660, 7, 12, 90, 100, 10, 2, 'physical', 'Strikes first (+2 priority); works only on the user''s first turn out.'),
  -- Baneful Bunker Generation VII
  (661, 7, 8, NULL, NULL, 10, 4, 'status', 'Blocks moves this turn and poisons a contact attacker.'),
  -- Spirit Shackle Generation VII
  (662, 7, 14, 80, 100, 10, 0, 'physical', 'Stops the target from fleeing or switching out.'),
  -- Darkest Lariat Generation VII
  (663, 7, 16, 85, 100, 10, 0, 'physical', 'Ignores the target''s stat changes.'),
  -- Sparkling Aria Generation VII
  (664, 7, 3, 90, 100, 10, 0, 'special', 'Cures the target of a burn.'),
  -- Ice Hammer Generation VII
  (665, 7, 6, 100, 90, 10, 0, 'physical', 'Lowers the user''s Speed by one stage.'),
  -- Floral Healing Generation VII
  (666, 7, 18, NULL, NULL, 10, 0, 'status', 'Restores half of the target''s max HP, or more on Grassy Terrain.'),
  -- High Horsepower Generation VII
  (667, 7, 9, 95, 95, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Strength Sap Generation VII
  (668, 7, 5, NULL, 100, 10, 0, 'status', 'Lowers the target''s Attack by one stage and heals the user by the target''s Attack stat.'),
  -- Solar Blade Generation VII
  (669, 7, 5, 125, 100, 10, 0, 'physical', 'Charges on the first turn and strikes on the second, or fires at once in harsh sunlight.'),
  -- Leafage Generation VII
  (670, 7, 5, 40, 100, 40, 0, 'physical', 'A plain attack with no added effect.'),
  -- Spotlight Generation VII
  (671, 7, 1, NULL, NULL, 15, 3, 'status', 'Makes the target draw every attack this turn.'),
  -- Toxic Thread Generation VII
  (672, 7, 8, NULL, 100, 20, 0, 'status', 'Poisons the target and lowers its Speed by one stage.'),
  -- Laser Focus Generation VII
  (673, 7, 1, NULL, NULL, 30, 0, 'status', 'Makes the user''s next attack a critical hit.'),
  -- Gear Up Generation VII
  (674, 7, 17, NULL, NULL, 20, 0, 'status', 'Raises the Attack and Sp. Atk of allies with Plus or Minus by one stage.'),
  -- Throat Chop Generation VII
  (675, 7, 16, 80, 100, 15, 0, 'physical', 'Stops the target from using sound moves for two turns.'),
  -- Pollen Puff Generation VII
  (676, 7, 12, 90, 100, 15, 0, 'special', 'Damages a foe, or heals an ally by half of its max HP.'),
  -- Anchor Shot Generation VII
  (677, 7, 17, 80, 100, 20, 0, 'physical', 'Stops the target from fleeing or switching out.'),
  -- Psychic Terrain Generation VII
  (678, 7, 11, NULL, NULL, 10, 0, 'status', 'Fills the field with psychic power for five turns, powering up Psychic moves and blocking priority moves.'),
  -- Lunge Generation VII
  (679, 7, 12, 80, 100, 15, 0, 'physical', 'Lowers the target''s Attack by one stage.'),
  -- Fire Lash Generation VII
  (680, 7, 2, 80, 100, 15, 0, 'physical', 'Lowers the target''s Defense by one stage.'),
  -- Power Trip Generation VII
  (681, 7, 16, 20, 100, 10, 0, 'physical', 'Gains 20 power for each of the user''s stat boosts.'),
  -- Burn Up Generation VII
  (682, 7, 2, 130, 100, 5, 0, 'special', 'Removes the user''s Fire type; only a Fire-type user can use it.'),
  -- Speed Swap Generation VII
  (683, 7, 11, NULL, NULL, 10, 0, 'status', 'Swaps Speed stats with the target.'),
  -- Smart Strike Generation VII
  (684, 7, 17, 70, NULL, 10, 0, 'physical', 'A plain attack that never misses.'),
  -- Purify Generation VII
  (685, 7, 8, NULL, NULL, 20, 0, 'status', 'Cures the target''s status condition and heals the user by half of its max HP.'),
  -- Revelation Dance Generation VII
  (686, 7, 1, 90, 100, 15, 0, 'special', 'Its type matches the user''s primary type.'),
  -- Core Enforcer Generation VII
  (687, 7, 15, 100, 100, 10, 0, 'special', 'Suppresses the Ability of a target that has already moved this turn.'),
  -- Trop Kick Generation VII
  (688, 7, 5, 70, 100, 15, 0, 'physical', 'Lowers the target''s Attack by one stage.'),
  -- Instruct Generation VII
  (689, 7, 11, NULL, NULL, 15, 0, 'status', 'Makes the target use its last move again.'),
  -- Beak Blast Generation VII
  (690, 7, 10, 100, 100, 15, -3, 'physical', 'Heats up first, burning attackers that make contact, then strikes last.'),
  -- Clanging Scales Generation VII
  (691, 7, 15, 110, 100, 5, 0, 'special', 'Lowers the user''s Defense by one stage.'),
  -- Dragon Hammer Generation VII
  (692, 7, 15, 90, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Brutal Swing Generation VII
  (693, 7, 16, 60, 100, 20, 0, 'physical', 'A plain attack with no added effect.'),
  -- Aurora Veil Generation VII
  (694, 7, 6, NULL, NULL, 20, 0, 'status', 'Weakens physical and special attacks against the user''s side for five turns; needs hail or snow.'),
  -- Sinister Arrow Raid Generation VII
  (695, 7, 14, 180, NULL, 1, 0, 'physical', 'Decidueye''s own Z-Move; a plain attack with no added effect.'),
  -- Malicious Moonsault Generation VII
  (696, 7, 16, 180, NULL, 1, 0, 'physical', 'Incineroar''s own Z-Move; a plain attack with no added effect.'),
  -- Oceanic Operetta Generation VII
  (697, 7, 3, 195, NULL, 1, 0, 'special', 'Primarina''s own Z-Move; a plain attack with no added effect.'),
  -- Guardian of Alola Generation VII
  (698, 7, 18, NULL, NULL, 1, 0, 'special', 'The Tapu Z-Move; cuts the target''s HP by 3/4.'),
  -- Soul-Stealing 7-Star Strike Generation VII
  (699, 7, 14, 195, NULL, 1, 0, 'physical', 'Marshadow''s own Z-Move; a plain attack with no added effect.'),
  -- Stoked Sparksurfer Generation VII
  (700, 7, 4, 175, NULL, 1, 0, 'special', 'Alolan Raichu''s own Z-Move; paralyzes the target.'),
  -- Pulverizing Pancake Generation VII
  (701, 7, 1, 210, NULL, 1, 0, 'physical', 'Snorlax''s own Z-Move; a plain attack with no added effect.'),
  -- Extreme Evoboost Generation VII
  (702, 7, 1, NULL, NULL, 1, 0, 'status', 'Eevee''s own Z-Move; raises all of the user''s stats by two stages.'),
  -- Genesis Supernova Generation VII
  (703, 7, 11, 185, NULL, 1, 0, 'special', 'Mew''s own Z-Move; sets Psychic Terrain after it hits.'),
  -- Shell Trap Generation VII
  (704, 7, 2, 150, 100, 5, -3, 'special', 'Sets a trap that blasts the attacker if a physical move hits the user first.'),
  -- Fleur Cannon Generation VII
  (705, 7, 18, 130, 90, 5, 0, 'special', 'Lowers the user''s Sp. Atk by two stages.'),
  -- Psychic Fangs Generation VII
  (706, 7, 11, 85, 100, 10, 0, 'physical', 'Breaks Reflect, Light Screen and Aurora Veil on the target''s side.'),
  -- Stomping Tantrum Generation VII
  (707, 7, 9, 75, 100, 10, 0, 'physical', 'Doubles in power if the user''s last move failed.'),
  -- Shadow Bone Generation VII
  (708, 7, 14, 85, 100, 10, 0, 'physical', 'May lower the target''s Defense by one stage (20% chance).'),
  -- Accelerock Generation VII
  (709, 7, 13, 40, 100, 20, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Liquidation Generation VII
  (710, 7, 3, 85, 100, 10, 0, 'physical', 'May lower the target''s Defense by one stage (20% chance).'),
  -- Prismatic Laser Generation VII
  (711, 7, 11, 160, 100, 10, 0, 'special', 'The user must recharge on the next turn.'),
  -- Spectral Thief Generation VII
  (712, 7, 14, 90, 100, 10, 0, 'physical', 'Steals the target''s stat boosts before attacking.'),
  -- Sunsteel Strike Generation VII
  (713, 7, 17, 100, 100, 5, 0, 'physical', 'Ignores the target''s Ability.'),
  -- Moongeist Beam Generation VII
  (714, 7, 14, 100, 100, 5, 0, 'special', 'Ignores the target''s Ability.'),
  -- Tearful Look Generation VII
  (715, 7, 1, NULL, NULL, 20, 0, 'status', 'Lowers the target''s Attack and Sp. Atk by one stage; never misses.'),
  -- Zing Zap Generation VII
  (716, 7, 4, 80, 100, 10, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Nature's Madness Generation VII
  (717, 7, 18, NULL, 90, 10, 0, 'special', 'Cuts the target''s current HP in half.'),
  -- Multi-Attack Generation VII
  (718, 7, 1, 90, 100, 10, 0, 'physical', 'Its type matches the Memory the user holds.'),
  -- 10,000,000 Volt Thunderbolt Generation VII
  (719, 7, 4, 195, NULL, 1, 0, 'special', 'Pikachu''s own Z-Move in a cap; has a high critical-hit ratio.'),
  -- Mind Blown Generation VII
  (720, 7, 2, 150, 100, 5, 0, 'special', 'The user loses half of its max HP to blast every Pokémon around it.'),
  -- Plasma Fists Generation VII
  (721, 7, 4, 100, 100, 15, 0, 'physical', 'Turns Normal moves into Electric moves for the rest of the turn.'),
  -- Photon Geyser Generation VII
  (722, 7, 11, 100, 100, 5, 0, 'special', 'Uses Attack or Sp. Atk, whichever is higher, and ignores the target''s Ability.'),
  -- Light That Burns the Sky Generation VII
  (723, 7, 11, 200, NULL, 1, 0, 'special', 'Ultra Necrozma''s own Z-Move; uses its higher attacking stat and ignores the target''s Ability.'),
  -- Searing Sunraze Smash Generation VII
  (724, 7, 17, 200, NULL, 1, 0, 'physical', 'Solgaleo''s own Z-Move; ignores the target''s Ability.'),
  -- Menacing Moonraze Maelstrom Generation VII
  (725, 7, 14, 200, NULL, 1, 0, 'special', 'Lunala''s own Z-Move; ignores the target''s Ability.'),
  -- Let's Snuggle Forever Generation VII
  (726, 7, 18, 190, NULL, 1, 0, 'physical', 'Mimikyu''s own Z-Move; a plain attack with no added effect.'),
  -- Splintered Stormshards Generation VII
  (727, 7, 13, 190, NULL, 1, 0, 'physical', 'Lycanroc''s own Z-Move; clears any terrain after it hits.'),
  -- Clangorous Soulblaze Generation VII
  (728, 7, 15, 185, NULL, 1, 0, 'special', 'Kommo-o''s own Z-Move; raises all of the user''s stats by one stage.'),
  -- Zippy Zap Generation VII
  (729, 7, 4, 50, 100, 15, 2, 'physical', 'Strikes first (+2 priority) and always lands a critical hit.'),
  -- Splishy Splash Generation VII
  (730, 7, 3, 90, 100, 15, 0, 'special', 'May paralyze the target (30% chance).'),
  -- Floaty Fall Generation VII
  (731, 7, 10, 90, 95, 15, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Pika Papow Generation VII
  (732, 7, 4, NULL, NULL, 20, 0, 'special', 'Stronger the more the user likes its trainer; never misses.'),
  -- Bouncy Bubble Generation VII
  (733, 7, 3, 90, 100, 15, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Buzzy Buzz Generation VII
  (734, 7, 4, 90, 100, 15, 0, 'special', 'Paralyzes the target if it hits.'),
  -- Sizzly Slide Generation VII
  (735, 7, 2, 90, 100, 15, 0, 'physical', 'Burns the target if it hits.'),
  -- Glitzy Glow Generation VII
  (736, 7, 11, 90, 100, 15, 0, 'special', 'Sets up Light Screen on the user''s side after it hits.'),
  -- Baddy Bad Generation VII
  (737, 7, 16, 90, 100, 15, 0, 'special', 'Sets up Reflect on the user''s side after it hits.'),
  -- Sappy Seed Generation VII
  (738, 7, 5, 90, 100, 15, 0, 'physical', 'Plants Leech Seed on the target after it hits.'),
  -- Freezy Frost Generation VII
  (739, 7, 6, 90, 100, 15, 0, 'special', 'Resets the stat changes of every Pokémon on the field after it hits.'),
  -- Sparkly Swirl Generation VII
  (740, 7, 18, 90, 100, 15, 0, 'special', 'Cures the status conditions of the user''s whole party after it hits.'),
  -- Veevee Volley Generation VII
  (741, 7, 1, NULL, NULL, 20, 0, 'physical', 'Stronger the more the user likes its trainer; never misses.'),
  -- Double Iron Bash Generation VII
  (742, 7, 17, 60, 100, 5, 0, 'physical', 'Hits twice in a row; may make the target flinch (30% chance).');
