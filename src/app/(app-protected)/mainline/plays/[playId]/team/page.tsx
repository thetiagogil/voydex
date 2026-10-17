import { notFound } from "next/navigation";

import { getMainlinePlayTeamRosterData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayTeamRoster } from "@/modules/mainline/features/plays/hub/views/team/team-roster/mainline-play-team-roster";

type MainlinePlayTeamRouteProps = {
  params: Promise<{
    playId: string;
  }>;
  searchParams: Promise<{
    add?: string | string[];
    form?: string | string[];
    pokemon?: string | string[];
  }>;
};

const firstValue = (value: string | string[] | undefined) =>
  Array.isArray(value) ? value[0] : value;

/*
 * `?add=` opens Add Pokémon (`appRoutes.mainlinePlayTeamAdd`): empty for
 * the picker, a species slug (with an optional `&form=`) for that Pokémon.
 */
export default async function MainlinePlayTeamRoute({
  params,
  searchParams,
}: MainlinePlayTeamRouteProps) {
  const [{ playId }, query] = await Promise.all([params, searchParams]);
  const data = await getMainlinePlayTeamRosterData(playId);

  if (!data) {
    notFound();
  }

  const add = firstValue(query.add);
  const form = firstValue(query.form);
  const pokemon = firstValue(query.pokemon);

  return (
    <MainlinePlayTeamRoster
      addRequest={
        add === undefined
          ? null
          : {
              preset: add ? { formSlug: form || null, speciesSlug: add } : null,
            }
      }
      data={data}
      initialPokemonId={pokemon ?? null}
      playId={playId}
    />
  );
}
