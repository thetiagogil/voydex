"use client";

import type { ProfileIconChoice } from "@/features/settings/types";
import { FallbackImage } from "@/shared/components/fallback-image";
import { IconTip } from "@/shared/components/icon-tip";
import { cn } from "@/shared/utils/cn";

type ProfileIconPickerProps = {
  /* What names the group to a screen reader, such as "Your icon". */
  ariaLabel: string;
  choices: readonly ProfileIconChoice[];
  /* The form field the pick travels in; empty means no icon. */
  name: string;
  onChange: (formId: number | null) => void;
  value: number | null;
};

/*
 * The Pokémon you can pick as your icon, as round discs: the picked one takes
 * the selected tint with its border (the same pick as a team slot), and
 * tapping it again puts it back to your initial. One picker for Settings'
 * trainer card and Welcome.
 */
export const ProfileIconPicker = ({
  ariaLabel,
  choices,
  name,
  onChange,
  value,
}: ProfileIconPickerProps) => (
  <div role="group" aria-label={ariaLabel} className="flex flex-wrap gap-2">
    <input type="hidden" name={name} value={value ?? ""} />
    {choices.map((choice) => {
      const isPicked = choice.formId === value;

      return (
        <IconTip
          key={choice.formId}
          label={choice.name}
          trigger={
            <button
              type="button"
              aria-label={choice.name}
              aria-pressed={isPicked}
              onClick={() => onChange(isPicked ? null : choice.formId)}
              className={cn(
                "focus-ring grid size-12 place-items-center rounded-full border-[1.5px]",
                isPicked
                  ? "bg-select-soft border-action"
                  : "bg-surface-2 hover:bg-hover border-transparent",
              )}
            >
              <FallbackImage
                src={choice.url}
                name={choice.name}
                className="size-9 object-contain"
              />
            </button>
          }
        />
      );
    })}
  </div>
);
