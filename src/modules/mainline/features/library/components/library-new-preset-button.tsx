"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryPresetDetails } from "@/modules/mainline/features/library/components/library-preset-details";
import { saveLibraryPresetAction } from "@/modules/mainline/features/library/server/library-actions";
import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

/*
 * The Presets tab head's main action: New preset opens an empty preset, its
 * name, what it's for and its board.
 */
export const LibraryNewPresetButton = ({
  kinds,
  rules,
}: {
  kinds: LibraryRuleKind[];
  rules: LibraryRule[];
}) => {
  const router = useRouter();
  const [isOpen, setIsOpen] = useState(false);

  return (
    <>
      <Button type="button" onClick={() => setIsOpen(true)}>
        <AppIcon icon={appIcons.actions.create} inline="start" />
        New preset
      </Button>
      {isOpen ? (
        <LibraryPresetDetails
          open
          preset={null}
          kinds={kinds}
          rules={rules}
          onOpenChange={setIsOpen}
          onSave={async ({ description, name, ruleIds }) => {
            const result = await saveLibraryPresetAction({
              description,
              name,
              ruleIds,
            });

            if (result.status === "error") return result.message;

            toast.success(result.message);
            setIsOpen(false);
            router.refresh();

            return null;
          }}
        />
      ) : null}
    </>
  );
};
