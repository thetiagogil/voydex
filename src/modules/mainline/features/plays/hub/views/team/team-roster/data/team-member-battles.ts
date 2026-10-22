import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
import {
  resolveMemberBattle,
  type BattleMember,
  type BattleReference,
  type MemberBattle,
} from "@/modules/reference/features/pokemon/data/battle-mechanics";

const toBattleMember = (
  member: MainlinePlayTeamMember & { form_id: number; species_id: number },
): BattleMember => ({
  formId: member.form_id,
  hasGigantamaxFactor: member.has_gigantamax_factor === true,
  heldItem:
    member.held_item_id && member.held_item_name
      ? { id: member.held_item_id, name: member.held_item_name }
      : null,
  moves: member.moves
    .filter((move) => move.name)
    .toSorted((left, right) => left.slot - right.slot)
    .map((move) => ({
      id: move.id,
      isStatus: move.attributes?.damage_class === "status",
      name: move.name,
      slug: move.slug,
      typeId: move.type?.id ?? null,
    })),
  speciesId: member.species_id,
});

/* Each member's battle side in this game, by Play Pokémon id; none, no entry. */
export const buildTeamMemberBattles = (
  roster: MainlinePlayTeamMember[],
  reference: BattleReference,
  mechanics: GameMechanicsProfile,
): Record<string, MemberBattle> =>
  Object.fromEntries(
    roster.flatMap(({ form_id, species_id, ...member }) => {
      if (form_id === null || species_id === null) {
        return [];
      }

      const battle = resolveMemberBattle({
        member: toBattleMember({ ...member, form_id, species_id }),
        mechanics,
        reference,
      });

      return battle ? [[member.play_pokemon_id, battle]] : [];
    }),
  );
