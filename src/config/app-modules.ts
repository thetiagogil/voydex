export const appModules = {
  mainline: {
    label: "Adventures",
    slug: "mainline",
  },
} as const;

export type AppModuleKey = keyof typeof appModules;
export type AppModule = (typeof appModules)[AppModuleKey];
