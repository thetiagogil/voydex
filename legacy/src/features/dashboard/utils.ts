export const getTrackingMessage = (
  itemTypeSlug: string,
  itemName: string,
  categoryName: string,
): string => {
  switch (itemTypeSlug) {
    case "battle":
      return `Defeated ${itemName}`;
    case "decision":
      return `Chose ${itemName}`;
    case "checkpoint":
      return `Reached ${itemName}`;
    default:
      return `Completed "${itemName}" (${categoryName})`;
  }
};
