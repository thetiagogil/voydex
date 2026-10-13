export type PlanType = { name: string; slug: string };

export type PlanGender = "female" | "genderless" | "male";

export type PlanMoveSlots = [
  number | null,
  number | null,
  number | null,
  number | null,
];

export const emptyPlanMoveSlots = (): PlanMoveSlots => [null, null, null, null];

/* One planned Pokémon in a slot, as the Planner edits and saves it. */
export type PlanMember = {
  abilityId: number | null;
  formId: number;
  gender: PlanGender | null;
  heldItemId: number | null;
  /* Its four planned move slots, in order; null for an empty slot. */
  moveIds: PlanMoveSlots;
  natureId: number | null;
  notes: string | null;
  role: string | null;
  /* 1 to 6. */
  slot: number;
  speciesId: number;
};

/*
 * What the Team check knows about a Pokémon in one version group, from the
 * reference catalogue's availability and evolutions. Facts the catalogue
 * doesn't hold are left out, never guessed.
 */
export type PlannerPokemonFacts = {
  /* Obtainable in the game only as one of its exclusives: these games' ids. */
  exclusiveToGameIds: number[];
  /* Only from an official event, never in the game itself. */
  eventOnly: boolean;
  /* Obtainable only in an expansion: that expansion's version group id. */
  expansionVersionGroupId: number | null;
  /* Only by trading from another game or a transfer. */
  outsideGameOnly: boolean;
  /* Reached only by a trade evolution, and what it holds then, if anything. */
  tradeEvolution: { heldItemName: string | null } | null;
};

export type PlannerPokemon = {
  abilities: { hidden: boolean; id: number; name: string }[];
  evolutionFamilyId: number;
  facts: PlannerPokemonFacts;
  formId: number;
  imageUrl: string | null;
  isFullyEvolved: boolean;
  name: string;
  nationalNumber: number;
  speciesId: number;
  speciesSlug: string;
  types: PlanType[];
};

/* One Pokédex of the version group (base or expansion), each species once. */
export type PlannerPokedexSection = {
  key: string;
  name: string;
  /* "The Isle of Armor expansion" under an expansion's Pokédex. */
  note: string | null;
  speciesIds: number[];
};

export type PlannerGame = {
  id: number;
  name: string;
  shortName: string;
  slug: string;
};

export type PlannerExpansion = {
  name: string;
  versionGroupId: number;
};

export type PlannerVersionGroup = {
  expansions: PlannerExpansion[];
  games: PlannerGame[];
  generationNumeral: string;
  /* For type matchups: the generation's place in the series. */
  generationOrder: number;
  id: number;
  name: string;
  regionName: string | null;
  slug: string;
};

/* A version group in the Planner's picker. */
export type PlannerVersionGroupOption = {
  gameSlugs: string[];
  generationNumeral: string;
  name: string;
  regionName: string | null;
  slug: string;
};

/* What the version group lets a build choose, from the reference capability profile. */
export type PlannerBuildFields = {
  ability: boolean;
  gender: boolean;
  heldItem: boolean;
  nature: boolean;
};

export type PlannerContext = {
  buildFields: PlannerBuildFields;
  natures: { id: number; name: string }[];
  pokemon: PlannerPokemon[];
  sections: PlannerPokedexSection[];
  /* The types that exist in the version group's generation, in chart order. */
  types: PlanType[];
  versionGroup: PlannerVersionGroup;
};

export type SavedPlan = {
  expansionVersionGroupIds: number[];
  id: string;
  /* How many Plays follow this Plan. */
  linkedPlayCount: number;
  members: PlanMember[];
  name: string;
  statusSlug: string | null;
  /* When it was last saved; a new save remounts the Planner on fresh ids. */
  updatedAt: string | null;
  versionGroupSlug: string;
};

export type PlannerPageData = {
  context: PlannerContext;
  plan: SavedPlan | null;
  /* How many Plans the trainer has, for My Plans' count. */
  planCount: number;
  /* Keys this browser's unsaved draft to the signed-in trainer. */
  trainerId: string;
  versionGroups: PlannerVersionGroupOption[];
};
