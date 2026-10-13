import type {
  SiteMoment,
  SitePokemon,
  SiteTypeSlug,
} from "@/features/site/types";

/*
 * The example Play the public pages show ("Here's one."): a late Pokémon
 * Sword run. Every name, date and number below is the example's, drawn as
 * copy; none of it is anyone's data.
 */
const grookey: SitePokemon = {
  name: "Grookey",
  sprite_slug: "grookey",
  type: "grass",
};
const toxtricity: SitePokemon = {
  name: "Toxtricity",
  sprite_slug: "toxtricity",
  type: "electric",
};

export const samplePlay = {
  eyebrow: "Pokémon Sword · Galar · Generation VIII",
  game: { name: "Pokémon Sword", slug: "sword" },
  name: "Sword · Late Journey",
  playtime: "32h 54m",
  tabs: ["Overview", "Team", "Progress", "History", "Settings"],
  tracks: ["Story", "Pokédex", "Collectibles"],
  trainer: "Trainer Bea",
} as const;

type SampleStoryBeat = {
  detail: string;
  moment: SiteMoment;
  title: string;
  when: string;
};

/* Home's strip: the Play's moments in order, then what comes next. */
export const samplePlayStory: {
  beats: readonly SampleStoryBeat[];
  next: { detail: string; title: string };
} = {
  beats: [
    {
      detail: "With Grookey, nicknamed Buddy",
      moment: { kind: "pokemon", pokemon: grookey },
      title: "The journey began",
      when: "May 7",
    },
    {
      detail: "Into Toxtricity, at Lv. 30",
      moment: { kind: "pokemon", pokemon: toxtricity },
      title: "Toxel evolved",
      when: "Jun 30",
    },
    {
      detail:
        "“Pausing here. Mustard's final trial keeps ending the same way.”",
      moment: { kind: "note" },
      title: "A note to self",
      when: "Jul 14",
    },
    {
      detail: "The eighth badge, from Raihan",
      moment: { kind: "badge", type: "dragon" },
      title: "Dragon Badge",
      when: "Aug 12",
    },
  ],
  next: { detail: "Wyndon Stadium", title: "Champion Cup" },
};

export const samplePlayTeam: readonly SitePokemon[] = [
  { name: "Rillaboom", sprite_slug: "rillaboom", type: "grass" },
  { name: "Corviknight", sprite_slug: "corviknight", type: "flying" },
  { name: "Drednaw", sprite_slug: "drednaw", type: "water" },
  toxtricity,
  { name: "Grimmsnarl", sprite_slug: "grimmsnarl", type: "dark" },
  { name: "Dragapult", sprite_slug: "dragapult", type: "dragon" },
];

/* Galar's eight gym badges, in order, by their gyms' types. */
export const samplePlayBadges: readonly {
  name: string;
  type: SiteTypeSlug;
}[] = [
  { name: "Grass Badge", type: "grass" },
  { name: "Water Badge", type: "water" },
  { name: "Fire Badge", type: "fire" },
  { name: "Fighting Badge", type: "fighting" },
  { name: "Fairy Badge", type: "fairy" },
  { name: "Rock Badge", type: "rock" },
  { name: "Dark Badge", type: "dark" },
  { name: "Dragon Badge", type: "dragon" },
];

type SamplePokedexEntry = SitePokemon & {
  number: string;
  state: "caught" | "missing" | "seen";
  types: readonly SiteTypeSlug[];
};

export const samplePlayPokedex: readonly SamplePokedexEntry[] = [
  {
    name: "Corviknight",
    number: "#023",
    sprite_slug: "corviknight",
    state: "caught",
    type: "flying",
    types: ["flying", "steel"],
  },
  {
    name: "Vikavolt",
    number: "#018",
    sprite_slug: "vikavolt",
    state: "seen",
    type: "bug",
    types: ["bug", "electric"],
  },
  {
    name: "Dottler",
    number: "#011",
    sprite_slug: "dottler",
    state: "missing",
    type: "bug",
    types: ["bug", "psychic"],
  },
];

type SampleRecord = {
  description?: string;
  headline: readonly (string | { bold: string })[];
  kicker: string;
  moment: SiteMoment;
};

/* Three moments from the Play's history, newest first. */
export const samplePlayHistory: readonly SampleRecord[] = [
  {
    description: "Defeated Raihan at Hammerlocke Stadium.",
    headline: [{ bold: "Dragon Badge" }],
    kicker: "Milestone · Aug 12, 2025 · 9:48 PM",
    moment: { kind: "badge", type: "dragon" },
  },
  {
    headline: [
      "“Pausing here. Mustard's final trial keeps ending the same way. Back once I raise something that answers Fighting types.”",
    ],
    kicker: "Journal note · Jul 14, 2025 · 10:40 PM",
    moment: { kind: "note" },
  },
  {
    description: "Evolved at Lv. 30 into the Amped form.",
    headline: [
      { bold: "Toxtricity" },
      " evolved from ",
      { bold: "Toxel" },
      ".",
    ],
    kicker: "Evolved · Jun 30, 2025 · 7:20 PM",
    moment: { kind: "pokemon", pokemon: toxtricity },
  },
];
