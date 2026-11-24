import type { ReactNode } from "react";

import { FallbackImage } from "@/shared/components/fallback-image";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type EmptyStateProps =
  | {
      /* Up to two actions. */
      action?: ReactNode;
      /* One Pokémon standing on its small patch of grass. */
      art?: { name: string; url: string | null } | null;
      className?: string;
      description: string;
      /* `h2` where the empty state stands in for a page's main content. */
      headingLevel?: "h2" | "h3";
      title: string;
      variant?: "card";
    }
  | {
      action?: ReactNode;
      className?: string;
      /* The one sentence, such as "Nothing matches." */
      title: string;
      /* v3 `.empty-note`: no card, one quiet centred sentence. */
      variant: "bare";
    };

/* An empty state: one Pokémon on grass, one sentence, at most two actions. */
export const EmptyState = (props: EmptyStateProps) => {
  const { action, className, title } = props;

  if (props.variant === "bare") {
    return (
      <div
        className={cn(
          "text-ink-3 flex flex-col items-center gap-3 py-10 text-center font-semibold",
          className,
        )}
      >
        <p>{title}</p>
        {action ? (
          <div className="flex flex-wrap justify-center gap-3">{action}</div>
        ) : null}
      </div>
    );
  }

  const { art, description, headingLevel: Heading = "h3" } = props;

  return (
    /* A section card; inside another card it is only its words. */
    <Card className={cn("gap-0 in-data-[slot=card]:bg-transparent", className)}>
      {/* The room an empty state keeps round it, over the card's own. */}
      <div className="flex flex-col items-center py-4 text-center">
        {art ? (
          <span
            aria-hidden
            className="relative mb-5 grid h-20 w-36 place-items-end justify-center"
          >
            <span className="bg-hill absolute inset-x-0 bottom-0 h-7 rounded-[50%]" />
            <FallbackImage
              src={art.url}
              name={art.name}
              fallback="badge"
              className="relative -mb-1 size-20"
            />
          </span>
        ) : null}
        <Heading className="text-20">{title}</Heading>
        <p className="text-ink-2 copy-body mt-1.5 max-w-md">{description}</p>
        {action ? (
          <div className="mt-5 flex flex-wrap justify-center gap-3">
            {action}
          </div>
        ) : null}
      </div>
    </Card>
  );
};
