"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryDeleteDialog } from "@/modules/mainline/features/library/components/library-delete-dialog";
import { LibraryItemMenu } from "@/modules/mainline/features/library/components/library-item-menu";
import { LibraryNameDialog } from "@/modules/mainline/features/library/components/library-name-dialog";
import { getLibraryUsageLabel } from "@/modules/mainline/features/library/data/library-model";
import {
  deleteLibraryTagAction,
  renameLibraryTagAction,
} from "@/modules/mainline/features/library/server/library-actions";
import type { LibraryTag } from "@/modules/mainline/features/library/types";
import { libraryNameMaxLength } from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";

type TagDialog =
  | { mode: "delete"; tag: LibraryTag }
  | { mode: "rename"; tag: LibraryTag };

/*
 * Tags: each of yours as a pill that lifts like a card, with how many Plays
 * wear it; the pill opens Rename and Delete. New tag sits in the
 * page's head.
 */
export const LibraryTagsSection = ({ tags }: { tags: LibraryTag[] }) => {
  const router = useRouter();
  const [dialog, setDialog] = useState<TagDialog | null>(null);
  const close = (open: boolean) => {
    if (!open) setDialog(null);
  };

  return (
    <section aria-label="Tags">
      {tags.length ? null : (
        <EmptyState variant="bare" title="No tags yet. New tag makes one." />
      )}
      <ul className="flex flex-wrap items-center gap-3">
        {tags.map((tag) => {
          const usageLabel = getLibraryUsageLabel(tag);
          const uses = tag.playCount;

          return (
            <li key={tag.id}>
              <LibraryItemMenu
                editLabel="Rename"
                usageLabel={usageLabel}
                onEdit={() => setDialog({ mode: "rename", tag })}
                onDelete={() => setDialog({ mode: "delete", tag })}
                trigger={
                  <button
                    type="button"
                    aria-label={`${tag.name}, ${usageLabel}`}
                    className="bg-surface shadow-card hover:bg-hover focus-ring text-15 text-ink inline-flex min-h-12 items-center gap-2 rounded-full px-4 font-bold transition-colors"
                  >
                    <AppIcon
                      icon={appIcons.product.tag}
                      size="sm"
                      className="text-ink-3"
                    />
                    {tag.name}
                    <span className="text-ink-3 text-13 tabular-nums">
                      {uses}
                    </span>
                  </button>
                }
              />
            </li>
          );
        })}
      </ul>

      {dialog?.mode === "rename" ? (
        <LibraryNameDialog
          key={dialog.tag.id}
          open
          onOpenChange={close}
          title="Rename tag"
          submitLabel="Rename"
          nameLabel="Tag name"
          maxLength={libraryNameMaxLength.tag}
          initial={{ kindId: null, name: dialog.tag.name }}
          onSubmit={async ({ name }) => {
            const result = await renameLibraryTagAction({
              id: dialog.tag.id,
              name,
            });

            if (result.status === "error") return result.message;

            toast.success(result.message);
            router.refresh();

            return null;
          }}
        />
      ) : null}

      {dialog?.mode === "delete" ? (
        <LibraryDeleteDialog
          open
          onOpenChange={close}
          name={dialog.tag.name}
          noun="tag"
          usage={dialog.tag}
          onConfirm={async () => {
            const result = await deleteLibraryTagAction(dialog.tag.id);

            if (result.status === "error") return result.message;

            toast.success(`${dialog.tag.name} deleted`);
            router.refresh();

            return null;
          }}
        />
      ) : null}
    </section>
  );
};
