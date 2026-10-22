"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * An item's picture: its sprite, or a stand-in by kind (a Poké Ball, or a box
 * for a held item) when it has none or the sprite fails to load. Decorative;
 * the item's name is beside it.
 */
export const ItemIcon = ({
  className,
  kind,
  name,
  src,
}: {
  className?: string;
  kind: "ball" | "held";
  name: string;
  /* The sprite's address (`getItemImageUrl`). */
  src?: string | null;
}) => {
  const [failedSrc, setFailedSrc] = useState<string | null>(null);

  if (src && failedSrc !== src) {
    return (
      // A tiny sprite from the assets site: no optimisation to gain.
      // eslint-disable-next-line @next/next/no-img-element
      <img
        src={src}
        alt=""
        aria-hidden
        data-item={name}
        loading="lazy"
        onError={() => setFailedSrc(src)}
        // A sprite that failed before React hydrated never fires onError.
        ref={(image) => {
          if (image?.complete && !image.naturalWidth) {
            setFailedSrc(src);
          }
        }}
        className={cn("-my-0.5 size-7 shrink-0 object-contain", className)}
      />
    );
  }

  return (
    <AppIcon
      icon={
        kind === "ball" ? appIcons.product.caught : appIcons.product.heldItem
      }
      size="lg"
      className={cn("text-ink-3 shrink-0", className)}
    />
  );
};
