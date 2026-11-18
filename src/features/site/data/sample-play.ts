import type {
  PublicBadge,
  PublicMoment,
  PublicPokemon,
  PublicSamplePlay,
} from "@/config/public-art";

/*
 * The example Play the front page shows: a late Pokémon Red run, the game
 * most people know. Every name, date and number below is the example's,
 * drawn as copy; none of it is anyone's data.
 */
export const samplePlay: PublicSamplePlay = {
  game: { name: "Pokémon Red", region: "Kanto", slug: "red" },
  name: "Red · Back to Kanto",
  playtimeMinutes: 28 * 60 + 12,
  status: "Playing",
  trainer: "Sam",
};

/* How far along the example Play is, as its entry's bars read it. */
export const samplePlayProgress = [
  { label: "Story", percent: 89 },
  { label: "Pokédex", percent: 62 },
] as const;

export const samplePlayTeam: readonly PublicPokemon[] = [
  { name: "Charizard", slug: "charizard", type: "fire" },
  { name: "Pikachu", slug: "pikachu", type: "electric" },
  { name: "Lapras", slug: "lapras", type: "water" },
  { name: "Snorlax", slug: "snorlax", type: "normal" },
  { name: "Gengar", slug: "gengar", type: "ghost" },
  { name: "Dragonite", slug: "dragonite", type: "dragon" },
];

/* Kanto's eight gym badges, in order, by their gyms' types. */
export const samplePlayBadges: readonly (PublicBadge & { name: string })[] = [
  { name: "Boulder Badge", spriteSlug: "boulder-badge", type: "rock" },
  { name: "Cascade Badge", spriteSlug: "cascade-badge", type: "water" },
  { name: "Thunder Badge", spriteSlug: "thunder-badge", type: "electric" },
  { name: "Rainbow Badge", spriteSlug: "rainbow-badge", type: "grass" },
  { name: "Soul Badge", spriteSlug: "soul-badge", type: "poison" },
  { name: "Marsh Badge", spriteSlug: "marsh-badge", type: "psychic" },
  { name: "Volcano Badge", spriteSlug: "volcano-badge", type: "fire" },
  { name: "Earth Badge", spriteSlug: "earth-badge", type: "ground" },
];

type SampleRecord = {
  description?: string;
  headline: readonly (string | { bold: string })[];
  kicker: string;
  moment: PublicMoment;
};

/* Two moments from the Play's history, newest first: a badge and a note. */
export const samplePlayHistory: readonly SampleRecord[] = [
  {
    description: "Defeated Giovanni.",
    headline: [{ bold: "Earth Badge" }],
    kicker: "Milestone · Aug 12",
    moment: { kind: "badge", spriteSlug: "earth-badge", type: "ground" },
  },
  {
    headline: ["“Pausing before Victory Road.”"],
    kicker: "Note · Jul 14",
    moment: { kind: "note" },
  },
];
