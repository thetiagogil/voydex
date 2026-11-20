"use client";

import { useState } from "react";
import { toast } from "sonner";

import { LibraryDeleteDialog } from "@/modules/mainline/features/library/components/library-delete-dialog";
import { LibraryTagDetails } from "@/modules/mainline/features/library/components/library-tag-details";
import { getLibraryUsageLabel } from "@/modules/mainline/features/library/data/library-model";
import {
  deleteLibraryTagAction,
  renameLibraryTagAction,
} from "@/modules/mainline/features/library/client/library-actions";
import type { LibraryTag } from "@/modules/mainline/features/library/types";
import { PaperTag } from "@/shared/components/paper-tag";
import { EmptyState } from "@/shared/components/empty-state";

type TagDialog =
  { mode: "delete"; tag: LibraryTag } | { mode: "view"; tag: LibraryTag };

/*
 * Tags: each of yours as a pill on a soft shadow, with how many Plays
 * wear it; the pill opens the tag in full, to rename or delete it. New tag
 * sits in the page's head.
 */
export const LibraryTagsSection = ({ tags }: { tags: LibraryTag[] }) => {
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
              <button
                type="button"
                aria-label={`${tag.name}, ${usageLabel}`}
                onClick={() => setDialog({ mode: "view", tag })}
                className="focus-ring rounded-xs transition-[filter] hover:brightness-95"
              >
                <PaperTag size="lg">
                  {tag.name}
                  <span className="text-ink-3 copy-meta tabular-nums">
                    {uses}
                  </span>
                </PaperTag>
              </button>
            </li>
          );
        })}
      </ul>

      {dialog?.mode === "view" ? (
        <LibraryTagDetails
          key={dialog.tag.id}
          open
          onOpenChange={close}
          tag={dialog.tag}
          onDelete={() => setDialog({ mode: "delete", tag: dialog.tag })}
          onSave={async (name) => {
            const result = await renameLibraryTagAction({
              id: dialog.tag.id,
              name,
            });

            if (result.status === "error") return result.message;

            toast.success(result.message);
            setDialog(null);

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

            return null;
          }}
        />
      ) : null}
    </section>
  );
};
