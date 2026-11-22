"use client";

import { useState } from "react";

import { SETTINGS_ACTION_CLASS_NAME } from "@/features/settings/components/settings-action";
import {
  addAsideToAccount,
  readOwnDataAside,
} from "@/platform/local-db/account-sync";
import { useLocalRead } from "@/platform/local-db/local-db-context";
import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { SettingsRow } from "@/shared/components/settings-row";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";

/*
 * What this device had before you logged in, while it waits for Log out:
 * kept separate from your account, with the way to add it after all (it
 * asks first: a copy in the account can't be taken back), or already
 * added. Nothing when the device had nothing of its own.
 */
export const SettingsOwnDataRow = () => {
  const aside = useLocalRead("own-data-aside", () => readOwnDataAside());
  const [asking, setAsking] = useState(false);
  const [pending, setPending] = useState(false);
  const [message, setMessage] = useState<string | null>(null);
  const state = aside.status === "ready" ? aside.data : "none";

  if (state === "none") return null;

  const add = async () => {
    setPending(true);
    setMessage(null);

    try {
      const result = await addAsideToAccount();

      if (result === "added") {
        setAsking(false);
      } else {
        setMessage(
          result === "waiting"
            ? "A sync question is waiting for your answer. Answer it first."
            : "Voydex couldn't reach your account, so nothing changed. Try again.",
        );
      }
    } catch {
      setMessage("That didn't work, so nothing changed. Try again.");
    } finally {
      setPending(false);
    }
  };

  return (
    <SettingsRow
      title="This device's own Plays"
      description={
        state === "added"
          ? "A copy is in your account. They come back here when you log out."
          : "Kept separate from your account. They come back when you log out."
      }
    >
      {state === "separate" ? (
        <>
          <Button
            type="button"
            variant="secondary"
            className={SETTINGS_ACTION_CLASS_NAME}
            onClick={() => setAsking(true)}
          >
            Add to my account
          </Button>
          <OverlayDialog
            open={asking}
            onOpenChange={(open) => {
              if (!open && !pending) setAsking(false);
            }}
            size="md"
            title="Add this device's Plays to your account?"
            description="A copy joins your account and follows you to your other devices. This can't be undone."
            footer={
              <div className="flex justify-end gap-2 max-sm:*:flex-1">
                <Button
                  type="button"
                  variant="secondary"
                  disabled={pending}
                  onClick={() => setAsking(false)}
                >
                  Cancel
                </Button>
                <Button
                  type="button"
                  disabled={pending}
                  aria-busy={pending}
                  onClick={() => void add()}
                >
                  {pending ? <Spinner data-icon="inline-start" /> : null}
                  Add them
                </Button>
              </div>
            }
          >
            <div className="flex flex-col gap-3">
              <p className="text-ink-2 copy-body">
                Nothing is deleted from this device: its own Plays still come
                back when you log out.
              </p>
              {message ? (
                <p role="alert" className="text-danger copy-body">
                  {message}
                </p>
              ) : null}
            </div>
          </OverlayDialog>
        </>
      ) : (
        <span />
      )}
    </SettingsRow>
  );
};
