import { DetailSectionCard } from "@/shared/components/detail-section-card";
import {
  getPokemonDetailStatPolygon,
  getPokemonDetailStatsTotal,
  type PokemonDetailStat,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

type PokemonDetailStatsCardProps = {
  generationName: string;
  stats: PokemonDetailStat[];
  type: PokemonTypeSlug | null;
};

const size = { height: 300, width: 360 };
const centre = { x: size.width / 2, y: size.height / 2 };
const radius = 100;

const toPoints = (points: { x: number; y: number }[]) => {
  return points.map(({ x, y }) => `${x.toFixed(1)},${y.toFixed(1)}`).join(" ");
};

/*
 * Base stats as the games' summary screen draws them: one corner per stat
 * (a pentagon for Generation I's single Special), the shape filled in the
 * Pokémon's type colour over rings at half and full scale, each stat's
 * name and value at its corner and the total under it. The figures are
 * also read out as a list.
 */
export const PokemonDetailStatsCard = ({
  generationName,
  stats,
  type,
}: PokemonDetailStatsCardProps) => {
  const shape = getPokemonDetailStatPolygon({ centre, radius, stats });
  const total = getPokemonDetailStatsTotal(stats);

  return (
    <DetailSectionCard
      title="Base stats"
      aside={generationName}
      style={getPokemonTypeCssVariables(type)}
      contentClassName="flex flex-col items-center"
    >
      <svg
        viewBox={`0 0 ${size.width} ${size.height}`}
        aria-hidden
        className="w-full max-w-[400px] overflow-visible"
      >
        {[1, 0.5].map((scale) => (
          <polygon
            key={scale}
            points={toPoints(
              shape.map(({ axis }) => ({
                x: centre.x + axis.x * radius * scale,
                y: centre.y + axis.y * radius * scale,
              })),
            )}
            className={
              scale === 1
                ? "fill-surface-2 stroke-line"
                : "stroke-line fill-none"
            }
            strokeWidth={1.5}
          />
        ))}
        {shape.map(({ axis, stat }) => (
          <line
            key={stat.key}
            x1={centre.x}
            y1={centre.y}
            x2={centre.x + axis.x * radius}
            y2={centre.y + axis.y * radius}
            className="stroke-line"
            strokeWidth={1}
          />
        ))}
        <polygon
          points={toPoints(shape.map(({ point }) => point))}
          fill="color-mix(in oklab, var(--t) 45%, transparent)"
          stroke="var(--t)"
          strokeWidth={2.5}
          strokeLinejoin="round"
        />
        {shape.map(({ axis, stat }) => {
          const x = centre.x + axis.x * (radius + 26);
          const y = centre.y + axis.y * (radius + 22);
          const anchor =
            Math.abs(axis.x) < 0.2 ? "middle" : axis.x > 0 ? "start" : "end";

          return (
            <text
              key={stat.key}
              x={x}
              y={y}
              textAnchor={anchor}
              className="fill-ink-2 text-[13px] font-bold"
            >
              <tspan x={x} dy="-0.2em">
                {stat.label}
              </tspan>
              <tspan
                x={x}
                dy="1.15em"
                className="fill-ink text-[15px] font-extrabold tabular-nums"
              >
                {stat.value}
              </tspan>
            </text>
          );
        })}
      </svg>
      <p className="text-ink-2 text-14 mt-3 font-bold">
        Total{" "}
        <b className="text-ink text-16 font-extrabold tabular-nums">{total}</b>
      </p>
      <dl className="sr-only">
        {stats.map((stat) => (
          <div key={stat.key}>
            <dt>{stat.name}</dt>
            <dd>{stat.value}</dd>
          </div>
        ))}
      </dl>
    </DetailSectionCard>
  );
};
