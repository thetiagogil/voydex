import { type GameInfo } from "@/lib/mock-data/types";
import { CreatePlaythroughDialog } from "./create-playthrough-dialog";

interface PlaythroughsSectionHeaderProps {
  game: GameInfo;
}

export const PlaythroughsSectionHeader = ({
  game,
}: PlaythroughsSectionHeaderProps) => {
  return (
    <div className="flex items-center justify-between">
      <h2 className="text-2xl font-semibold">My Playthroughs</h2>
      <CreatePlaythroughDialog game={game} />
    </div>
  );
};
