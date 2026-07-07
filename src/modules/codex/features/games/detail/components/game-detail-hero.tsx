import { GameDetailHeroActions } from "@/modules/codex/features/games/detail/components/hero/game-detail-hero-actions";
import { GameDetailHeroBackdrop } from "@/modules/codex/features/games/detail/components/hero/game-detail-hero-backdrop";
import { GameDetailHeroCoverArt } from "@/modules/codex/features/games/detail/components/hero/game-detail-hero-cover-art";
import { GameDetailHeroFacts } from "@/modules/codex/features/games/detail/components/hero/game-detail-hero-facts";
import type { GameDetailData } from "@/modules/codex/shared/types";
import { getPokemonGameColorCssVariables } from "@/shared/components/game/pokemon-game-color-styles";
import { Card } from "@/shared/components/ui/card";

type GameDetailHeroProps = {
  data: GameDetailData;
};

const getHeroMetadata = (data: GameDetailData) => {
  return [
    data.game.release_year,
    data.region?.name,
    data.generation?.name ?? "Unknown generation",
  ]
    .filter(Boolean)
    .join(" · ");
};

const GameDetailSummary = ({ data }: GameDetailHeroProps) => {
  if (!data.gameType?.description) {
    return null;
  }

  return (
    <div className="max-w-2xl">
      <p className="text-muted-foreground text-sm leading-6">
        {data.gameType.description}
      </p>
    </div>
  );
};

const GameDetailHeading = ({ data }: GameDetailHeroProps) => {
  return (
    <div>
      <h1 className="text-foreground text-3xl leading-tight font-semibold tracking-normal sm:text-4xl lg:text-5xl">
        {data.game.name}
      </h1>
      <p className="text-muted-foreground mt-4 text-base leading-7">
        {getHeroMetadata(data)}
      </p>
    </div>
  );
};

const GameDetailHeroContent = ({ data }: GameDetailHeroProps) => {
  return (
    <div className="flex min-w-0 flex-col justify-center gap-6">
      <div className="flex min-w-0 flex-col gap-5">
        <GameDetailHeading data={data} />
        <GameDetailSummary data={data} />
      </div>

      <GameDetailHeroActions data={data} />
    </div>
  );
};

export const GameDetailHero = ({ data }: GameDetailHeroProps) => {
  return (
    <Card
      style={getPokemonGameColorCssVariables(data.game.slug)}
      className="relative isolate w-full min-w-0 overflow-hidden rounded-xl p-0"
    >
      <GameDetailHeroBackdrop data={data} />
      <div className="relative z-10 flex flex-col gap-6 p-5 sm:p-6 lg:p-8">
        <div className="flex flex-col gap-6 md:flex-row md:items-center lg:gap-8">
          <div className="md:shrink-0">
            <GameDetailHeroCoverArt data={data} />
          </div>
          <div className="flex min-w-0 flex-1 flex-col gap-6">
            <GameDetailHeroContent data={data} />
            <div className="hidden lg:block">
              <GameDetailHeroFacts data={data} />
            </div>
          </div>
        </div>
        <div className="lg:hidden">
          <GameDetailHeroFacts data={data} />
        </div>
      </div>
    </Card>
  );
};
