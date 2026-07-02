export const byId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return new Map(rows.map((row) => [row.id, row]));
};

export const uniqueNumberIds = (values: Array<number | null>): number[] => {
  return Array.from(
    new Set(
      values.filter((value): value is number => typeof value === "number"),
    ),
  );
};
