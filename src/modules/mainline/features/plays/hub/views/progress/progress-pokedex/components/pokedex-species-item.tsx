import { getNextPokedexStateForMode } from "../data/pokedex-progress-model";
import type {
  MainlinePlayPokedexEntry,
  PokedexProgressState,
  PokedexUpdateMode,
} from "../types";
import { PokedexSpeciesGridCard } from "./pokedex-species-grid-card";

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
  isPending,
  mode,
  onStateChange,
  state,
}: {
  entry: MainlinePlayPokedexEntry;
  isPending: boolean;
  mode: PokedexUpdateMode;
  onStateChange: (state: PokedexProgressState) => void;
  state: PokedexProgressState;
}) => {
  const nextState = getNextPokedexStateForMode({ mode, state });
  return (
    <PokedexSpeciesGridCard
      entry={entry}
      isPending={isPending}
      isPressed={state === mode}
      onToggle={() => onStateChange(nextState)}
      state={state}
      toggleLabel={getToggleLabel({
        mode,
        speciesName: entry.speciesName,
        state,
      })}
    />
  );
};
