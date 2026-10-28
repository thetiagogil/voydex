import type { ReactNode } from "react";

import { getProfileIconTintStyle } from "@/config/profile-icons";
import type { PublicTypeSlug } from "@/config/public-art";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { LogoMark } from "@/shared/components/brand/logo-mark";
import { cn } from "@/shared/utils/cn";

type TrainerCardProps = {
  /* Under the name and date, across the card: Settings puts its edit fields here. */
  children?: ReactNode;
  className?: string;
  /* The Pokémon you picked, on your disc; without one the initial stands in. */
  icon?: { name: string; typeSlug: PublicTypeSlug; url: string } | null;
  /*
   * The letter on your disc until you pick a Pokémon icon; null draws the
   * empty disc (dashed, the trainer glyph), as on Welcome before you've
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
 * v3's trainer card (`.ob-card`, `.you-card`): who you are in Voydex
 * (You, Settings, Welcome): a white card on a soft shadow, its colour in your
 * disc alone (the soft red tint, as your icon on the top bar).
 */
export const TrainerCard = ({
  children,
  className,
  icon,
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
        icon || initial ? "bg-surface shadow-soft" : "bg-surface-2 shadow-soft",
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
      {icon || initial ? (
        <span
          aria-hidden
          style={icon ? getProfileIconTintStyle(icon.typeSlug) : undefined}
          className={cn(
            "font-display grid size-19 shrink-0 place-items-center overflow-hidden rounded-full border-4 border-white font-semibold sm:size-26",
            icon ? "type-tint" : "bg-avatar text-avatar-ink",
            "text-24 sm:text-32",
            stack && "md:text-44 md:mb-3.5 md:size-37.5",
          )}
        >
          {icon ? (
            <FallbackImage
              src={icon.url}
              name={initial ?? icon.name}
              className="size-[93%] object-contain"
            />
          ) : (
            initial
          )}
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
        <p className={cn("title-section wrap-anywhere", !name && "text-ink-3")}>
          {name ?? "Your name"}
        </p>
        <p className={cn("text-13 font-semibold", "text-ink-2")}>{subtitle}</p>
      </div>
      {children ? <div className="w-full min-w-0">{children}</div> : null}
    </section>
  );
};
