import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type EmptyStateProps = {
  /* Up to two actions. */
  action?: ReactNode;
  /* One Pokémon standing on its small patch of grass. */
  artUrl?: string | null;
  className?: string;
  description: string;
  title: string;
};

/* An empty state: one Pokémon on grass, one sentence, at most two actions. */
export const EmptyState = ({
  action,
  artUrl,
  className,
  description,
  title,
}: EmptyStateProps) => {
  return (
    <div
      data-slot="card"
      className={cn(
        "bg-surface shadow-card flex flex-col items-center rounded-2xl px-6 py-10 text-center",
        "in-data-[slot=card]:bg-transparent in-data-[slot=card]:shadow-none",
        className,
      )}
    >
      {artUrl ? (
        <span
          aria-hidden
          className="relative mb-5 grid h-20 w-36 place-items-end justify-center"
        >
          <span className="bg-hill absolute inset-x-0 bottom-0 h-7 rounded-[50%]" />
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img src={artUrl} alt="" className="relative -mb-1 size-20" />
        </span>
      ) : null}
      <h3 className="text-20">{title}</h3>
      <p className="text-ink-2 text-15 mt-1.5 max-w-md font-semibold">
        {description}
      </p>
      {action ? (
        <div className="mt-5 flex flex-wrap justify-center gap-3">{action}</div>
      ) : null}
    </div>
  );
};
