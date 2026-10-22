import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

export type MenuOptionContentProps = {
  /*
   * The option is the current one: its picture tile turns white on the tint
   * and a check ends the row (unless `trailing` says otherwise). Selects
   * leave it out: their item draws its own check.
   */
  active?: boolean;
  description?: ReactNode;
  /* A picture before the words: an icon, a type or game mark, a cover. */
  leading?: ReactNode;
  leadingClassName?: string;
  /* Not available yet: its tile is dashed. */
  muted?: boolean;
  title: ReactNode;
  titleAccessory?: ReactNode;
  trailing?: ReactNode;
};

/*
 * What one option in any picker shows (a select, a dropdown menu, the bar's
 * menus, a searchable list): an optional picture on a 36px tile, the title,
 * and a quieter description under it. The row around it is the picker's own
 * (`menuOptionClassName`); it adds the check for the pick.
 */
export const MenuOptionContent = ({
  active = false,
  description,
  leading,
  leadingClassName,
  muted = false,
  title,
  titleAccessory,
  trailing,
}: MenuOptionContentProps) => {
  const end =
    trailing !== undefined ? (
      trailing
    ) : active ? (
      <AppIcon
        icon={appIcons.status.active}
        size="md"
        aria-hidden
        className="text-select-ink"
      />
    ) : null;

  return (
    <>
      {leading ? (
        <span
          aria-hidden
          className={cn(
            "bg-surface-2 text-ink-2 relative flex size-9 shrink-0 items-center justify-center overflow-hidden rounded-sm",
            active && "bg-surface text-select-ink",
            muted && "border-dash border-[1.5px] border-dashed",
            leadingClassName,
          )}
        >
          {leading}
        </span>
      ) : null}
      <span className="min-w-0 flex-1 text-left">
        <span className="flex min-w-0 items-center gap-2">
          <span className="truncate">{title}</span>
          {titleAccessory}
        </span>
        {description ? (
          <span
            className={cn(
              /* Up to three lines, so an effect reads in full. */
              "text-13 mt-0.5 line-clamp-3 font-semibold",
              active ? "text-select-ink" : "text-ink-2",
            )}
          >
            {description}
          </span>
        ) : null}
      </span>
      {end ? <span className="flex shrink-0 items-center">{end}</span> : null}
    </>
  );
};
