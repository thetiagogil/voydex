import { GameDetailCoverArt } from "@/modules/codex/features/games/detail/components/top-section/game-detail-cover-art";
import { GameDetailInfoCard } from "@/modules/codex/features/games/detail/components/top-section/game-detail-info-card";
import { GameDetailTopSectionLayout } from "@/modules/codex/features/games/detail/components/top-section/game-detail-top-section-layout";
import type { GameDetailData } from "@/modules/codex/shared/types";

type GameDetailTopSectionProps = {
  data: GameDetailData;
};

export const GameDetailTopSection = ({ data }: GameDetailTopSectionProps) => {
  return (
    <GameDetailTopSectionLayout
      labelledBy="game-detail-title"
      cover={<GameDetailCoverArt data={data} />}
    >
      <GameDetailInfoCard data={data} />
    </GameDetailTopSectionLayout>
  );
};
