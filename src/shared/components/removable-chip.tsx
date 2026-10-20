import type { ReactNode } from "react";

import { CornerRemoveButton } from "@/shared/components/corner-remove-button";
import { cn } from "@/shared/utils/cn";

/*
 * Something a thing keeps, as a 40px pill (a Play's challenge rule or tag),
 * with the corner × that takes it off. The pill is a label, not a toggle;
 * the × shows on hover or focus, and always on touch screens.
 */
export const RemovableChip = ({
  children,
  className,
  disabled = false,
  onRemove,
  removeLabel,
}: {
  children: ReactNode;
  className?: string;
  disabled?: boolean;
  onRemove: () => void;
  /* What the × says, such as "Remove Nuzlocke". */
  removeLabel: string;
}) => (
  <span
    className={cn(
      "group/removable bg-surface-2 text-ink text-14 relative inline-flex min-h-10 items-center rounded-full px-4 font-bold whitespace-nowrap",
      className,
    )}
  >
    {children}
    {disabled ? null : (
      <CornerRemoveButton label={removeLabel} onClick={onRemove} />
    )}
  </span>
);
