import { type GameInfo } from "@/lib/mock-data/types";
import { CreatePlaythroughDialog } from "./create-playthrough-dialog";

interface PlaythroughsSectionHeaderProps {
  game: GameInfo;
}

export function PlaythroughsSectionHeader({
  game,
}: PlaythroughsSectionHeaderProps) {
  return (
    <div className="flex justify-between items-center">
      <h2 className="text-2xl font-semibold">My Playthroughs</h2>
      <CreatePlaythroughDialog game={game} />
    </div>
  );
}
