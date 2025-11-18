import { PageHeader } from "@/components/shared/page-header";
import { getPlayStatusVariant } from "@/lib/utils/play";

export const PlayHeader = ({ play }: { play: Play }) => {
  if (!play) return null;
  return (
    <PageHeader
      title={play.data.name}
      badge={{
        label: play.data.status,
        variant: getPlayStatusVariant(play.data.status),
      }}
      metadata={`${play.data.game.name} • ${play.data.game.generation.name}`}
    />
  );
};
