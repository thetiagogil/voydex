import { appRoutes } from "@/config/routes";
import {
  getClearFavouriteType,
  type StatsFriend,
  type StatsModel,
} from "@/modules/mainline/features/stats/data/stats-model";
import { joinStatsList } from "@/modules/mainline/features/stats/utils/stats-format";
import { PokemonSticker } from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { SectionHead, SectionMoreLink } from "@/shared/components/section-head";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type StatsStyleSectionProps = {
  onOpenFriend: (friend: StatsFriend) => void;
  stats: StatsModel;
};

/*
 * Your team style: the types you pick as v3's tile grid (`.tygrid`), every
 * type tinted by how often it's on your teams, unused ones dashed, with one
 * line saying what stands out; and the Pokémon back for more than one run,
 * each opening its family's sheet here.
 */
export const StatsStyleSection = ({
  onOpenFriend,
  stats,
}: StatsStyleSectionProps) => {
  const ranked = stats.types.toSorted(
    (left, right) => right.count - left.count,
  );
  const used = ranked.filter((type) => type.count > 0);
  const unused = ranked.filter((type) => type.count === 0);
  const most = Math.max(1, used[0]?.count ?? 1);
  const favourite = getClearFavouriteType(stats.types);
  const leaning = favourite
    ? `Your clear favourite is ${favourite.name}`
    : `You reach for ${joinStatsList(
        used.slice(0, 3).map((type) => type.name),
        "and",
      )} most`;
  const missing = unused.length
    ? `, and you haven't used ${joinStatsList(
        unused.map((type) => type.name),
        "or",
      )} yet`
    : "";

  return (
    <section aria-labelledby="stats-style" className="flex flex-col gap-4">
      <SectionHead title="Your team style" titleId="stats-style" />
      <div className="grid gap-4 lg:grid-cols-[minmax(0,1.35fr)_minmax(0,1fr)]">
        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Types you pick"
            titleClassName="text-20"
            aside={`${used.length} of ${stats.types.length} used`}
          />
          {used.length ? (
            <>
              <ol className="grid grid-cols-3 gap-2 min-[480px]:grid-cols-6">
                {ranked.map((type) => {
                  const slug = isPokemonTypeSlug(type.slug) ? type.slug : null;
                  const share = Math.round(10 + (type.count / most) * 40);

                  return (
                    <li
                      key={type.slug}
                      title={`${type.name}: ${type.count ? `${type.count} on your teams` : "not used yet"}`}
                      style={{
                        ...getPokemonTypeCssVariables(slug),
                        ...(type.count
                          ? {
                              backgroundColor: `color-mix(in oklab, var(--t) ${share}%, var(--surface))`,
                            }
                          : null),
                      }}
                      className={cn(
                        "flex min-w-0 flex-col items-center gap-1 rounded-lg px-1.5 py-2.5 text-center",
                        type.count
                          ? null
                          : "border-dash border-[1.5px] border-dashed",
                      )}
                    >
                      {slug ? (
                        <PokemonTypeMark
                          type={slug}
                          className={cn(
                            "size-6 shrink-0",
                            type.count ? null : "opacity-45 grayscale",
                          )}
                          iconClassName="size-3.5"
                        />
                      ) : null}
                      <b
                        className={cn(
                          "text-13 w-full truncate font-extrabold",
                          type.count ? "text-ink" : "text-ink-3",
                        )}
                      >
                        {type.name}
                      </b>
                      <span
                        className={cn(
                          "text-14 font-extrabold tabular-nums",
                          type.count ? "text-ink" : "text-ink-3",
                        )}
                      >
                        {type.count || "–"}
                        <span className="sr-only"> on your teams</span>
                      </span>
                    </li>
                  );
                })}
              </ol>
              <p className="text-ink-2 text-14 font-semibold">
                {leaning}
                {missing}.
              </p>
            </>
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              Add Pokémon to your teams and the types you pick show up here.
            </p>
          )}
        </Card>

        <Card className="gap-4 px-5 py-5 sm:px-6">
          <SectionHead
            headingLevel={3}
            title="Old friends"
            titleClassName="text-20"
            aside="Back for more than one run"
          />
          {stats.friends.length ? (
            <ul className="grid grid-cols-2 gap-3 min-[480px]:grid-cols-3 lg:grid-cols-2">
              {stats.friends.slice(0, 6).map((friend) => (
                <li key={friend.speciesSlug} className="flex min-w-0">
                  <PokemonSticker
                    variant="compact"
                    className="w-full"
                    label={`${friend.name}, in ${friend.playCount} Plays. Open`}
                    onClick={() => onOpenFriend(friend)}
                    imageUrl={friend.imageUrl}
                    imageUrls={friend.imageUrls}
                    name={friend.name}
                    subtitle={`${friend.playCount} Plays`}
                    types={friend.types}
                  />
                </li>
              ))}
            </ul>
          ) : (
            <p className="text-ink-2 text-14 font-semibold">
              Use a Pokémon in a second Play and it shows up here.
            </p>
          )}
          <SectionMoreLink
            href={appRoutes.mainlineCollection}
            label="See your whole Collection"
            className="self-start"
          />
        </Card>
      </div>
    </section>
  );
};
