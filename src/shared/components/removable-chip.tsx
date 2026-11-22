import type { ReactNode } from "react";

import { CornerRemoveButton } from "@/shared/components/corner-remove-button";
import { TagLabel } from "@/shared/components/tag-label";
import { cn } from "@/shared/utils/cn";

/*
 * Something a thing keeps, as a 36px tag (a Play's challenge rule or tag),
 * with the corner × that takes it off. The tag is a label, not a toggle;
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
  <span className={cn("group/removable relative inline-flex", className)}>
    <TagLabel size="lg">{children}</TagLabel>
    {disabled ? null : (
      <CornerRemoveButton label={removeLabel} onClick={onRemove} />
    )}
  </span>
);
