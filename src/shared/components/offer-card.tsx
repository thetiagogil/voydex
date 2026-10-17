import type { ComponentProps, ReactNode } from "react";

import { cardVariants } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

/*
 * Something offered once that you can take or put aside (the game picked
 * before sign-up, an unsaved Plan): a card with its words, an optional
 * picture beside them, and its two buttons at the end, the quiet one first.
 * Name it with `aria-labelledby` or `aria-label`.
 */
export const OfferCard = ({
  actions,
  aside,
  children,
  className,
  ...props
}: Omit<ComponentProps<"section">, "children"> & {
  /* The quiet button, then the main one. */
  actions: ReactNode;
  /* A picture between the words and the buttons, such as a team strip. */
  aside?: ReactNode;
  children: ReactNode;
}) => (
  <section
    data-slot="card"
    className={cn(
      cardVariants(),
      "flex-row flex-wrap items-center gap-x-6 gap-y-3 px-5 py-4 sm:px-6",
      className,
    )}
    {...props}
  >
    <div className="flex min-w-0 flex-1 basis-60 flex-col gap-1">
      {children}
    </div>
    {aside}
    <div className="flex gap-2 max-sm:w-full max-sm:*:flex-1">{actions}</div>
  </section>
);
