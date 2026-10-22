import type { BuildItemOption } from "@/modules/mainline/shared/types";
import { getItemImageUrl } from "@/modules/reference/features/items/data/item-images";
import { ItemIcon } from "@/shared/components/item-icon";
import type { SelectControlOption } from "@/shared/components/select-control";

/*
 * Held items or Poké Balls as select options, each with its sprite. Held
 * items group under their category in the database's order (Berries, Mega
 * Stones and so on); the list is already in that order.
 */
export const toItemOptions = (
  items: readonly BuildItemOption[],
  kind: "ball" | "held",
): SelectControlOption[] =>
  items.map((item) => ({
    group: kind === "held" ? item.category : undefined,
    icon: (
      <ItemIcon kind={kind} name={item.name} src={getItemImageUrl(item.slug)} />
    ),
    info: item.effect ?? undefined,
    label: item.name,
    value: String(item.id),
  }));
