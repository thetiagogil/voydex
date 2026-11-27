import { MoveCategoryIcon } from "@/modules/reference/features/moves/components/move-category-icon";
import { getMoveCategory } from "@/modules/reference/features/moves/domain/move-categories";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeColour } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  TipBody,
  TipCard,
  TipFigures,
  TipHead,
  TipText,
} from "@/shared/components/tip-parts";

/* What a move's tip shows, as the game it is in plays it. */
export type MoveTipMove = {
  accuracy?: number | null;
  /* Physical, Special or Status. */
  category?: string | null;
  effect?: string | null;
  name: string;
  power?: number | null;
  pp?: number | null;
  typeName?: string | null;
  typeSlug?: string | null;
};

/* A figure a move doesn't have (a status move's power) is a dash. */
const formatMoveFigure = (value: number | null | undefined) => value ?? "–";

/*
 * The one tip of a move, wherever a move shows (a roster's rows, the move
 * field and its list): a card in its type's colour with its type and
 * category on the frame, then its power, accuracy and PP as figures and
 * what it does. The figures are left out where none is known.
 */
export const MoveTip = ({ move }: { move: MoveTipMove }) => {
  const type =
    move.typeSlug && isPokemonTypeSlug(move.typeSlug) ? move.typeSlug : null;
  const category = getMoveCategory(move.category);
  const hasFigures = [move.power, move.accuracy, move.pp].some(
    (figure) => figure !== null && figure !== undefined,
  );

  return (
    <TipCard tint={getPokemonTypeColour(type)}>
      <TipHead
        leading={
          type ? (
            <PokemonTypeMark
              type={type}
              className="size-9 shrink-0"
              iconClassName="size-4.5"
            />
          ) : undefined
        }
        name={move.name}
        sub={
          [move.typeName, category?.label].filter(Boolean).join(" · ") ||
          undefined
        }
        trailing={<MoveCategoryIcon damageClass={move.category} tip={false} />}
      />
      {hasFigures || move.effect ? (
        <TipBody>
          {hasFigures ? (
            <TipFigures
              figures={[
                { label: "Power", value: formatMoveFigure(move.power) },
                { label: "Accuracy", value: formatMoveFigure(move.accuracy) },
                { label: "PP", value: formatMoveFigure(move.pp) },
              ]}
            />
          ) : null}
          {move.effect ? <TipText>{move.effect}</TipText> : null}
        </TipBody>
      ) : null}
    </TipCard>
  );
};
