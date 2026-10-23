"use client";

import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { IconTip } from "@/shared/components/icon-tip";

type NewPlayTriggerProps = {
  "aria-label"?: string;
  children: ReactNode;
  className?: string;
  /* Opens New Play with this game already picked. */
  gameSlug?: string;
  /* A hover and focus label (a tip, never the browser's `title`). */
  tip?: string;
};

/*
 * Every New Play button inside Mainline: it opens New Play as a dialog over
 * the page, without changing the address. Outside Mainline it is a plain
 * link to Mainline that opens it there.
 */
export const NewPlayTrigger = ({
  children,
  className,
  gameSlug,
  tip,
  "aria-label": ariaLabel,
}: NewPlayTriggerProps) => {
  const opener = useNewPlayDialog();

  if (!opener) {
    return (
      <IconTip
        label={tip}
        trigger={
          <Link
            href={appRoutes.mainlineNewPlay(gameSlug)}
            aria-label={ariaLabel}
            className={className}
          >
            {children}
          </Link>
        }
      />
    );
  }

  return (
    <IconTip
      label={tip}
      trigger={
        <button
          type="button"
          aria-haspopup="dialog"
          aria-label={ariaLabel}
          className={className}
          onClick={() => opener.open({ gameSlug })}
        >
          {children}
        </button>
      }
    />
  );
};
