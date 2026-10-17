import type { ReactNode } from "react";

import { NewPlayDialogProvider } from "@/modules/mainline/features/plays/new/components/new-play-dialog";
import { getNewPlayDialogData } from "@/modules/mainline/features/plays/new/server/new-play-dialog-query";

/*
 * Mainline's pages, with New Play ready to open over any of them as a dialog
 * (the address doesn't change). Its games come from a cached reference read,
 * so it opens complete; links from outside Mainline open it with `?new=`.
 */
export default async function MainlineLayout({
  children,
}: Readonly<{ children: ReactNode }>) {
  const newPlay = await getNewPlayDialogData();

  return (
    <NewPlayDialogProvider data={newPlay}>{children}</NewPlayDialogProvider>
  );
}
