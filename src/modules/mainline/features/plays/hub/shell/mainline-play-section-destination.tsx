import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type MainlinePlaySectionDestinationProps = {
  label: string;
  onSelect?: () => void;
  unavailableLabel?: string;
};

export const MainlinePlaySectionDestination = ({
  label,
  onSelect,
  unavailableLabel = `${label} destination is not available yet`,
}: MainlinePlaySectionDestinationProps) => {
  return (
    <Button
      type="button"
      variant="link"
      size="xs"
      disabled={!onSelect}
      aria-label={onSelect ? label : unavailableLabel}
      title={onSelect ? undefined : unavailableLabel}
      onClick={onSelect}
      className="h-auto px-0 py-0 text-xs font-medium disabled:opacity-45"
    >
      {label}
      <AppIcon icon={appIcons.actions.continue} inline="end" />
    </Button>
  );
};
