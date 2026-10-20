"use client";

import { usePathname, useSearchParams } from "next/navigation";
import { useEffect, useMemo, useRef, useState, type ReactNode } from "react";

import { NEW_PLAY_PARAM, NEW_PLAY_PARTNER_PARAM } from "@/config/routes";
import {
  NewPlayUnavailable,
  NewPlayWizard,
} from "@/modules/mainline/features/plays/new/components/new-play-wizard";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";
import { resolveNewPlayInitialChoice } from "@/modules/mainline/features/plays/new/utils/new-play-initial-choice";
import {
  NewPlayDialogContext,
  type NewPlayDialogOpener,
} from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { Dialog, DialogContent } from "@/shared/components/ui/dialog";

/*
 * One opening, on its game (and partner) when a trigger or the address gave
 * one. A closed opening stays (`isOpen: false`) so the wizard holds still
 * while it leaves.
 */
type Opening = {
  gameSlug: string | null;
  id: string;
  isOpen: boolean;
  partnerSpeciesSlug: string | null;
};

type NewPlayDialogProviderProps = {
  children: ReactNode;
  /* Read with the Mainline layout: the dialog opens complete, every time. */
  data: NewPlayDialogData;
};

/*
 * New Play over the page you're on (v3 `npxopen`), for every New Play button
 * in Mainline (`NewPlayTrigger`) and for links from outside it
 * (`appRoutes.mainlineNewPlay`: `?new=<game>`, maybe with
 * `&partner=<species>`, or `?new=1` for none), whose parameters it drops from
 * the address once open. The address otherwise stays
 * the page's, so the bar keeps its place. Starting a Play opens it, and the
 * dialog stands down once you are on another page.
 */
export const NewPlayDialogProvider = ({
  children,
  data,
}: NewPlayDialogProviderProps) => {
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const requested = searchParams.get(NEW_PLAY_PARAM);
  const requestedPartner = searchParams.get(NEW_PLAY_PARTNER_PARAM);
  /* One request: the game and its partner, as the address asked. */
  const request =
    requested === null ? null : `${requested}:${requestedPartner ?? ""}`;
  const [intent, setIntent] = useState(data.intent);
  const [opening, setOpening] = useState<Opening | null>(null);
  const [openedOn, setOpenedOn] = useState(pathname);
  const [seenRequest, setSeenRequest] = useState<string | null>(null);
  const triggerCount = useRef(0);

  const close = () =>
    setOpening((current) => current && { ...current, isOpen: false });

  /* Another page (the Play just started, or Back): the dialog stands down. */
  if (openedOn !== pathname) {
    setOpenedOn(pathname);
    close();
  }

  /* `?new=` in the address: open on its game and partner, once per request. */
  if (request !== seenRequest) {
    setSeenRequest(request);

    if (requested !== null) {
      setOpening({
        gameSlug: requested,
        id: `address-${request}`,
        isOpen: true,
        partnerSpeciesSlug: requestedPartner,
      });
    }
  }

  /* Then drop them from the address, without a navigation. */
  useEffect(() => {
    if (request === null) return;

    const url = new URL(window.location.href);

    url.searchParams.delete(NEW_PLAY_PARAM);
    url.searchParams.delete(NEW_PLAY_PARTNER_PARAM);
    window.history.replaceState(
      null,
      "",
      `${url.pathname}${url.search}${url.hash}`,
    );
  }, [request]);

  const opener = useMemo<NewPlayDialogOpener>(
    () => ({
      forgetIntent: (gameSlug) =>
        setIntent((current) =>
          current && (!gameSlug || current.gameSlug === gameSlug)
            ? null
            : current,
        ),
      open: (options) => {
        triggerCount.current += 1;
        setOpening({
          gameSlug: options?.gameSlug ?? null,
          id: `trigger-${triggerCount.current}`,
          isOpen: true,
          partnerSpeciesSlug: null,
        });
      },
    }),
    [],
  );

  return (
    <NewPlayDialogContext.Provider value={opener}>
      {children}
      <Dialog
        open={opening?.isOpen ?? false}
        onOpenChange={(open) => {
          if (!open) close();
        }}
      >
        <DialogContent
          aria-label="New Play"
          fullScreenOnPhone
          showCloseButton={false}
          className="block p-0 sm:max-w-220"
        >
          {opening && data.picker ? (
            <NewPlayWizard
              key={opening.id}
              data={{
                ...data.picker,
                rules: data.rules,
                initial: resolveNewPlayInitialChoice(
                  data.picker.games,
                  opening,
                  intent,
                ),
              }}
              onClose={close}
            />
          ) : (
            <NewPlayUnavailable onClose={close} />
          )}
        </DialogContent>
      </Dialog>
    </NewPlayDialogContext.Provider>
  );
};
