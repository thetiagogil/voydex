import { PageHeader } from "@/components/shared/page-header";
import { getPlayStatusVariant } from "@/lib/utils/play";

export const PlayHeader = ({ play }: { play: Play }) => (
  <PageHeader
    title={play.name}
    badge={{
      label: play.status,
      variant: getPlayStatusVariant(play.status),
    }}
    metadata={`${play.game.generation.name} • ${play.game.name}`}
  />
);
