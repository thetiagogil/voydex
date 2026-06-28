import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

export type NavigationMenuOptionContentProps = {
  active: boolean;
  description?: ReactNode;
  leading?: ReactNode;
  leadingClassName?: string;
  muted: boolean;
  title: ReactNode;
  titleAccessory?: ReactNode;
  trailing?: ReactNode;
};

export const NavigationMenuOptionContent = ({
  active,
  description,
  leading,
  leadingClassName,
  muted,
  title,
  titleAccessory,
  trailing,
}: NavigationMenuOptionContentProps) => {
  const resolvedTrailing =
    trailing !== undefined ? (
      trailing
    ) : active ? (
      <AppIcon
        icon={appIcons.status.active}
        size="md"
        aria-hidden
        className="text-primary"
      />
    ) : null;

  return (
    <>
      {leading ? (
        <span
          className={cn(
            "bg-muted text-muted-foreground relative mt-0.5 flex size-10 shrink-0 items-center justify-center overflow-hidden rounded-lg border",
            active && "border-primary bg-primary/10 text-primary",
            muted && "border-dashed",
            leadingClassName,
          )}
        >
          {leading}
        </span>
      ) : null}
      <span className="min-w-0 flex-1">
        <span className="flex min-w-0 items-center gap-2">
          <span className="truncate font-medium">{title}</span>
          {titleAccessory}
        </span>
        {description ? (
          <span className="text-muted-foreground mt-0.5 block truncate text-xs">
            {description}
          </span>
        ) : null}
      </span>
      {resolvedTrailing ? (
        <span className="mt-1 flex shrink-0 items-center">
          {resolvedTrailing}
        </span>
      ) : null}
    </>
  );
};
