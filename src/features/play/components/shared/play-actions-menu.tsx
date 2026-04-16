"use client";

import { Icon } from "@/shared/components/icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

type PlayActionItem = {
  label: string;
  onSelect: () => void;
  disabled?: boolean;
  variant?: "default" | "destructive";
};

type PlayActionsMenuProps = {
  items: PlayActionItem[];
  label?: string;
};

export const PlayActionsMenu = ({
  items,
  label = "Actions",
}: PlayActionsMenuProps) => {
  if (items.length === 0) {
    return null;
  }

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button
          variant="outline"
          size="icon-sm"
          aria-label={label}
          title={label}
        >
          <Icon type="menu" />
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="end" className="w-56">
        {items.map((item) => (
          <DropdownMenuItem
            key={item.label}
            disabled={item.disabled}
            variant={item.variant}
            onSelect={item.onSelect}
          >
            {item.label}
          </DropdownMenuItem>
        ))}
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
