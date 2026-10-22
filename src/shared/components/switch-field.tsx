"use client";

import { useId, type ReactNode } from "react";

import { EditedMark } from "@/shared/components/edited-mark";
import { Switch } from "@/shared/components/ui/switch";
import { fieldSurfaceClassName } from "@/shared/components/ui/field-surface";
import { cn } from "@/shared/utils/cn";

const yesNo = ["No", "Yes"] as const;

/*
 * A form's on or off choice (Shiny, Can Gigantamax): a field-shaped pill, its
 * name inside at the start and a large switch saying "No" or "Yes" flush at
 * the end. Tiles in a two-column grid share a row and wrap, so more of them
 * need no other layout.
 */
export const SwitchField = ({
  checked,
  className,
  edited = false,
  label,
  onCheckedChange,
}: {
  checked: boolean;
  className?: string;
  /* The field changed since it was loaded: a dot beside its name. */
  edited?: boolean;
  label: ReactNode;
  onCheckedChange: (checked: boolean) => void;
}) => {
  const labelId = useId();

  return (
    <div
      className={cn(
        fieldSurfaceClassName,
        "flex h-12 min-w-0 items-center justify-between gap-3 rounded-full pl-5",
        className,
      )}
    >
      <span id={labelId} className="text-15 min-w-0 font-bold">
        <EditedMark edited={edited}>{label}</EditedMark>
      </span>
      <Switch
        size="lg"
        labels={yesNo}
        aria-labelledby={labelId}
        checked={checked}
        onCheckedChange={onCheckedChange}
        className="my-[-1.5px] mr-[-1.5px]"
      />
    </div>
  );
};
