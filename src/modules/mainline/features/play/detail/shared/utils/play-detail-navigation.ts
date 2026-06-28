export type MainlinePlayTab = "overview" | "team" | "progress";

export type MainlinePlayProgressTab =
  | "collectibles"
  | "pokedex"
  | "story"
  | "summary";

export type MainlinePlaySurface =
  | Exclude<MainlinePlayTab, "progress">
  | MainlinePlayProgressTab;

export const getActiveSurface = (
  activeTab: MainlinePlayTab,
  activeProgressTab?: MainlinePlayProgressTab,
): MainlinePlaySurface => {
  if (activeTab === "progress") {
    return activeProgressTab ?? "summary";
  }

  return activeTab;
};
