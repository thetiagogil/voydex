"use client";

import { usePathname } from "next/navigation";
import { useCallback, useMemo, useRef, useState, type ReactNode } from "react";

import {
  NewPlayWizard,
  NewPlayWizardPending,
} from "@/modules/mainline/features/plays/new/components/new-play-wizard";
import { loadNewPlayDialogAction } from "@/modules/mainline/features/plays/new/server/new-play-dialog-action";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { resolveNewPlayInitialChoice } from "@/modules/mainline/features/plays/new/utils/new-play-initial-choice";
import {
  NewPlayDialogContext,
  type NewPlayDialogOpener,
} from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { Dialog, DialogContent } from "@/shared/components/ui/dialog";

type LoadState =
  | { status: "error" | "idle" | "loading" }
  | { data: NewPlayDialogData; status: "ready" };

/* One opening, on its game when a trigger gave one. */
type Opening = {
  gameSlug: string | null;
  id: number;
  /* The games were still on the way when it opened. */
  waited: boolean;
};

/*
 * New Play over the page you're on (v3 `npxopen`), for every New Play button
 * in Mainline (`NewPlayTrigger`). The address stays the page's, so the bar
 * keeps its place. Its games are read once per visit to Mainline, on the
 * first hover, focus or press of a New Play button, and kept: the dialog
 * opens at once, on its loading state the first time if they're still on the
 * way. Starting a Play opens it, and the dialog stands down once you are on
 * another page. The New Play page (`/mainline/plays/new`) stays for links
 * from outside Mainline.
 */
export const NewPlayDialogProvider = ({
  children,
}: {
  children: ReactNode;
}) => {
  const pathname = usePathname();
  const [load, setLoad] = useState<LoadState>({ status: "idle" });
  const [opening, setOpening] = useState<Opening | null>(null);
  const [openedOn, setOpenedOn] = useState(pathname);
  const isRequested = useRef(false);
  const isReady = useRef(false);
  const nextId = useRef(0);

  /* Another page (the Play just started, or Back): the dialog stands down. */
  if (openedOn !== pathname) {
    setOpenedOn(pathname);
    setOpening(null);
  }

  const prepare = useCallback(() => {
    if (isRequested.current) return;

    isRequested.current = true;
    setLoad((current) =>
      current.status === "ready" ? current : { status: "loading" },
    );
    loadNewPlayDialogAction()
      .catch(() => ({ status: "error" as const }))
      .then((result) => {
        if (result.status === "success") {
          isReady.current = true;
          setLoad({ data: result.data, status: "ready" });
          return;
        }

        isRequested.current = false;
        setLoad({ status: "error" });
      });
  }, []);

  const opener = useMemo<NewPlayDialogOpener>(
    () => ({
      forgetIntent: (gameSlug) =>
        setLoad((current) =>
          current.status === "ready" &&
          current.data.intent &&
          (!gameSlug || current.data.intent.gameSlug === gameSlug)
            ? {
                data: { ...current.data, intent: null },
                status: "ready",
              }
            : current,
        ),
      open: (options) => {
        prepare();
        nextId.current += 1;
        setOpening({
          gameSlug: options?.gameSlug ?? null,
          id: nextId.current,
          waited: !isReady.current,
        });
      },
      prepare,
    }),
    [prepare],
  );

  const close = () => setOpening(null);

  return (
    <NewPlayDialogContext.Provider value={opener}>
      {children}
      <Dialog
        open={opening !== null}
        onOpenChange={(open) => {
          if (!open) close();
        }}
      >
        <DialogContent
          aria-label="New Play"
          fullScreenOnPhone
          showCloseButton={false}
          className="block p-0 sm:max-w-[880px]"
        >
          {opening && load.status === "ready" ? (
            <NewPlayWizard
              key={opening.id}
              data={{
                ...load.data.picker,
                initial: resolveNewPlayInitialChoice(
                  load.data.picker.games,
                  opening.gameSlug,
                  load.data.intent,
                ),
              }}
              focusTitleOnMount={opening.waited}
              onClose={close}
            />
          ) : (
            <NewPlayWizardPending
              onClose={close}
              onRetry={load.status === "error" ? prepare : undefined}
            />
          )}
        </DialogContent>
      </Dialog>
    </NewPlayDialogContext.Provider>
  );
};
