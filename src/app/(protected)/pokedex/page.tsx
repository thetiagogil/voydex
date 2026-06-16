import { EmptyState } from "@/components/app/empty-state";
import { PageHeader } from "@/components/app/page-header";

export default function PokedexPage() {
  return (
    <>
      <PageHeader
        title="Pokedex"
        description="Search Pokemon by generation, game, availability, type, and usage history."
      />
      <EmptyState
        title="Reference search placeholder"
        description="This route will use the reference schema and generated database types."
      />
    </>
  );
}
