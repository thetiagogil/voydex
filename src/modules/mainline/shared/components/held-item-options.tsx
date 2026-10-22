import type { BuildItemOption } from "@/modules/mainline/shared/server/build-option-readers";
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
    label: item.name,
    value: String(item.id),
  }));
