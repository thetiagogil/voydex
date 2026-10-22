import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

export type SlotPickerSlot = {
  /* Why a slot can't be picked; shown as its tooltip and read aloud. */
  disabledReason?: string;
  /* Who sits in it: the sprite shows, an open slot keeps the sprite's place. */
  image?: { name: string; url: string | null | undefined } | null;
  /* What the slot says to a screen reader, such as "Move to slot 2". */
  label: string;
  /* What it shows: its number, or "R1" in a reserve. */
  mark: string;
  /*
   * In a preview of a move, the place it leaves (`from`, blue); the slot it
   * goes to is the picked one, in red.
   */
  tone?: "from";
  value: number;
};

export type SlotPickerGroup = {
  /* A word over a group that needs one, such as "Team" or "Reserve". */
  label?: string;
  slots: readonly SlotPickerSlot[];
};

/*
 * The slots of a team as small squares, six to a row: each shows its sprite
 * and number, and the picked one takes the selected tint with its border (a
 * move being previewed also marks the place it leaves, in blue). One picker
 * for the roster editor (team and reserve) and the Team Planner's slot sheet.
 */
export const SlotPicker = ({
  ariaLabel,
  groups,
  onPick,
  selected,
}: {
  ariaLabel: string;
  groups: readonly SlotPickerGroup[];
  onPick: (slot: number) => void;
  selected: number | null;
}) => (
  <div role="group" aria-label={ariaLabel} className="grid gap-3">
    {groups.map((group, index) => (
      <div key={group.label ?? index} className="grid gap-1.5">
        {group.label ? (
          <p aria-hidden className="text-ink-3 text-13 font-extrabold">
            {group.label}
          </p>
        ) : null}
        <div className="grid grid-cols-6 gap-1.5">
          {group.slots.map((slot) => {
            const isSelected = slot.value === selected;

            return (
              <button
                key={slot.value}
                type="button"
                aria-pressed={isSelected}
                aria-label={slot.label}
                disabled={Boolean(slot.disabledReason)}
                title={slot.disabledReason}
                onClick={() => onPick(slot.value)}
                className={cn(
                  "text-13 focus-ring flex h-15 min-w-0 flex-col items-center justify-center gap-0.5 rounded-md border-[1.5px] font-extrabold tabular-nums disabled:opacity-50",
                  isSelected
                    ? "bg-select-soft text-select-ink border-action"
                    : slot.tone === "from"
                      ? "bg-calm-soft text-calm-ink border-calm"
                      : "bg-surface-2 text-ink-2 hover:bg-hover border-transparent",
                )}
              >
                {slot.image ? (
                  <FallbackImage
                    src={slot.image.url}
                    name={slot.image.name}
                    className="size-8"
                  />
                ) : (
                  <span
                    aria-hidden
                    className="empty-slot size-7 rounded-full [border-width:2px]"
                  />
                )}
                <span aria-hidden>{slot.mark}</span>
              </button>
            );
          })}
        </div>
      </div>
    ))}
  </div>
);
