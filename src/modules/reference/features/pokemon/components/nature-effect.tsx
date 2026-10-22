import { getNatureEffect } from "@/modules/reference/features/pokemon/domain/nature-stats";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

/*
 * What a nature does, in one short line wherever natures are listed: the raised
 * stat with a red up arrow, the lowered one with a blue down arrow ("ATK
 * SPA"), or "Neutral" for a nature that changes nothing. A screen reader
 * hears the words, not the abbreviations.
 */
export const NatureEffect = ({
  decreased,
  increased,
}: {
  decreased: string | null;
  increased: string | null;
}) => {
  const effect = getNatureEffect(increased, decreased);

  if (effect.kind === "neutral") {
    return <span className="text-ink-3 text-13 font-bold">Neutral</span>;
  }

  return (
    <span className="text-13 flex items-center gap-2.5 font-extrabold tabular-nums">
      <span className="sr-only">
        {`Raises ${effect.increased.name}, lowers ${effect.decreased.name}`}
      </span>
      <span aria-hidden className="text-action-ink flex items-center gap-0.5">
        <AppIcon icon={appIcons.status.statUp} size="sm" strokeWidth={3} />
        {effect.increased.abbreviation}
      </span>
      <span aria-hidden className="text-calm-ink flex items-center gap-0.5">
        <AppIcon icon={appIcons.status.statDown} size="sm" strokeWidth={3} />
        {effect.decreased.abbreviation}
      </span>
    </span>
  );
};
