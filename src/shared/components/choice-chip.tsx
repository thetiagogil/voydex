import type { ComponentProps, ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type ChoiceChipProps = Omit<
  ComponentProps<"button">,
  "aria-pressed" | "children" | "type"
> & {
  children: ReactNode;
  /* Picked: the selected tint in a white band, with a check. */
  pressed?: boolean;
  /* `lg` (48px) where it sits in a toolbar or a form row beside fields. */
  size?: "lg" | "md";
  /* `add` is the dashed chip that adds one more choice to the set. */
  variant?: "add" | "choice";
};

/*
 * One choice in a set you can pick several of (expansions, challenge rules,
 * a Plan slot's role, a toolbar's one on/off filter): a 40px pill on its
 * own, 48px (`lg`) beside fields. Picked, it takes
 * the selected tint, a white band and a check, so the state never rests on
 * colour alone; its weight never changes, so picking one doesn't shift the
 * row. `add` opens a way to add another.
 */
export const ChoiceChip = ({
  children,
  className,
  pressed = false,
  size = "md",
  variant = "choice",
  ...props
}: ChoiceChipProps) => (
  <button
    type="button"
    aria-pressed={variant === "choice" ? pressed : undefined}
    className={cn(
      "text-14 inline-flex items-center gap-1.5 rounded-full px-4 font-bold whitespace-nowrap transition-colors",
      size === "lg" ? "min-h-12" : "min-h-10",
      "focus-ring",
      "disabled:cursor-not-allowed disabled:opacity-50",
      variant === "add"
        ? "empty-slot text-ink-2 hover:bg-hover hover:text-ink"
        : pressed
          ? "bg-select-soft bubble text-select-ink"
          : "bg-surface-2 text-ink-2 hover:bg-hover hover:text-ink",
      className,
    )}
    {...props}
  >
    {variant === "add" ? (
      <AppIcon icon={appIcons.actions.create} size="sm" />
    ) : pressed ? (
      <AppIcon icon={appIcons.status.active} size="sm" />
    ) : null}
    {children}
  </button>
);
