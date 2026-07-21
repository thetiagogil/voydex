import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

export const TeamMemberEditAction = () => {
  return (
    <Button disabled size="sm" aria-label="Edit Pokémon (not available yet)">
      <AppIcon icon={appIcons.actions.edit} inline="start" aria-hidden />
      Edit Pokémon
    </Button>
  );
};
