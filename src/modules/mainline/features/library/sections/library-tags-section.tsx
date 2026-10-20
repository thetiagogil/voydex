"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryDeleteDialog } from "@/modules/mainline/features/library/components/library-delete-dialog";
import { LibraryItemMenu } from "@/modules/mainline/features/library/components/library-item-menu";
import { LibraryNameDialog } from "@/modules/mainline/features/library/components/library-name-dialog";
import { getLibraryUsageLabel } from "@/modules/mainline/features/library/data/library-model";
import {
  createLibraryTagAction,
  deleteLibraryTagAction,
  renameLibraryTagAction,
} from "@/modules/mainline/features/library/server/library-actions";
import type { LibraryTag } from "@/modules/mainline/features/library/types";
import { libraryNameMaxLength } from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ChoiceChip } from "@/shared/components/choice-chip";

type TagDialog =
  | { mode: "create" }
  | { mode: "delete"; tag: LibraryTag }
  | { mode: "rename"; tag: LibraryTag };

/*
 * Tags: each of yours as a pill that lifts like a card, with how many Plays
 * and Plans wear it; the pill opens Rename and Delete. The dashed pill makes
 * a new one.
 */
export const LibraryTagsSection = ({ tags }: { tags: LibraryTag[] }) => {
  const router = useRouter();
  const [dialog, setDialog] = useState<TagDialog | null>(null);
  const close = (open: boolean) => {
    if (!open) setDialog(null);
  };

  return (
    <section aria-label="Tags">
      <ul className="flex flex-wrap items-center gap-3">
        <li>
          <ChoiceChip
            variant="add"
            size="lg"
            onClick={() => setDialog({ mode: "create" })}
          >
            New tag
          </ChoiceChip>
        </li>
        {tags.map((tag) => {
          const usageLabel = getLibraryUsageLabel(tag);
          const uses = tag.playCount + tag.planCount;

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

      {dialog?.mode === "create" || dialog?.mode === "rename" ? (
        <LibraryNameDialog
          key={dialog.mode === "rename" ? dialog.tag.id : "create"}
          open
          onOpenChange={close}
          title={dialog.mode === "rename" ? "Rename tag" : "New tag"}
          submitLabel={dialog.mode === "rename" ? "Rename" : "Add tag"}
          nameLabel="Tag name"
          maxLength={libraryNameMaxLength.tag}
          initial={{
            kindId: null,
            name: dialog.mode === "rename" ? dialog.tag.name : "",
          }}
          onSubmit={async ({ name }) => {
            const result =
              dialog.mode === "rename"
                ? await renameLibraryTagAction({ id: dialog.tag.id, name })
                : await createLibraryTagAction(name);

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
