"use client";

import { usePlayId } from "@/modules/mainline/features/plays/hub/client/use-play-id";
import { PlayShellRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

/* The Play hub's shell, read on the device for the Play in the address. */
export default function MainlinePlayLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  const playId = usePlayId();

  /* Another Play starts its hub afresh, as a new address always did. */
  return (
    <PlayShellRoute key={playId} playId={playId}>
      {children}
    </PlayShellRoute>
  );
}
