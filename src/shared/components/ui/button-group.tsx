import type { ComponentProps } from "react";

import { cn } from "@/shared/utils/cn";

/*
 * shadcn's button group: buttons that belong together (an action and its
 * menu of other ways) join into one pill. Each keeps its own look; between
 * two outlined buttons their shared line divides them, between two red ones
 * a pale line does. Name it with `aria-label`.
 */
const ButtonGroup = ({ className, ...props }: ComponentProps<"div">) => (
  <div
    role="group"
    data-slot="button-group"
    className={cn(
      "inline-flex w-fit items-stretch rounded-full",
      /*
       * A joined button's focus ring is drawn inside it and follows its
       * shape, so it never runs under the next button.
       */
      "*:focus-visible:relative *:focus-visible:z-1 *:focus-visible:shadow-[inset_0_0_0_3px_var(--focus)] *:focus-visible:outline-none",
      /*
       * Matched by type, not position: an open menu adds hidden focus guards
       * beside its trigger, which must not change which button is last.
       */
      "[&>button:not(:first-of-type)]:rounded-l-none [&>button:not(:first-of-type)]:border-l-0 [&>button:not(:last-of-type)]:rounded-r-none",
      "[&>.bg-action:not(:first-of-type)]:border-l-[1.5px] [&>.bg-action:not(:first-of-type)]:border-l-white/40",
      className,
    )}
    {...props}
  />
);

export { ButtonGroup };
