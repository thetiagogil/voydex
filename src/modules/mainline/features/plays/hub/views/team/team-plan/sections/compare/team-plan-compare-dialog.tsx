"use client";

import type { ReactNode } from "react";

import type { MainlinePlayTeamPlanMemberComparison } from "@/modules/mainline/features/plays/hub/types";
import { getTeamPlanStatusDescription } from "../../team-plan-display";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogClose,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { cn } from "@/shared/utils/cn";

import {
  getTeamPlanPlannedImageUrl,
  getTeamPlanTypeStyle,
  TeamPlanArt,
} from "../../components/team-plan-pokemon";
import {
  getTeamPlanCompareRows,
  getTeamPlanMemberPlacement,
  isTeamPlanTargetOwned,
  type TeamPlanCompareState,
} from "../../team-plan-model";

/* An uncaught target's cells already say "Not caught yet", so no mark text. */
const markLabels: Record<TeamPlanCompareState, string | null> = {
  differs: "Differs from the Plan",
  empty: null,
  free: "Not set by the Plan",
  none: "Not recorded",
  ok: "Matches the Plan",
};

/* v3 marks: a check when it matches, "≠" when it differs, nothing otherwise. */
const CompareMark = ({ state }: { state: TeamPlanCompareState }) => (
  <>
    {state === "ok" ? (
      <AppIcon icon={appIcons.status.active} size={16} className="text-ok" />
    ) : null}
    {state === "differs" ? (
      <span aria-hidden className="text-warn-ink text-16 font-extrabold">
        ≠
      </span>
    ) : null}
    {markLabels[state] ? (
      <span className="sr-only">{markLabels[state]}</span>
    ) : null}
  </>
);

/*
 * What this Play recorded for a field. A caught match that lacks the field
 * says "Not recorded"; an uncaught target leaves the cell empty, as v3 does.
 */
const RecordedValue = ({
  caught,
  recorded,
}: {
  caught: boolean;
  recorded: string | null;
}) => {
  if (recorded) return recorded;
  if (caught) return "Not recorded";

  return <span className="sr-only">Not caught yet</span>;
};

const artBoxClassName =
  "grid size-20 place-items-center rounded-xl sm:size-[110px]";
const artClassName = "size-[68px] sm:size-[92px]";

/* One side of the head: a label, the Pokémon and its name. */
const CompareSide = ({
  art,
  label,
  name,
  nameClassName,
  placement,
}: {
  art: ReactNode;
  label: string;
  name: string;
  nameClassName?: string;
  placement?: string;
}) => (
  <div className="flex min-w-0 flex-col items-center gap-1.5 text-center">
    <span className="text-13 text-ink-tint font-bold">{label}</span>
    {art}
    <b
      className={cn(
        "font-display text-20 w-full truncate leading-tight font-semibold",
        nameClassName,
      )}
    >
      {name}
    </b>
    {placement ? (
      <span className="text-13 text-ink-tint font-semibold">{placement}</span>
    ) : null}
  </div>
);

const RecordedSide = ({
  comparison,
}: {
  comparison: MainlinePlayTeamPlanMemberComparison;
}) => {
  const member = comparison.playMember;

  if (!member) {
    return (
      <CompareSide
        label="In this Play"
        name="Not caught yet"
        nameClassName="text-ink-tint"
        art={
          <span className={cn(artBoxClassName, "empty-slot")}>
            <TeamPlanArt
              imageUrl={getTeamPlanPlannedImageUrl(comparison)}
              silhouette
              className={artClassName}
            />
          </span>
        }
      />
    );
  }

  const owned = isTeamPlanTargetOwned(comparison);

  return (
    <CompareSide
      label="In this Play"
      name={getPlayTeamMemberName(member)}
      placement={getTeamPlanMemberPlacement(member).label}
      art={
        <span
          style={getTeamPlanTypeStyle(member.primaryType)}
          className={cn(
            artBoxClassName,
            owned ? "sticker" : "bg-surface border-line border",
          )}
        >
          <TeamPlanArt
            imageUrl={getPlayTeamMemberImageUrl(member)}
            className={artClassName}
          />
        </span>
      }
    />
  );
};

type TeamPlanCompareDialogProps = {
  comparison: MainlinePlayTeamPlanMemberComparison | null;
  mechanics: GameMechanicsProfile;
  onOpenChange: (open: boolean) => void;
  open: boolean;
};

/*
 * v3 compare dialog: the planned target beside what this Play recorded, then
 * what the Plan asks for against what was recorded, row by row. The planned
 * Pokémon is reference, so it stays plain; only a match you own is a sticker.
 */
export const TeamPlanCompareDialog = ({
  comparison,
  mechanics,
  onOpenChange,
  open,
}: TeamPlanCompareDialogProps) => {
  return (
    <Dialog open={open && comparison !== null} onOpenChange={onOpenChange}>
      {comparison ? (
        <DialogContent
          fullScreenOnPhone
          className="flex flex-col gap-0 p-0 sm:max-w-[min(45rem,calc(100%-2rem))]"
        >
          <DialogTitle className="sr-only">
            Target {comparison.slot}, {comparison.plannedName}, compared with
            this Play
          </DialogTitle>
          <DialogDescription className="sr-only">
            {getTeamPlanStatusDescription(comparison.status)}
          </DialogDescription>

          <div
            style={getTeamPlanTypeStyle(comparison.plannedPrimaryType)}
            className="grid shrink-0 grid-cols-[minmax(0,1fr)_2rem_minmax(0,1fr)] items-center gap-3 bg-[color-mix(in_oklab,var(--t)_16%,var(--surface))] p-[18px] sm:grid-cols-[minmax(0,1fr)_2.5rem_minmax(0,1fr)] sm:px-7 sm:py-6"
          >
            <CompareSide
              label={[
                "Planned",
                `Target ${comparison.slot}`,
                comparison.roleLabel,
              ]
                .filter(Boolean)
                .join(" · ")}
              name={comparison.plannedName}
              art={
                <span
                  className={cn(
                    artBoxClassName,
                    "bg-surface border-line border",
                  )}
                >
                  <TeamPlanArt
                    imageUrl={getTeamPlanPlannedImageUrl(comparison)}
                    className={artClassName}
                  />
                </span>
              }
            />
            <AppIcon
              icon={appIcons.actions.continue}
              size="md"
              className="text-ink-tint justify-self-center"
            />
            <RecordedSide comparison={comparison} />
          </div>

          <div className="flex-1 px-[18px] pt-1.5 pb-4 sm:px-7 sm:pt-2.5 sm:pb-5">
            <table className="text-14 sm:text-15 w-full border-collapse">
              <caption className="sr-only">
                What the Plan asks for and what this Play recorded
              </caption>
              <thead>
                <tr className="border-line text-13 text-ink-3 border-b text-left font-bold">
                  <th
                    scope="col"
                    className="w-[5.5rem] px-2 py-2.5 sm:w-[6.875rem]"
                  >
                    <span className="sr-only">Field</span>
                  </th>
                  <th scope="col" className="px-2 py-2.5">
                    Plan asks for
                  </th>
                  <th scope="col" className="px-2 py-2.5">
                    Recorded
                  </th>
                  <th scope="col" className="w-[30px] py-2.5">
                    <span className="sr-only">Result</span>
                  </th>
                </tr>
              </thead>
              <tbody>
                {getTeamPlanCompareRows(comparison, mechanics).map(
                  (row, index) => (
                    <tr
                      /* "Extra move" can repeat, so rows key by position. */
                      key={index}
                      className={cn(
                        "border-line border-b",
                        /* Quieter than the warn pill: the "≠" carries the meaning. */
                        row.state === "differs" &&
                          "bg-[color-mix(in_oklab,var(--warn-soft)_55%,var(--surface))]",
                      )}
                    >
                      <th
                        scope="row"
                        className="text-13 text-ink-2 px-2 py-2.5 text-left font-bold"
                      >
                        {row.label}
                      </th>
                      <td
                        className={cn(
                          "px-2 py-2.5 font-bold",
                          row.state === "free" && "text-ink-3 font-semibold",
                        )}
                      >
                        {row.planned}
                      </td>
                      <td
                        className={cn(
                          "px-2 py-2.5 font-bold",
                          row.state === "differs" && "text-warn-ink",
                          (row.state === "empty" || !row.recorded) &&
                            "text-ink-3 font-semibold",
                        )}
                      >
                        <RecordedValue
                          caught={comparison.playMember !== null}
                          recorded={row.recorded}
                        />
                      </td>
                      <td className="py-2.5 text-center">
                        <CompareMark state={row.state} />
                      </td>
                    </tr>
                  ),
                )}
              </tbody>
            </table>

            {comparison.memberNotes ? (
              <p className="bg-surface-2 text-ink-2 text-15 mt-4.5 rounded-md px-4 py-3 leading-[1.55]">
                “{comparison.memberNotes}”
              </p>
            ) : null}
          </div>

          <DialogFooter className="mx-0 mb-0 shrink-0 flex-row flex-wrap items-center justify-end px-[18px] sm:px-8">
            <span className="text-13 text-ink-2 mr-auto font-semibold">
              Plans are read only inside a Play
            </span>
            <DialogClose render={<Button variant="outline" size="sm" />}>
              Close
            </DialogClose>
          </DialogFooter>
        </DialogContent>
      ) : null}
    </Dialog>
  );
};
