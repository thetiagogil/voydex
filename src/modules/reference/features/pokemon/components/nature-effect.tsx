import { getNatureEffect } from "@/modules/reference/features/pokemon/domain/nature-stats";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

/*
 * What a nature does, in one short line wherever natures are listed: the raised
 * stat with a red up arrow, the lowered one with a blue down arrow ("ATK
 * SPA", or "Attack Sp. Atk" with room), or "Neutral" for a nature that changes nothing. A screen reader
 * hears the words, not the abbreviations. Both are one 20px line, so a
 * neutral nature takes the same room as any other.
 */
export const NatureEffect = ({
  decreased,
  increased,
  size = "short",
}: {
  decreased: string | null;
  increased: string | null;
  /* `short` ("SPA") for a list's row end; `label` ("Sp. Atk") where there is room, such as a panel. */
  size?: "label" | "short";
}) => {
  const effect = getNatureEffect(increased, decreased);

  if (effect.kind === "neutral") {
    return (
      <span className="text-ink-3 text-13 flex h-5 items-center font-bold">
        Neutral
      </span>
    );
  }

  return (
    <span className="text-13 flex h-5 items-center gap-2.5 font-extrabold tabular-nums">
      <span className="sr-only">
        {`Raises ${effect.increased.name}, lowers ${effect.decreased.name}`}
      </span>
      <span aria-hidden className="text-action-ink flex items-center gap-0.5">
        <AppIcon icon={appIcons.status.statUp} size="sm" strokeWidth={3} />
        {size === "label"
          ? effect.increased.label
          : effect.increased.abbreviation}
      </span>
      <span aria-hidden className="text-calm-ink flex items-center gap-0.5">
        <AppIcon icon={appIcons.status.statDown} size="sm" strokeWidth={3} />
        {size === "label"
          ? effect.decreased.label
          : effect.decreased.abbreviation}
      </span>
    </span>
  );
};
