import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

/*
 * v3 `.rchip`: one choice in a set you can pick several of (expansions,
 * challenge rules). Flat with a hairline; picked, it takes the one selected
 * style and a check, so the state never rests on colour alone.
 */
export const SettingsChoiceChip = ({
  disabled = false,
  label,
  onToggle,
  pressed,
}: {
  disabled?: boolean;
  label: string;
  onToggle: () => void;
  pressed: boolean;
}) => (
  <button
    type="button"
    aria-pressed={pressed}
    disabled={disabled}
    onClick={onToggle}
    className={cn(
      "text-14 inline-flex min-h-10 items-center gap-1.5 rounded-full border-[1.5px] px-4 font-bold transition-colors",
      "focus-visible:outline-focus outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
      "disabled:cursor-not-allowed disabled:opacity-50",
      pressed
        ? "bg-select-soft text-select-ink border-transparent font-extrabold"
        : "border-line text-ink-2 hover:bg-hover hover:text-ink",
    )}
  >
    {pressed ? <AppIcon icon={appIcons.status.active} /> : null}
    {label}
  </button>
);
