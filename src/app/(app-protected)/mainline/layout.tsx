import type { ReactNode } from "react";

import { NewPlayDialogProvider } from "@/modules/mainline/features/plays/new/components/new-play-dialog";

/*
 * Mainline's pages, with New Play ready to open over any of them as a dialog
 * (the address doesn't change). `/mainline/plays/new` stays a page for links
 * from outside Mainline.
 */
export default function MainlineLayout({
  children,
}: Readonly<{ children: ReactNode }>) {
  return <NewPlayDialogProvider>{children}</NewPlayDialogProvider>;
}
