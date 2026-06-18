export const productFamilies = {
  mainline: {
    label: "Mainline",
    slug: "mainline",
    workspaceLabel: "Adventures",
  },
} as const;

export type ProductFamilyKey = keyof typeof productFamilies;
export type ProductFamily = (typeof productFamilies)[ProductFamilyKey];
