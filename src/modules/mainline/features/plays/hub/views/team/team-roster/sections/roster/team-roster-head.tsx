import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";

const addPokemonLabel = "Add Pokémon will be enabled with the Team picker";

/* The page head: Team, one line of counts, and the page's main button. */
export const TeamRosterHead = ({ summary }: { summary: string }) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Team"
      description={summary}
      className="pt-0 sm:pt-0"
      action={
        <Button type="button" disabled aria-label={addPokemonLabel}>
          <AppIcon icon={appIcons.actions.create} inline="start" />
          Add Pokémon
        </Button>
      }
    />
  );
};
