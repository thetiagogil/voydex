"use client";

import { usePathname, useRouter } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { NewPlayWizard } from "@/modules/mainline/features/plays/new/components/new-play-wizard";
import type { NewPlayPageData } from "@/modules/mainline/features/plays/new/types";
import { Dialog, DialogContent } from "@/shared/components/ui/dialog";

/*
 * New Play over the page you opened it from (v3 `npxopen`), as when Home's
 * new-Play tile is tapped. Closing goes back to that page; starting the Play
 * opens it, and the dialog stands down once you are anywhere else (the slot
 * keeps its last page across soft navigation). A direct visit to New Play's
 * address still gets the page.
 */
export const NewPlayDialog = ({ data }: { data: NewPlayPageData }) => {
  const router = useRouter();
  const pathname = usePathname();
  const close = () => router.back();

  if (pathname !== appRoutes.mainlinePlayNew()) {
    return null;
  }

  return (
    <Dialog
      open
      onOpenChange={(open) => {
        if (!open) {
          close();
        }
      }}
    >
      <DialogContent
        aria-label="New Play"
        fullScreenOnPhone
        showCloseButton={false}
        className="block p-0 sm:max-w-[880px]"
      >
        <NewPlayWizard data={data} onClose={close} />
      </DialogContent>
    </Dialog>
  );
};
