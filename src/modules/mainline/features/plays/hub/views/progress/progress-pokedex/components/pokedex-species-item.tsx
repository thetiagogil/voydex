import { getNextPokedexStateForMode } from "../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexEntry,
  PokedexProgressState,
  PokedexUpdateMode,
  PokedexViewMode,
} from "../types";
import { PokedexSpeciesGridCard } from "./pokedex-species-grid-card";
import { PokedexSpeciesListRow } from "./pokedex-species-list-row";

const getToggleLabel = ({
  mode,
  speciesName,
  state,
}: {
  mode: PokedexUpdateMode;
  speciesName: string;
  state: PokedexProgressState;
}) => {
  if (state === mode) {
    return mode === "caught"
      ? `Clear recorded progress for ${speciesName}`
      : `Remove Seen from ${speciesName}`;
  }

  return `Mark ${speciesName} as ${mode === "caught" ? "Caught" : "Seen"}`;
};

export const PokedexSpeciesItem = ({
  entry,
  versionGroupSlug,
  isPending,
  mode,
  onStateChange,
  state,
  viewMode,
}: {
  entry: MainlinePlayPokedexEntry;
  versionGroupSlug: string;
  isPending: boolean;
  mode: PokedexUpdateMode;
  onStateChange: (state: PokedexProgressState) => void;
  state: PokedexProgressState;
  viewMode: PokedexViewMode;
}) => {
  const nextState = getNextPokedexStateForMode({ mode, state });
  const presentationProps = {
    entry,
    versionGroupSlug,
    isPending,
    isPressed: state === mode,
    onToggle: () => onStateChange(nextState),
    state,
    toggleLabel: getToggleLabel({
      mode,
      speciesName: entry.speciesName,
      state,
    }),
  };

  return viewMode === "list" ? (
    <PokedexSpeciesListRow {...presentationProps} />
  ) : (
    <PokedexSpeciesGridCard {...presentationProps} />
  );
};
