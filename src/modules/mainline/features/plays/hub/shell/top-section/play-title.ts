import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";

/* A Play's title is its own name; without one it reads as its game's Play. */
export const getPlayTitle = (data: MainlinePlayShellData) => {
  return data.play.play_name ?? `${data.play.game_name ?? "Untitled"} Play`;
};
