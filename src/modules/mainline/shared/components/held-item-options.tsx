import type { BuildItemOption } from "@/modules/mainline/shared/types";
import { ItemIcon } from "@/shared/components/item-icon";
import type { SelectControlOption } from "@/shared/components/select-control";

/*
 * Held items as select options: each with its icon, grouped under its
 * category in the database's order (Berries, Mega Stones and so on). The
 * list is already in that order.
 */
export const toHeldItemOptions = (
  items: readonly BuildItemOption[],
): SelectControlOption[] =>
  items.map((item) => ({
    group: item.category,
    icon: <ItemIcon kind="held" name={item.name} />,
    info: item.effect ?? undefined,
    label: item.name,
    value: String(item.id),
  }));
