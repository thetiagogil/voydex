export type MainlineActionResult =
  | {
      ok: true;
    }
  | {
      error: string;
      ok: false;
    };

export type CompleteMainlinePlayMilestoneInput = {
  milestoneId: number;
  playId: string;
};

export type SetMainlinePokedexSpeciesProgressInput = {
  isCaught: boolean;
  isSeen: boolean;
  playId: string;
  speciesId: number;
};

export type SetMainlineCollectibleEntryProgressInput = {
  collectibleEntryId: number;
  isCollected: boolean;
  playId: string;
};
