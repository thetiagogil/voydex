import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function GamesPage() {
  return (
    <>
      <PageHeader
        title="Games"
        description="Browse game details, supported Pokedexes, optional content, plays, and plans."
      />
      <EmptyState
        title="Game browse placeholder"
        description="The game selector in create flows will reuse this reference data."
      />
    </>
  );
}
