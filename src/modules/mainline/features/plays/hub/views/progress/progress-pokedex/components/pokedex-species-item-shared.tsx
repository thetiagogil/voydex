import type { MainlinePlayPokedexEntry, PokedexProgressState } from "../types";

export type PokedexSpeciesPresentationProps = {
  entry: MainlinePlayPokedexEntry;
  isPending: boolean;
  isPressed: boolean;
  onToggle: () => void;
  state: PokedexProgressState;
  toggleLabel: string;
};
