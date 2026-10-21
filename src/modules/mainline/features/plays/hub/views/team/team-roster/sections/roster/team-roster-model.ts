import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  checkPokemonRules,
  type RuleCheckContext,
  type RuleCheckPokemon,
} from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  getPlayTeamSlots,
  playTeamSize,
} from "@/modules/mainline/features/plays/shared/utils/play-team-slots";

export type TeamRosterGroup = "active" | "reserve";

export type TeamRosterSlot = {
  label: string;
  member: MainlinePlayTeamMember | null;
  position: number;
};

export type TeamRosterSummary = {
  activeCount: number;
  openSlotCount: number;
  reserveCount: number;
};

/*
 * A group's six slots, as the Plays card and Overview place a team. The
 * reserve's stored slots run 7 to 12 and read R1 to R6.
 */
export const getTeamRosterSlots = (
  roster: MainlinePlayTeamMember[],
  group: TeamRosterGroup,
): TeamRosterSlot[] =>
  getPlayTeamSlots(
    roster.filter((member) => member.roster_state_slug === group),
    { slotOffset: group === "active" ? 0 : playTeamSize },
  ).map(({ member, position }) => ({
    label: group === "active" ? `${position}` : `R${position}`,
    member,
    position,
  }));

const countFilledSlots = (slots: TeamRosterSlot[]) =>
  slots.filter((slot) => slot.member).length;

export const getTeamRosterSummary = (
  roster: MainlinePlayTeamMember[],
): TeamRosterSummary => {
  const activeCount = countFilledSlots(getTeamRosterSlots(roster, "active"));
  const reserveCount = countFilledSlots(getTeamRosterSlots(roster, "reserve"));

  return {
    activeCount,
    openSlotCount: playTeamSize * 2 - activeCount - reserveCount,
    reserveCount,
  };
};

/* The page head's one line: what's on the team, in reserve and still open. */
export const formatTeamRosterSummary = ({
  activeCount,
  openSlotCount,
  reserveCount,
}: TeamRosterSummary): string => {
  if (!activeCount && !reserveCount) {
    return "No Pokémon yet";
  }

  return [
    `${activeCount} active`,
    reserveCount ? `${reserveCount} in reserve` : null,
    openSlotCount
      ? `${openSlotCount} open ${openSlotCount === 1 ? "slot" : "slots"}`
      : null,
  ]
    .filter(Boolean)
    .join(" · ");
};

/*
 * The Pokémon the profile opens on: the one the link named, when it is on
 * this roster, else the first by slot.
 */
export const getDefaultTeamMember = (
  roster: MainlinePlayTeamMember[],
  requestedId: string | null = null,
): MainlinePlayTeamMember | null => {
  const requested = requestedId
    ? roster.find((member) => member.play_pokemon_id === requestedId)
    : undefined;

  return (
    requested ??
    [...roster]
      .filter((member) => member.slot !== null)
      .sort((left, right) => (left.slot ?? 13) - (right.slot ?? 13))[0] ??
    null
  );
};

/*
 * React keys for the roster's sheets, which sit side by side: the editor of
 * the selected Pokémon, and the picker that adds one or replaces it. Each
 * resets when its Pokémon changes, and they never share a key.
 */
export const getTeamRosterSheetKeys = (
  selectedPlayPokemonId: string,
  pickerMode: { kind: "add" } | { kind: "replace"; playPokemonId: string },
) => ({
  editor: `editor-${selectedPlayPokemonId}`,
  picker:
    pickerMode.kind === "replace"
      ? `replace-${pickerMode.playPokemonId}`
      : "add",
});

/* A team member as the Play's rule checks read it. */
export const toRuleCheckPokemon = (
  member: MainlinePlayTeamMember,
): RuleCheckPokemon | null =>
  member.form_id && member.species_id
    ? {
        formId: member.form_id,
        isShiny: member.is_shiny,
        name: getPlayTeamMemberName(member),
        nickname: member.nickname,
        speciesId: member.species_id,
        typeIds: [member.primaryType?.id, member.secondaryType?.id].filter(
          (typeId): typeId is number => typeId !== undefined,
        ),
      }
    : null;

/*
 * What the Play's rules say about the Pokémon you have now, the team then
 * the reserve, each in slot order. Retired and replaced Pokémon are past.
 */
export const getTeamRuleWarnings = (
  roster: MainlinePlayTeamMember[],
  context: RuleCheckContext,
) =>
  (["active", "reserve"] as const).flatMap((group) =>
    getTeamRosterSlots(roster, group).flatMap(({ member }) => {
      const pokemon = member ? toRuleCheckPokemon(member) : null;

      return pokemon
        ? checkPokemonRules(pokemon, context).map((warning) => ({
            ...warning,
            key: `${member?.play_pokemon_id}:${warning.ruleId}`,
          }))
        : [];
    }),
  );
