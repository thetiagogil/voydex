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

const GameDetailInfoHeading = ({ data }: GameDetailInfoCardProps) => {
  return (
    <div>
      <h1
        id="game-detail-title"
        className="text-foreground font-serif text-3xl leading-tight font-semibold tracking-normal sm:text-4xl lg:text-[2.75rem]"
      >
        {data.game.name}
      </h1>
      <p className="text-muted-foreground mt-3 text-xs leading-5 font-semibold tracking-[0.08em] uppercase sm:text-sm">
        {getGameDetailMetadata(data)}
      </p>
    </div>
  );
};

export const GameDetailInfoCard = ({ data }: GameDetailInfoCardProps) => {
  return (
    <Card className="bg-card ring-app-surface-border/80 w-full min-w-0 gap-0 shadow-xs [--card-spacing:--spacing(5)] sm:[--card-spacing:--spacing(6)] lg:[--card-spacing:--spacing(7)]">
      <CardContent className="flex min-w-0 flex-col gap-5">
        <div className="flex min-w-0 flex-col justify-center gap-5">
          <GameDetailInfoHeading data={data} />

          <GameDetailInfoActions data={data} />
        </div>

        <GameDetailInfoFacts data={data} />
      </CardContent>
    </Card>
  );
};
