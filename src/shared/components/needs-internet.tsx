"use client";

import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { useOnline } from "@/shared/hooks/use-online";
import { cn } from "@/shared/utils/cn";

/*
 * What can't work offline, the one way the whole app says so. Everything
 * else works offline and is left alone.
 *
 * - `NeedsInternet`: a control that only works online (Log in, Back up
 *   now, a page the device doesn't keep). Offline it is switched off, and a
 *   hover or a tap on it says why; it comes back by itself with the
 *   connection.
 * - `InternetNote`: in place of something there is nothing of yet, until
 *   the internet brings it (a game's moves): one quiet line.
 */

export const needsInternetReason =
  "Needs the internet. It comes back by itself when you're online.";

export const NeedsInternet = ({
  children,
  className,
  needed = true,
  reason = needsInternetReason,
}: {
  /* The control, switched off when `offline`. */
  children: (offline: boolean) => ReactNode;
  /* The wrapper's own layout offline, to fill what the control filled. */
  className?: string;
  /* False when this time it works offline (the game is on the device). */
  needed?: boolean;
  reason?: string;
}) => {
  const online = useOnline();

  if (online || !needed) return children(false);

  return (
    <ExplanatoryTip
      content={reason}
      nativeButton={false}
      trigger={
        <span
          data-needs-internet=""
          className={cn(
            "focus-ring inline-flex max-w-full cursor-help rounded-full",
            className,
          )}
        />
      }
    >
      {children(true)}
      <span className="sr-only">{reason}</span>
    </ExplanatoryTip>
  );
};

export const InternetNote = ({
  offline,
  online: onlineText,
}: {
  /* What waits for the internet, said offline. */
  offline: string;
  /* The same online, while it is on its way. */
  online: string;
}) => {
  const online = useOnline();

  return (
    <p role="status" className="copy-note text-ink-2 flex items-start gap-1.5">
      <AppIcon
        icon={online ? appIcons.status.later : appIcons.status.offline}
        size="md"
        className="mt-0.5"
      />
      {online ? onlineText : offline}
    </p>
  );
};
