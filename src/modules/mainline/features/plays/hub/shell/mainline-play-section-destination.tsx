import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type MainlinePlaySectionDestinationProps = {
  label: string;
};

export const MainlinePlaySectionDestination = ({
  label,
}: MainlinePlaySectionDestinationProps) => {
  const unavailableLabel = `${label} is available when its Play tab is enabled`;

  return (
    <Button
      type="button"
      variant="link"
      size="xs"
      disabled
      aria-label={unavailableLabel}
      title={unavailableLabel}
      className="h-auto px-0 py-0 text-xs font-medium disabled:opacity-45"
    >
      {label}
      <AppIcon icon={appIcons.actions.continue} inline="end" size="xs" />
    </Button>
  );
};
