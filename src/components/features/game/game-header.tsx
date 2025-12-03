import { Header } from "@/components/shared/header";
import { Badge } from "@/components/ui/badge";

export const GameHeader = ({ game }: { game: Game }) => (
  <Header
    size="lg"
    title={game.name}
    info={<Badge variant="outline-secondary">{game.type + " game"}</Badge>}
    metadata={`${game.generation?.name} • ${game.region?.name} • ${game.release_year}`}
  />
);
