import Link from "next/link";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

type MainlinePlaySectionDestinationProps = {
  href?: string;
  label: string;
  onSelect?: () => void;
  unavailableLabel?: string;
};

export const MainlinePlaySectionDestination = ({
  href,
  label,
  onSelect,
  unavailableLabel = `${label} destination is not available yet`,
}: MainlinePlaySectionDestinationProps) => {
  if (href) {
    return (
      <Button
        render={<Link href={href} />}
        nativeButton={false}
        variant="link"
        size="xs"
        className="h-auto px-0 py-0 text-14 font-extrabold no-underline hover:no-underline"
      >
        {label}
        <AppIcon icon={appIcons.actions.continue} inline="end" />
      </Button>
    );
  }

  return (
    <Button
      type="button"
      variant="link"
      size="xs"
      disabled={!onSelect}
      aria-label={onSelect ? label : unavailableLabel}
      title={onSelect ? undefined : unavailableLabel}
      onClick={onSelect}
      className="h-auto px-0 py-0 text-14 font-extrabold no-underline hover:no-underline disabled:opacity-45"
    >
      {label}
      <AppIcon icon={appIcons.actions.continue} inline="end" />
    </Button>
  );
};
