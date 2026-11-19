import type { ReactNode } from "react";

import { getProfileIconTintStyle } from "@/config/profile-icons";
import type { PublicTypeSlug } from "@/config/public-art";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

type TrainerCardProps = {
  /* Under the name and date, across the card: Settings puts its edit fields here. */
  children?: ReactNode;
  className?: string;
  /* The Pokémon you picked, on your disc; without one the initial stands in. */
  icon?: { name: string; typeSlug: PublicTypeSlug; url: string } | null;
  /*
   * The letter on your disc until you pick a Pokémon icon; null draws the
   * empty disc (dashed, the trainer glyph).
   */
  initial: string | null;
  /* Null shows "Your name" as a quiet placeholder. */
  name: string | null;
  /* What the line under the name says, such as "Trainer since November 2024". */
  subtitle: ReactNode;
};

/*
 * The trainer card: who you are in Voydex (You, Settings): a white card on
 * a soft shadow, its colour in your
 * disc alone (the soft red tint, as your icon on the top bar).
 */
export const TrainerCard = ({
  children,
  className,
  icon,
  initial,
  name,
  subtitle,
}: TrainerCardProps) => (
  <section
    aria-label="Your trainer card"
    className={cn(
      "flex flex-wrap items-center gap-x-4 gap-y-4 rounded-2xl border-4 border-white px-4.5 pt-4 pb-5 sm:gap-x-6 sm:px-6.5 sm:pt-5.5 sm:pb-6",
      icon || initial ? "bg-surface shadow-soft" : "bg-surface-2 shadow-soft",
      className,
    )}
  >
    {icon || initial ? (
      <span
        aria-hidden
        style={icon ? getProfileIconTintStyle(icon.typeSlug) : undefined}
        className={cn(
          "font-display grid size-19 shrink-0 place-items-center overflow-hidden rounded-full border-4 border-white font-semibold sm:size-26",
          icon ? "type-tint" : "bg-avatar text-avatar-ink",
          "text-24 sm:text-32",
        )}
      >
        {icon ? (
          <FallbackImage
            src={icon.url}
            name={initial ?? icon.name}
            className="size-full object-contain"
          />
        ) : (
          initial
        )}
      </span>
    ) : (
      <span
        aria-hidden
        className="border-dash text-ink-3 grid size-19 shrink-0 place-items-center rounded-full border-3 border-dashed sm:size-26"
      >
        <AppIcon icon={appIcons.product.trainer} className="size-8 sm:size-9" />
      </span>
    )}
    <div className="flex min-w-0 flex-1 flex-col gap-0.5">
      <p className={cn("title-section wrap-anywhere", !name && "text-ink-3")}>
        {name ?? "Your name"}
      </p>
      <p className="copy-meta text-ink-2">{subtitle}</p>
    </div>
    {children ? <div className="w-full min-w-0">{children}</div> : null}
  </section>
);
