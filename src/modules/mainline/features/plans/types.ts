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
  /*
   * The expansions that also hand it out in another version, so it stops
   * being an exclusive once one is included (Goodra is Shield-only in the
   * base game; The Isle of Armor has it in both).
   */
  exclusiveEndedByExpansionIds: number[];
  /* Only from an official event, never in the game itself. */
  eventOnly: boolean;
  /* Obtainable only in an expansion: that expansion's version group id. */
  expansionVersionGroupId: number | null;
  /* Only by trading from another game or a transfer. */
  outsideGameOnly: boolean;
  /* Reached only by a trade evolution, and what it holds then, if anything. */
  tradeEvolution: { heldItemName: string | null } | null;
};

/*
 * A Pokémon the Planner offers: one form of a species (Articuno and Galarian
 * Articuno are two), known everywhere by its form id.
 */
export type PlannerPokemon = {
  abilities: { hidden: boolean; id: number; name: string }[];
  evolutionFamilyId: number;
  facts: PlannerPokemonFacts;
  formId: number;
  formSlug: string;
  imageUrl: string | null;
  isFullyEvolved: boolean;
  /* The form's own name for a variant ("Galarian Articuno"), else the species'. */
  name: string;
  nationalNumber: number;
  speciesId: number;
  speciesSlug: string;
  types: PlanType[];
};

/*
 * One Pokédex of the version group (base or expansion), each species once:
 * its Pokédex form, then the other variants the group has, by form id.
 */
export type PlannerPokedexSection = {
  formIds: number[];
  key: string;
  name: string;
  /* "The Isle of Armor expansion" under an expansion's Pokédex. */
  note: string | null;
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

/*
 * Pokémon one save hands out only one of: a one-per-save gift and what it
 * becomes (one Kubfu, so one Urshifu), or an either-or pick (Glastrier or
 * Spectrier). A team holding two members can't be built in one save.
 */
export type PlannerAvailabilityGroup = {
  id: number;
  kind: "one-per-save" | "pick-one";
  /* By form: the forms that share the one the save hands out. */
  memberFormIds: number[];
  name: string;
  /* What the Team check says when a team holds two. */
  note: string;
  versionGroupId: number;
};

export type PlannerVersionGroup = {
  /* The one-of groups of the version group and its expansions. */
  availabilityGroups: PlannerAvailabilityGroup[];
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
  /* What each ability does in the version group, by its id. */
  abilityEffects: Record<number, string>;
  buildFields: PlannerBuildFields;
  natures: {
    decreased_stat: string | null;
    id: number;
    increased_stat: string | null;
    name: string;
  }[];
  pokemon: PlannerPokemon[];
  sections: PlannerPokedexSection[];
  /* The types that exist in the version group's generation, in chart order. */
  types: PlanType[];
  versionGroup: PlannerVersionGroup;
};

/* A Play that follows a Plan, with its current team. */
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
  /* The version it is for, by its game's slug; null for either. */
  versionGameSlug: string | null;
  versionGroupSlug: string;
};

/* What a page that hosts the Planner (the Codex) gives it, so nothing navigates away. */
export type PlannerEmbedding = {
  /* Opens the Planner of another game in the same place; false when it couldn't. */
  onSwitchVersionGroup: (slug: string) => Promise<boolean>;
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
