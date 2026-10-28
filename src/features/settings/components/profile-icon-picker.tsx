"use client";

import { getProfileIconTintStyle } from "@/config/profile-icons";
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
 * The Pokémon you can pick as your icon, as round discs on a pale wash of
 * their type: the picked one takes the action border, and tapping it again
 * puts it back to your initial. One picker for Settings' trainer card and
 * Welcome.
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
              style={getProfileIconTintStyle(choice.typeSlug)}
              className={cn(
                "type-tint focus-ring grid size-12 place-items-center overflow-hidden rounded-full border-2 hover:brightness-95",
                isPicked ? "border-action" : "border-transparent",
              )}
            >
              <FallbackImage
                src={choice.url}
                name={choice.name}
                className="size-[93%] object-contain"
              />
            </button>
          }
        />
      );
    })}
  </div>
);
