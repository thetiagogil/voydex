import type { ReactNode } from "react";

import { NewPlayDialogProvider } from "@/modules/mainline/features/plays/new/components/new-play-dialog";

/*
 * Mainline's pages, with New Play ready to open over any of them as a
 * dialog (the address doesn't change); links from outside Mainline open it
 * with `?new=`.
 */
export default function MainlineLayout({
  children,
}: Readonly<{ children: ReactNode }>) {
  return <NewPlayDialogProvider>{children}</NewPlayDialogProvider>;
}
