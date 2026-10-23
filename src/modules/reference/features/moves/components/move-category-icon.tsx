"use client";

import { useState } from "react";

import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { getMoveCategoryImageUrl } from "@/modules/reference/features/moves/data/move-category-images";
import { getMoveCategory } from "@/modules/reference/features/moves/domain/move-categories";
import { cn } from "@/shared/utils/cn";

/*
 * A move's category (Physical, Special, Status) as the games draw it: its
 * icon, named for screen readers and in a tip on hover. Without the icon (no
 * assets site, or it fails to load) it's the word.
 */
export const MoveCategoryIcon = ({
  className,
  damageClass,
  tip = true,
}: {
  className?: string;
  damageClass: string | null | undefined;
  /* Off inside a field that already has its own hover tip. */
  tip?: boolean;
}) => {
  const [failed, setFailed] = useState(false);
  const category = getMoveCategory(damageClass);

  if (!category) {
    return null;
  }

  const src = getMoveCategoryImageUrl(category.slug);

  if (!src || failed) {
    return (
      <span className={cn("text-ink-3 text-12 shrink-0 font-bold", className)}>
        {category.label}
      </span>
    );
  }

  const icon = (
    // A tiny icon from the assets site: no optimisation to gain.
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={src}
      alt={category.label}
      onError={() => setFailed(true)}
      // An icon that failed before React hydrated never fires onError.
      ref={(image) => {
        if (image?.complete && !image.naturalWidth) {
          setFailed(true);
        }
      }}
      className={cn("h-5 w-6.5 shrink-0 object-contain", className)}
    />
  );

  return tip ? (
    <Tooltip>
      <TooltipTrigger render={icon} />
      <TooltipContent>{category.label}</TooltipContent>
    </Tooltip>
  ) : (
    icon
  );
};
