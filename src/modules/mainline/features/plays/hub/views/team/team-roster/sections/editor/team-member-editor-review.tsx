import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { EmptyState } from "@/shared/components/empty-state";
import { Button } from "@/shared/components/ui/button";

import type {
  TeamMemberEditorChange,
  TeamMemberEditorField,
} from "../../utils/team-member-editor-model";

/* Review changes: each change as Was and Will be, with Revert. */
export const TeamMemberEditorReview = ({
  changes,
  id,
  onRevert,
}: {
  changes: TeamMemberEditorChange[];
  id: string;
  onRevert: (field: TeamMemberEditorField) => void;
}) => (
  <section aria-labelledby={`${id}-review`} className="grid gap-4">
    <div className="grid gap-1">
      <h3 id={`${id}-review`} className="title-card">
        Review changes{" "}
        <span className="text-ink-3 tabular-nums">{changes.length}</span>
      </h3>
      <p className="text-ink-2 text-14 font-semibold">
        Nothing is saved until you press Save. Revert anything you didn&apos;t
        mean to change.
      </p>
    </div>
    {changes.length ? (
      <ul className="grid">
        {changes.map((item) => (
          <li key={item.field} className="grid gap-2 py-3.5">
            <div className="flex items-center justify-between gap-3">
              <b className="text-15 font-extrabold">{item.label}</b>
              <Button
                type="button"
                variant="ghost"
                size="sm"
                onClick={() => onRevert(item.field)}
              >
                <AppIcon icon={appIcons.actions.retry} inline="start" />
                Revert
              </Button>
            </div>
            <dl className="grid gap-2 sm:grid-cols-2">
              <div className="bg-surface-2 rounded-md px-3 py-2">
                <dt className="text-ink-3 text-12 font-extrabold">Was</dt>
                <dd className="text-14 font-semibold wrap-break-word">
                  {item.previous}
                </dd>
              </div>
              <div className="bg-select-soft text-select-ink rounded-md px-3 py-2">
                <dt className="text-12 font-extrabold">Will be</dt>
                <dd className="text-14 font-bold wrap-break-word">
                  {item.next}
                </dd>
              </div>
            </dl>
          </li>
        ))}
      </ul>
    ) : (
      <EmptyState variant="bare" title="No changes left to review." />
    )}
  </section>
);
