/* A team or the reserve holds six Pokémon. */
export const playTeamSize = 6;

export type PlayTeamSlot<TMember> = {
  member: TMember | null;
  /* 1 to 6 within its group. */
  position: number;
};

/*
 * Six slots in order. A member sits in its recorded slot; one without a slot,
 * or whose slot is taken, fills the first open one. The reserve's stored slots
 * run 7 to 12, so it passes `slotOffset` 6. Members past six are left out.
 */
export const getPlayTeamSlots = <TMember extends { slot: number | null }>(
  members: readonly TMember[],
  { slotOffset = 0 }: { slotOffset?: number } = {},
): PlayTeamSlot<TMember>[] => {
  const slots = Array<TMember | null>(playTeamSize).fill(null);
  const unplaced: TMember[] = [];

  for (const member of members) {
    const index =
      typeof member.slot === "number" ? member.slot - slotOffset - 1 : -1;

    if (index >= 0 && index < playTeamSize && !slots[index]) {
      slots[index] = member;
    } else {
      unplaced.push(member);
    }
  }

  for (const member of unplaced) {
    const openIndex = slots.indexOf(null);

    if (openIndex === -1) {
      break;
    }

    slots[openIndex] = member;
  }

  return slots.map((member, index) => ({ member, position: index + 1 }));
};
