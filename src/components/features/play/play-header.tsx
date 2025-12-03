import { Header } from "@/components/shared/header";
import { Button } from "@/components/ui/button";
import { getStatusColor } from "@/lib/utils/common";

export const PlayHeader = ({ play }: { play: Play }) => (
  <Header
    size="lg"
    title={play.name}
    info={
      <div
        title={play.status}
        className={`h-3 w-3 rounded-full ${getStatusColor(play.status)}`}
      />
    }
    metadata={`${play.game.generation.name} • ${play.game.name}`}
    actions={<Button variant="outline-secondary">Edit play</Button>}
  />
);
