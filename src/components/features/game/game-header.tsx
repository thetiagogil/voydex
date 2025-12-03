import { PageHeader } from "@/components/shared/page-header";

export const GameHeader = ({ game }: { game: Game }) => (
  <PageHeader
    title={game.name}
    badge={{
      label: game.type + " game",
    }}
    metadata={`${game.generation?.name} • ${game.region?.name} • ${game.release_year}`}
  />
);
