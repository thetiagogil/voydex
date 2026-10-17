import type { ComponentProps } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * shadcn's button group, as one sticker: buttons that belong together (an
 * action and its menu of other ways) join into one pill. The group carries
 * the shadow; each button keeps its white band, and the band between two
 * buttons is their dividing line. Name it with `aria-label`.
 */
const ButtonGroup = ({ className, ...props }: ComponentProps<"div">) => (
  <div
    role="group"
    data-slot="button-group"
    className={cn(
      "shadow-button has-[>:active]:shadow-button-pressed inline-flex w-fit items-stretch rounded-full",
      "*:shadow-none *:active:shadow-none",
      /*
       * Matched by type, not position: an open menu adds hidden focus guards
       * beside its trigger, which must not change which button is last.
       */
      "[&>button:not(:first-of-type)]:rounded-l-none [&>button:not(:first-of-type)]:border-l-0 [&>button:not(:last-of-type)]:rounded-r-none",
      className,
    )}
    {...props}
  />
);

export { ButtonGroup };
