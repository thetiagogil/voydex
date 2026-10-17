import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * The check that marks the one picked thing on a picture (a game's cover, a
 * Play on Home's shelf): a red disc in a white band, like the stickers,
 * sitting in the picture's top-right corner. Decorative: the control that
 * holds it says it is picked. `sm` for small covers.
 */
export const PickedMark = ({
  className,
  size = "md",
}: {
  className?: string;
  size?: "md" | "sm";
}) => (
  <span
    aria-hidden
    className={cn(
      "bg-action bubble pointer-events-none absolute z-2 grid place-items-center rounded-full text-white",
      size === "md" ? "top-2 right-2 size-7" : "top-1.5 right-1.5 size-6",
      className,
    )}
  >
    <AppIcon
      icon={appIcons.status.active}
      className={size === "md" ? "size-4 stroke-3" : "size-3.5 stroke-3"}
    />
  </span>
);
