import { GameDetailInfoActions } from "@/modules/codex/features/games/detail/components/top-section/game-detail-info-actions";
import { GameDetailInfoFacts } from "@/modules/codex/features/games/detail/components/top-section/game-detail-info-facts";
import type { GameDetailData } from "@/modules/reference/types";
import { Card, CardContent } from "@/shared/components/ui/card";

type GameDetailInfoCardProps = {
  data: GameDetailData;
};

const getGameDetailMetadata = (data: GameDetailData) => {
  return [
    data.game.release_year,
    data.region?.name,
    data.generation?.name ?? "Unknown generation",
  ]
    .filter(Boolean)
    .join(" \u2022 ");
};

const GameDetailInfoSummary = ({ data }: GameDetailInfoCardProps) => {
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

const GameDetailInfoHeading = ({ data }: GameDetailInfoCardProps) => {
  return (
    <div>
      <h1
        id="game-detail-title"
        className="text-foreground text-3xl leading-tight font-semibold tracking-normal sm:text-4xl lg:text-5xl"
      >
        {data.game.name}
      </h1>
      <p className="text-muted-foreground mt-4 text-base leading-7">
        {getGameDetailMetadata(data)}
      </p>
    </div>
  );
};

export const GameDetailInfoCard = ({ data }: GameDetailInfoCardProps) => {
  return (
    <Card className="w-full min-w-0 gap-0 [--card-spacing:--spacing(5)] sm:[--card-spacing:--spacing(6)] lg:[--card-spacing:--spacing(7)]">
      <CardContent className="flex min-w-0 flex-col gap-5">
        <div className="flex min-w-0 flex-col justify-center gap-6">
          <div className="flex min-w-0 flex-col gap-5">
            <GameDetailInfoHeading data={data} />
            <GameDetailInfoSummary data={data} />
          </div>

          <GameDetailInfoActions data={data} />
        </div>

        <GameDetailInfoFacts data={data} />
      </CardContent>
    </Card>
  );
};
