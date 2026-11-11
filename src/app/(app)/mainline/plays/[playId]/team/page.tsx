import { PlayTeamRosterRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

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
 * `?pokemon=` opens the Roster on that Pokémon. `?add=` opens Add Pokémon
 * (`appRoutes.mainlinePlayTeamAdd`): empty for the picker, a species slug
 * (with an optional `&form=`) for that Pokémon.
 */
export default async function MainlinePlayTeamRoute({
  params,
  searchParams,
}: MainlinePlayTeamRouteProps) {
  const [{ playId }, query] = await Promise.all([params, searchParams]);

  return (
    <PlayTeamRosterRoute
      add={firstValue(query.add)}
      form={firstValue(query.form)}
      playId={playId}
      pokemon={firstValue(query.pokemon)}
    />
  );
}
