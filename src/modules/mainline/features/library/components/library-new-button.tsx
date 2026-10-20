"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryNameDialog } from "@/modules/mainline/features/library/components/library-name-dialog";
import {
  createLibraryRuleAction,
  createLibraryTagAction,
} from "@/modules/mainline/features/library/server/library-actions";
import type { LibraryRuleKind } from "@/modules/mainline/features/library/types";
import { libraryNameMaxLength } from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

/*
 * The Library head's main action, New rule or New tag after the tab you're
 * on: it asks for the name (and a rule's kind, Custom to start).
 */
export const LibraryNewButton = (
  props: { kinds: LibraryRuleKind[]; noun: "rule" } | { noun: "tag" },
) => {
  const router = useRouter();
  const [isOpen, setIsOpen] = useState(false);
  const isRule = props.noun === "rule";
  const kinds = props.noun === "rule" ? props.kinds : undefined;
  const customKind = kinds?.find((kind) => kind.slug === "custom");

  return (
    <>
      <Button type="button" onClick={() => setIsOpen(true)}>
        <AppIcon icon={appIcons.actions.create} inline="start" />
        {isRule ? "New rule" : "New tag"}
      </Button>
      {isOpen ? (
        <LibraryNameDialog
          open
          onOpenChange={setIsOpen}
          title={isRule ? "New rule" : "New tag"}
          submitLabel={isRule ? "Add rule" : "Add tag"}
          nameLabel={isRule ? "Rule name" : "Tag name"}
          maxLength={libraryNameMaxLength[props.noun]}
          kinds={kinds}
          initial={{ kindId: customKind?.id ?? null, name: "" }}
          onSubmit={async ({ kindId, name }) => {
            if (isRule && !kindId) return "Pick a kind from the list.";

            const result =
              isRule && kindId
                ? await createLibraryRuleAction({ kindId, name })
                : await createLibraryTagAction(name);

            if (result.status === "error") return result.message;

            toast.success(result.message);
            router.refresh();

            return null;
          }}
        />
      ) : null}
    </>
  );
};
