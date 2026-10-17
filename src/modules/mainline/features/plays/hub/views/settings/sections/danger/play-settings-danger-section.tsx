"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import { RestorePlayButton } from "@/modules/mainline/features/plays/shared/components/restore-play-button";
import { setPlayArchivedAction } from "@/modules/mainline/features/plays/shared/server/play-archive-action";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import { SettingsRow } from "@/shared/components/settings-row";
import { Spinner } from "@/shared/components/ui/spinner";

import { deletePlayAction } from "../../server/play-settings-actions";

/*
 * Archive or delete (v3 `settings` last card). Archiving hides the Play from
 * your lists and can be undone (an archived Play offers Restore here);
 * deleting removes it and everything recorded in it, so it asks first.
 */
export const PlaySettingsDangerSection = ({
  isArchived,
  playId,
  playName,
}: {
  isArchived: boolean;
  playId: string;
  playName: string;
}) => {
  const router = useRouter();
  const [isConfirmOpen, setIsConfirmOpen] = useState(false);
  const [deleteError, setDeleteError] = useState<string | null>(null);
  const [isArchiving, startArchiving] = useTransition();
  const [isDeleting, startDeleting] = useTransition();

  const restore = () => {
    void setPlayArchivedAction({ archived: false, playId }).then((result) => {
      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(result.message);
      router.push(appRoutes.mainlinePlay(playId));
    });
  };

  const archive = () => {
    startArchiving(async () => {
      const result = await setPlayArchivedAction({ archived: true, playId });

      if (result.status === "error") {
        toast.error(result.message);
        return;
      }

      toast.success(`${playName} archived`, {
        action: { label: "Undo", onClick: restore },
      });
      router.push(appRoutes.mainlinePlays);
    });
  };

  const remove = () => {
    startDeleting(async () => {
      const result = await deletePlayAction({ playId });

      if (result.status === "error") {
        setDeleteError(result.message);
        return;
      }

      setIsConfirmOpen(false);
      toast.success(`${playName} deleted`);
      router.push(appRoutes.mainlinePlays);
    });
  };

  return (
    <DetailSectionCard id="archive" title="Archive or delete">
      {isArchived ? (
        <SettingsRow
          title="Restore this Play"
          description="It's archived: hidden from Home and your list of Plays. Restore puts it back."
        >
          <RestorePlayButton playId={playId} playName={playName} />
        </SettingsRow>
      ) : (
        <SettingsRow
          title="Archive this Play"
          description="Hides it from Home and your list of Plays. You can restore it any time."
        >
          <Button
            type="button"
            variant="secondary"
            size="sm"
            disabled={isArchiving}
            aria-busy={isArchiving}
            onClick={archive}
          >
            {isArchiving ? <Spinner data-icon="inline-start" /> : null}
            Archive
          </Button>
        </SettingsRow>
      )}
      <SettingsRow
        title="Delete this Play"
        description="Removes the Play and everything recorded in it: team, Story, Pokédex and History. This can't be undone."
      >
        <Button
          type="button"
          variant="destructive"
          size="sm"
          onClick={() => {
            setDeleteError(null);
            setIsConfirmOpen(true);
          }}
        >
          Delete Play
        </Button>
      </SettingsRow>

      <AlertDialog
        open={isConfirmOpen}
        onOpenChange={(open) => {
          if (!isDeleting) {
            setIsConfirmOpen(open);
          }
        }}
      >
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>Delete {playName}?</AlertDialogTitle>
            <AlertDialogDescription>
              Its team, Story, Pokédex and History go with it. This can&apos;t
              be undone. To keep it out of the way instead, archive it.
            </AlertDialogDescription>
          </AlertDialogHeader>
          {deleteError ? (
            <p role="alert" className="text-danger text-13 font-bold">
              {deleteError}
            </p>
          ) : null}
          <AlertDialogFooter>
            <AlertDialogCancel disabled={isDeleting}>Keep it</AlertDialogCancel>
            <Button
              type="button"
              variant="destructive"
              disabled={isDeleting}
              aria-busy={isDeleting}
              onClick={remove}
            >
              {isDeleting ? <Spinner data-icon="inline-start" /> : null}
              {isDeleting ? "Deleting…" : "Delete Play"}
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </DetailSectionCard>
  );
};
