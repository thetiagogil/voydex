import { AppIcon } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { appIcons } from "@/shared/domain/icons/app-icons";
import { cn } from "@/shared/utils/cn";

type UnsavedChangesFooterProps = {
  className?: string;
  isSaving?: boolean;
  onCancel: () => void;
  /* Leave unset when Save submits the section's form. */
  onSave?: () => void;
  saveLabel?: string;
};

/*
 * v3's settings footer (`.set-foot`): shown only while its section has
 * unsaved changes, it sits flush along the card's bottom edge. Render it as
 * the last child of a `DetailSectionCard`'s content.
 */
export const UnsavedChangesFooter = ({
  className,
  isSaving = false,
  onCancel,
  onSave,
  saveLabel = "Save",
}: UnsavedChangesFooterProps) => (
  <div
    data-slot="unsaved-changes-footer"
    className={cn(
      "bg-surface-2 -mx-5 mt-5 -mb-5 flex flex-wrap items-center gap-2.5 px-5 py-3 sm:-mx-6 sm:-mb-6 sm:px-6 sm:py-3.5",
      className,
    )}
  >
    <span
      role="status"
      className="text-14 text-action-ink mr-auto inline-flex items-center gap-2 font-bold"
    >
      <AppIcon icon={appIcons.actions.edit} />
      Unsaved changes
    </span>
    <Button
      type="button"
      size="sm"
      variant="secondary"
      disabled={isSaving}
      onClick={onCancel}
    >
      Cancel
    </Button>
    <Button
      type={onSave ? "button" : "submit"}
      size="sm"
      disabled={isSaving}
      onClick={onSave}
    >
      {isSaving ? "Saving…" : saveLabel}
    </Button>
  </div>
);
