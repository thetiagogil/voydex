import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { LogoMark } from "@/shared/components/brand/logo-mark";
import { cn } from "@/shared/utils/cn";

type TrainerCardProps = {
  /* Under the name and date, across the card: Settings puts its edit fields here. */
  children?: ReactNode;
  className?: string;
  /*
   * The letter on your disc until you can pick a Pokémon icon; null draws
   * the empty disc (dashed, the trainer glyph), as on Welcome before you've
   * picked.
   */
  initial: string | null;
  /* `stack` is Welcome's preview: the card stands upright from `md`, with its label. */
  layout?: "row" | "stack";
  /* Null shows "Your name" as a quiet placeholder. */
  name: string | null;
  /* What the line under the name says, such as "Trainer since November 2024". */
  subtitle: ReactNode;
};

/*
 * v3's trainer card (`.ob-card`, `.you-card`): who you are in Voydex, the one
 * loud thing wherever it appears (You, Settings, Welcome): a sticker, its
 * 4px white border on a soft shadow, tinted by your colour.
 * TODO(v3-data): profiles store no Pokémon icon yet; the card takes its tint
 * and art from your initial until they do.
 */
export const TrainerCard = ({
  children,
  className,
  initial,
  layout = "row",
  name,
  subtitle,
}: TrainerCardProps) => {
  const stack = layout === "stack";

  return (
    <section
      aria-label="Your trainer card"
      className={cn(
        "flex flex-wrap items-center gap-x-4 gap-y-4.5 rounded-2xl border-4 border-white px-4.5 pt-4 pb-5 sm:gap-x-5.5 sm:px-6.5 sm:pt-5.5 sm:pb-6",
        initial
          ? "type-tint shadow-soft [--t:var(--action)]"
          : "bg-surface-2 shadow-soft",
        stack &&
          "md:flex-col md:flex-nowrap md:gap-0 md:px-5 md:pt-4 md:pb-6.5 md:text-center",
        className,
      )}
    >
      {stack ? (
        <div className="text-13 text-ink-2 hidden items-center gap-2 self-stretch font-bold md:mb-4 md:flex">
          <LogoMark className="size-6.5" />
          Trainer card
        </div>
      ) : null}
      {initial ? (
        <span
          aria-hidden
          className={cn(
            "bg-avatar text-avatar-ink font-display grid size-19 shrink-0 place-items-center rounded-full border-4 border-white font-semibold sm:size-26",
            "text-24 sm:text-32",
            stack && "md:text-44 md:mb-3.5 md:size-37.5",
          )}
        >
          {initial}
        </span>
      ) : (
        <span
          aria-hidden
          className={cn(
            "border-dash text-ink-3 grid size-19 shrink-0 place-items-center rounded-full border-3 border-dashed sm:size-26",
            stack && "md:mb-3.5 md:size-37.5",
          )}
        >
          <AppIcon
            icon={appIcons.product.trainer}
            className="size-8 sm:size-9"
          />
        </span>
      )}
      <div
        className={cn(
          "flex min-w-0 flex-1 flex-col gap-0.5",
          stack && "md:flex-none md:items-center",
        )}
      >
        <p
          className={cn(
            "font-display text-24 sm:text-28 leading-[1.15] font-semibold wrap-anywhere",
            !name && "text-ink-3",
          )}
        >
          {name ?? "Your name"}
        </p>
        <p
          className={cn(
            "text-13 font-semibold",
            initial ? "text-ink-tint" : "text-ink-2",
          )}
        >
          {subtitle}
        </p>
      </div>
      {children ? <div className="w-full min-w-0">{children}</div> : null}
    </section>
  );
};
