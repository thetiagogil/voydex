import type { ReactNode } from "react";

type GameDetailPanelsProps = {
  pokedexes: ReactNode;
  relatedGames: ReactNode;
};

export const GameDetailPanels = ({
  pokedexes,
  relatedGames,
}: GameDetailPanelsProps) => {
  return (
    <div className="grid items-start gap-4 lg:grid-cols-3 lg:[--game-detail-panels-height:17rem] xl:[--game-detail-panels-height:16.5rem]">
      <div className="lg:h-[var(--game-detail-panels-height)] lg:min-h-0">
        {pokedexes}
      </div>
      <div className="lg:col-span-2 lg:h-[var(--game-detail-panels-height)] lg:min-h-0">
        {relatedGames}
      </div>
    </div>
  );
};
