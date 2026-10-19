import type { ReactNode } from "react";

import { FallbackImage } from "@/shared/components/fallback-image";
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
    <div
      data-slot="card"
      className={cn(
        "bg-surface shadow-card flex flex-col items-center rounded-2xl px-6 py-10 text-center",
        "in-data-[slot=card]:bg-transparent in-data-[slot=card]:shadow-none",
        className,
      )}
    >
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
      <p className="text-ink-2 text-15 mt-1.5 max-w-md font-semibold">
        {description}
      </p>
      {action ? (
        <div className="mt-5 flex flex-wrap justify-center gap-3">{action}</div>
      ) : null}
    </div>
  );
};
