import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PageHeader } from "@/shared/components/page-header";
import { Button } from "@/shared/components/ui/button";

/* The page head: Team, one line of counts, and the page's main button. */
export const TeamRosterHead = ({
  canAdd,
  onAdd,
  summary,
}: {
  /* False once the team and the reserve are both full. */
  canAdd: boolean;
  onAdd: () => void;
  summary: string;
}) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Team"
      description={summary}
      className="pt-0 sm:pt-0"
      action={
        <Button
          type="button"
          disabled={!canAdd}
          onClick={onAdd}
          aria-label={
            canAdd ? undefined : "Add Pokémon: your team and reserve are full"
          }
        >
          <AppIcon icon={appIcons.actions.create} inline="start" />
          Add Pokémon
        </Button>
      }
    />
  );
};
