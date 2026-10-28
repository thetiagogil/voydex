import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";

/*
 * The mechanics that put a Pokémon in a battle form, as
 * `reference.pokemon_form_rules.battle_mechanic` names them. `in-battle`
 * forms (Zen Mode, Blade Forme and the like) come from an ability or a move
 * mid-battle, so a member's view leaves them out.
 */
export const battleFormMechanics = {
  dynamax: "dynamax",
  megaEvolution: "mega-evolution",
  primalReversion: "primal-reversion",
  ultraBurst: "ultra-burst",
} as const;

export type BattleFormMechanic =
  (typeof battleFormMechanics)[keyof typeof battleFormMechanics];

const gameMechanicByBattleFormMechanic: Record<
  BattleFormMechanic,
  GameMechanic
> = {
  [battleFormMechanics.dynamax]: gameMechanics.dynamax,
  [battleFormMechanics.megaEvolution]: gameMechanics.megaEvolution,
  [battleFormMechanics.primalReversion]: gameMechanics.primalReversion,
  [battleFormMechanics.ultraBurst]: gameMechanics.ultraBurst,
};

export const isBattleFormMechanic = (
  value: string | null,
): value is BattleFormMechanic =>
  value !== null && Object.values<string>(battleFormMechanics).includes(value);

/*
 * A battle form of a species and the stored forms that reach it, for pages
 * that list a Pokémon's forms (the Codex entry).
 */
export type BattleFormLink = {
  /* Empty for one no player's Pokémon reaches (Eternamax Eternatus). */
  baseFormIds: number[];
  formId: number;
  /* Null for a change mid-battle (Zen Mode), which an entry never offers. */
  mechanic: BattleFormMechanic | null;
  /*
   * The version groups where a held item that reaches it can be had (Mega
   * Sceptile only where Sceptilite is); null when it needs no item.
   */
  unlockItemVersionGroupIds: number[] | null;
};

/* Whether this game has the mechanic that reaches a battle form. */
export const hasBattleFormMechanic = (
  mechanics: GameMechanicsProfile,
  mechanic: BattleFormMechanic,
): boolean =>
  supportsGameMechanic(mechanics, gameMechanicByBattleFormMechanic[mechanic]);

/* Whether this game has any battle mechanic a member's view shows. */
export const hasAnyBattleMechanic = (mechanics: GameMechanicsProfile) =>
  [
    gameMechanics.dynamax,
    gameMechanics.megaEvolution,
    gameMechanics.primalReversion,
    gameMechanics.terastal,
    gameMechanics.ultraBurst,
    gameMechanics.zMoves,
  ].some((mechanic) => supportsGameMechanic(mechanics, mechanic));

export const battleStatKeys = [
  "hp",
  "attack",
  "defense",
  "specialAttack",
  "specialDefense",
  "speed",
] as const;

export type BattleStatKey = (typeof battleStatKeys)[number];

export type BattleStats = Record<BattleStatKey, number>;

export type BattleType = { id: number; name: string; slug: string };

export type BattleMove = {
  id: number;
  name: string;
  slug: string;
  type: BattleType | null;
};

export type BattleItem = { id: number; name: string };

/* A battle form as this game has it, from the reference data. */
export type BattleFormReference = {
  abilityName: string | null;
  /* The stored forms that reach it, such as Low Key Toxtricity. */
  baseFormIds: number[];
  formId: number;
  /* The G-Max Move a Gigantamax form uses. */
  gMaxMove: BattleMove | null;
  mechanic: BattleFormMechanic;
  name: string;
  primaryType: BattleType | null;
  /* The move it must know, such as Dragon Ascent for Mega Rayquaza. */
  requiredMove: { name: string; slug: string } | null;
  secondaryType: BattleType | null;
  slug: string;
  speciesId: number;
  stats: BattleStats | null;
  /* The held items that reach it and can be had in this game. */
  unlockItems: BattleItem[];
  /*
   * It needs a held item at all: with none of them in this game (Sceptilite
   * in X and Y), a game with held items never offers the form.
   */
  needsUnlockItem: boolean;
};

/* How a Z-Crystal turns a move into a Z-Move. */
export type ZMoveSourceReference = {
  /* Type crystals: any damaging move of this type. */
  baseMoveId: number | null;
  baseTypeId: number | null;
  /* Exclusive crystals: this species (and form, when set) knowing baseMoveId. */
  formId: number | null;
  item: BattleItem;
  speciesId: number | null;
  zMove: BattleMove;
};

export type BattleReference = {
  /* The stored forms' own stats, to show what a battle form changes. */
  baseStatsByFormId: Record<number, BattleStats>;
  forms: BattleFormReference[];
  maxGuard: BattleMove | null;
  /* The Max Move each damaging move of a type becomes. */
  maxMovesByTypeId: Record<number, BattleMove>;
  zSources: ZMoveSourceReference[];
};

export const emptyBattleReference: BattleReference = {
  baseStatsByFormId: {},
  forms: [],
  maxGuard: null,
  maxMovesByTypeId: {},
  zSources: [],
};

export type BattleMember = {
  formId: number;
  hasGigantamaxFactor: boolean;
  heldItem: BattleItem | null;
  /* In the order it knows them. */
  moves: {
    id: number;
    isStatus: boolean;
    name: string;
    slug: string;
    typeId: number | null;
  }[];
  speciesId: number;
};

export type MemberBattleMove = { fromMoveName: string; move: BattleMove };

export type MemberBattleForm = {
  abilityName: string | null;
  formId: number;
  /* The switch's label: Mega, Mega X, Primal, Ultra Burst, Gigantamax. */
  label: string;
  /* Gigantamax only: what each move becomes. */
  maxMoves: MemberBattleMove[] | null;
  mechanic: BattleFormMechanic;
  name: string;
  primaryType: BattleType | null;
  secondaryType: BattleType | null;
  slug: string;
  /* What it changes from the stored form, largest first; never zero. */
  statChanges: { change: number; key: BattleStatKey }[];
  /* Why this member can't reach it as it is, such as a wrong Mega Stone. */
  warning: string | null;
};

export type MemberBattle = {
  forms: MemberBattleForm[];
  /* The held Z-Crystal, in games with Z-Moves. */
  zCrystal: BattleItem | null;
  zMoves: MemberBattleMove[];
};

/* The mechanic that reaches a battle form: "Mega Evolution". */
export const battleFormMechanicNames: Record<BattleFormMechanic, string> = {
  [battleFormMechanics.dynamax]: "Gigantamax",
  [battleFormMechanics.megaEvolution]: "Mega Evolution",
  [battleFormMechanics.primalReversion]: "Primal Reversion",
  [battleFormMechanics.ultraBurst]: "Ultra Burst",
};

/*
 * The quieter line under a battle form in a form menu: its mechanic, unless
 * its name already says it ("Gigantamax", "Ultra Burst").
 */
export const getBattleFormMechanicNote = (form: {
  label: string;
  mechanic: BattleFormMechanic;
}) => {
  const mechanicName = battleFormMechanicNames[form.mechanic];

  return form.label.includes(mechanicName) ? undefined : mechanicName;
};

/* A battle form's short name: "Mega", "Primal", "Gigantamax". */
export const battleFormMechanicLabels: Record<BattleFormMechanic, string> = {
  [battleFormMechanics.dynamax]: "Gigantamax",
  [battleFormMechanics.megaEvolution]: "Mega",
  [battleFormMechanics.primalReversion]: "Primal",
  [battleFormMechanics.ultraBurst]: "Ultra Burst",
};

const mechanicVerbs: Record<BattleFormMechanic, string> = {
  [battleFormMechanics.dynamax]: "Gigantamax",
  [battleFormMechanics.megaEvolution]: "Mega Evolve",
  [battleFormMechanics.primalReversion]: "Primal Revert",
  [battleFormMechanics.ultraBurst]: "Ultra Burst",
};

/* Mega Charizard X and Mega Raichu Y keep their letter. */
const getBattleFormLabel = (form: BattleFormReference) => {
  const letter = /-(x|y)$/.exec(form.slug)?.[1];

  return letter
    ? `${battleFormMechanicLabels[form.mechanic]} ${letter.toUpperCase()}`
    : battleFormMechanicLabels[form.mechanic];
};

const listItemNames = (items: BattleItem[]) =>
  items.length > 1
    ? `${items
        .slice(0, -1)
        .map((item) => item.name)
        .join(", ")} or ${items.at(-1)?.name}`
    : (items[0]?.name ?? "");

const getBattleFormWarning = (
  form: BattleFormReference,
  member: BattleMember,
  {
    checksHeldItem,
    zCrystal,
  }: { checksHeldItem: boolean; zCrystal: BattleItem | null },
): string | null => {
  const verb = mechanicVerbs[form.mechanic];

  if (form.mechanic === battleFormMechanics.dynamax) {
    return member.hasGigantamaxFactor
      ? null
      : "Doesn't have the Gigantamax Factor.";
  }

  if (
    form.requiredMove &&
    !member.moves.some((move) => move.slug === form.requiredMove?.slug)
  ) {
    return `Needs to know ${form.requiredMove.name} to ${verb}.`;
  }

  // Rayquaza can't Mega Evolve while it holds a Z-Crystal.
  if (form.requiredMove && zCrystal) {
    return `Can't ${verb} while it holds ${zCrystal.name}.`;
  }

  if (!checksHeldItem || !form.unlockItems.length) {
    return null;
  }

  const { heldItem } = member;
  const itemNames = listItemNames(form.unlockItems);

  if (!heldItem) {
    return `Needs to hold ${itemNames} to ${verb}.`;
  }

  return form.unlockItems.some((item) => item.id === heldItem.id)
    ? null
    : `Holds ${heldItem.name}, but ${form.name} needs ${itemNames}.`;
};

const getStatChanges = (
  stats: BattleStats | null,
  baseStats: BattleStats | undefined,
) => {
  if (!stats || !baseStats) {
    return [];
  }

  return battleStatKeys
    .map((key) => ({ change: stats[key] - baseStats[key], key }))
    .filter(({ change }) => change !== 0)
    .toSorted((left, right) => right.change - left.change);
};

/*
 * Gigantamax: a move of the G-Max Move's type becomes the G-Max Move, every
 * other damaging move the Max Move of its type, and a status move Max Guard.
 */
const getMaxMoves = (
  form: BattleFormReference,
  member: BattleMember,
  reference: BattleReference,
): MemberBattleMove[] =>
  member.moves.flatMap((move) => {
    const maxMove = move.isStatus
      ? reference.maxGuard
      : form.gMaxMove && move.typeId === form.gMaxMove.type?.id
        ? form.gMaxMove
        : move.typeId !== null
          ? reference.maxMovesByTypeId[move.typeId]
          : null;

    return maxMove ? [{ fromMoveName: move.name, move: maxMove }] : [];
  });

/*
 * A held Z-Crystal turns each matching move into a Z-Move: an exclusive
 * crystal only the move its species knows, a type crystal any damaging move
 * of its type. Status moves keep their own move (they gain a Z-Power boost).
 */
export const getZMoves = (
  crystal: BattleItem,
  member: BattleMember,
  reference: BattleReference,
): MemberBattleMove[] => {
  const sources = reference.zSources.filter(
    (source) => source.item.id === crystal.id,
  );

  return member.moves.flatMap((move) => {
    const exclusive = sources.find(
      (source) =>
        source.baseMoveId === move.id &&
        source.speciesId === member.speciesId &&
        (source.formId === null || source.formId === member.formId),
    );
    const byType = move.isStatus
      ? undefined
      : sources.find(
          (source) =>
            source.baseTypeId !== null && source.baseTypeId === move.typeId,
        );
    const source = exclusive ?? byType;

    return source ? [{ fromMoveName: move.name, move: source.zMove }] : [];
  });
};

/*
 * What a member can do in battle in this game: the battle forms its stored
 * form reaches, each with why it can't as it is (a wrong Mega Stone, no
 * Gigantamax Factor), and the Z-Moves its crystal gives. Mechanics the game
 * doesn't have never appear. Null when there is nothing to show.
 */
export const resolveMemberBattle = ({
  member,
  mechanics,
  reference,
}: {
  member: BattleMember;
  mechanics: GameMechanicsProfile;
  reference: BattleReference;
}): MemberBattle | null => {
  const checksHeldItem = battleFormsUseHeldItems(mechanics);
  const zCrystal =
    supportsGameMechanic(mechanics, gameMechanics.zMoves) && member.heldItem
      ? (reference.zSources.find(
          (source) => source.item.id === member.heldItem?.id,
        )?.item ?? null)
      : null;
  const forms = reference.forms
    .filter(
      (form) =>
        form.speciesId === member.speciesId &&
        form.baseFormIds.includes(member.formId) &&
        hasBattleFormMechanic(mechanics, form.mechanic) &&
        !(checksHeldItem && form.needsUnlockItem && !form.unlockItems.length),
    )
    .map(
      (form): MemberBattleForm => ({
        // Gigantamax keeps the Pokémon's own ability.
        abilityName:
          form.mechanic === battleFormMechanics.dynamax
            ? null
            : form.abilityName,
        formId: form.formId,
        label: getBattleFormLabel(form),
        maxMoves:
          form.mechanic === battleFormMechanics.dynamax
            ? getMaxMoves(form, member, reference)
            : null,
        mechanic: form.mechanic,
        name: form.name,
        primaryType: form.primaryType,
        secondaryType: form.secondaryType,
        slug: form.slug,
        statChanges: getStatChanges(
          form.stats,
          reference.baseStatsByFormId[member.formId],
        ),
        warning: getBattleFormWarning(form, member, {
          checksHeldItem,
          zCrystal,
        }),
      }),
    );
  const zMoves = zCrystal ? getZMoves(zCrystal, member, reference) : [];

  return forms.length || zCrystal ? { forms, zCrystal, zMoves } : null;
};

/*
 * Whether a Pokémon must hold the item that reaches its battle form here:
 * wherever the game has held items. Let's Go has none and keeps Mega Stones
 * in the bag, so any Pokémon of the species can Mega Evolve once you have
 * the stone.
 */
export const battleFormsUseHeldItems = (mechanics: GameMechanicsProfile) =>
  supportsGameMechanic(mechanics, gameMechanics.heldItems);
