"use client";

import type { ReactElement } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

/*
 * A rule's or tag's actions: where it's used, then Rename (or Edit, for a
 * rule's kind too), then Delete apart.
 */
export const LibraryItemMenu = ({
  editLabel,
  onDelete,
  onEdit,
  trigger,
  usageLabel,
}: {
  editLabel: string;
  onDelete: () => void;
  onEdit: () => void;
  /* The button that opens it: a card's ⋯ or the tag pill itself. */
  trigger: ReactElement;
  usageLabel: string;
}) => (
  <DropdownMenu>
    <DropdownMenuTrigger render={trigger} />
    <DropdownMenuContent align="end" className="w-auto min-w-52">
      <DropdownMenuGroup>
        <DropdownMenuLabel>{usageLabel}</DropdownMenuLabel>
      </DropdownMenuGroup>
      <DropdownMenuSeparator />
      <DropdownMenuItem onClick={onEdit}>
        <AppIcon icon={appIcons.actions.edit} />
        {editLabel}
      </DropdownMenuItem>
      <DropdownMenuSeparator />
      <DropdownMenuItem variant="destructive" onClick={onDelete}>
        <AppIcon icon={appIcons.actions.delete} />
        Delete
      </DropdownMenuItem>
    </DropdownMenuContent>
  </DropdownMenu>
);
