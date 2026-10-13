import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

const addPokemonLabel = "Add Pokémon will be enabled with the Team picker";

/* The page head: Team, one line of counts, and the page's main button. */
export const TeamRosterHead = ({ summary }: { summary: string }) => {
  return (
    <div className="flex min-w-0 flex-wrap items-end gap-x-6 gap-y-4">
      <div className="min-w-0">
        <h2 className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]">
          Team
        </h2>
        <p className="text-ink-2 text-15 mt-1.5 font-semibold">{summary}</p>
      </div>
      <div className="w-full sm:ml-auto sm:w-auto">
        <Button type="button" disabled aria-label={addPokemonLabel}>
          <AppIcon icon={appIcons.actions.create} inline="start" />
          Add Pokémon
        </Button>
      </div>
    </div>
  );
};
