import React from "react";

interface TypeIconProps extends Omit<React.SVGProps<SVGSVGElement>, "ref"> {
  size?: number;
}

// Simple wrapper for type icons to match Lucide icon interface
const createTypeIcon = (
  displayName: string,
  paths: string | string[],
  viewBox = "0 0 24 24",
) => {
  const Component = React.forwardRef<SVGSVGElement, TypeIconProps>(
    ({ size = 16, className, ...props }, ref) => (
      <svg
        ref={ref}
        {...props}
        xmlns="http://www.w3.org/2000/svg"
        width={size}
        height={size}
        viewBox={viewBox}
        fill="currentColor"
        className={className}
      >
        {Array.isArray(paths) ? (
          paths.map((d, i) => <path key={i} d={d} />)
        ) : (
          <path d={paths} />
        )}
      </svg>
    ),
  );
  Component.displayName = displayName;
  return Component;
};

// Type icons - using simple geometric shapes as placeholders
// TODO: Replace with actual Pokemon type icon paths from your SVG files

export const BugIcon = createTypeIcon(
  "BugIcon",
  "M12 2C10.34 2 9 3.34 9 5C9 5.54 9.13 6.05 9.35 6.5L7.5 8.35C7.05 8.13 6.54 8 6 8C4.34 8 3 9.34 3 11C3 12.66 4.34 14 6 14C6.54 14 7.05 13.87 7.5 13.65L9.35 15.5C9.13 15.95 9 16.46 9 17C9 18.66 10.34 20 12 20C13.66 20 15 18.66 15 17C15 16.46 14.87 15.95 14.65 15.5L16.5 13.65C16.95 13.87 17.46 14 18 14C19.66 14 21 12.66 21 11C21 9.34 19.66 8 18 8C17.46 8 16.95 8.13 16.5 8.35L14.65 6.5C14.87 6.05 15 5.54 15 5C15 3.34 13.66 2 12 2Z",
);

export const DarkIcon = createTypeIcon(
  "DarkIcon",
  "M12 2C6.48 2 2 6.48 2 12C2 17.52 6.48 22 12 22C17.52 22 22 17.52 22 12C22 6.48 17.52 2 12 2ZM12 20C7.59 20 4 16.41 4 12C4 7.59 7.59 4 12 4C12.76 4 13.5 4.11 14.2 4.31L4.31 14.2C4.11 13.5 4 12.76 4 12C4 7.59 7.59 4 12 4C16.41 4 20 7.59 20 12C20 12.76 19.89 13.5 19.69 14.2L9.8 4.31C10.5 4.11 11.24 4 12 4C16.41 4 20 7.59 20 12C20 16.41 16.41 20 12 20Z",
);

export const DragonIcon = createTypeIcon(
  "DragonIcon",
  "M12 2L2 7V17L12 22L22 17V7M12 4.18L19.5 8.09V15.91L12 19.82L4.5 15.91V8.09M12 6C10.9 6 10 6.9 10 8S10.9 10 12 10 14 9.1 14 8 13.1 6 12 6M8 12C6.9 12 6 12.9 6 14S6.9 16 8 16 10 15.1 10 14 9.1 12 8 12M16 12C14.9 12 14 12.9 14 14S14.9 16 16 16 18 15.1 18 14 17.1 12 16 12Z",
);

export const ElectricIcon = createTypeIcon(
  "ElectricIcon",
  "M11 2L6 14H10L9 22L18 10H14L15 2H11Z",
);

export const FairyIcon = createTypeIcon(
  "FairyIcon",
  "M12 2L9.5 8.5L3 9L8 13.5L6.5 20L12 16.5L17.5 20L16 13.5L21 9L14.5 8.5L12 2M12 5.8L13.3 9.2L16.8 9.5L14 11.9L14.8 15.3L12 13.4L9.2 15.3L10 11.9L7.2 9.5L10.7 9.2L12 5.8Z",
);

export const FightingIcon = createTypeIcon(
  "FightingIcon",
  "M7 2H5V13H3V15H5V22H7V15H9V13H7V2M17 2H15V8H13V10H15V13H13V15H15V22H17V15H19V13H17V10H19V8H17V2M12 10H10V15H12V10Z",
);

export const FireIcon = createTypeIcon(
  "FireIcon",
  "M17.66 11.2C17.43 10.9 17.15 10.64 16.89 10.38C16.22 9.78 15.46 9.35 14.82 8.72C13.33 7.26 13 4.85 13.95 3C13 3.23 12.17 3.75 11.46 4.32C8.87 6.4 7.85 10.07 9.07 13.22C9.11 13.32 9.15 13.42 9.15 13.55C9.15 13.77 9 13.97 8.8 14.05C8.57 14.15 8.33 14.09 8.14 13.93C8.08 13.88 8.04 13.83 8 13.76C6.87 12.33 6.69 10.28 7.45 8.64C5.78 10 4.87 12.3 5 14.47C5.06 14.97 5.12 15.47 5.29 15.97C5.43 16.57 5.7 17.17 6 17.7C7.08 19.43 8.95 20.67 10.96 20.92C13.1 21.19 15.39 20.8 17.03 19.32C18.86 17.66 19.5 15 18.56 12.72L18.43 12.46C18.22 12 17.66 11.2 17.66 11.2M14.5 17.5C14.22 17.74 13.76 18 13.4 18.1C12.28 18.5 11.16 17.94 10.5 17.28C11.69 17 12.4 16.12 12.61 15.23C12.78 14.43 12.46 13.77 12.33 13C12.21 12.26 12.23 11.63 12.5 10.94C12.69 11.32 12.89 11.7 13.13 12C13.9 13 15.11 13.44 15.37 14.8C15.41 14.94 15.43 15.08 15.43 15.23C15.46 16.05 15.1 16.95 14.5 17.5H14.5Z",
);

export const FlyingIcon = createTypeIcon(
  "FlyingIcon",
  "M10.5 17L6 15.5L4.5 17C3.5 15.5 3 13.7 3 12C3 7.03 7.03 3 12 3C16.97 3 21 7.03 21 12C21 13.7 20.5 15.5 19.5 17L18 15.5L13.5 17L12 20L10.5 17M12 9C10.9 9 10 9.9 10 11C10 11.3 10.1 11.6 10.2 11.9L7.5 14.6C7.2 14 7 13.3 7 12.5C7 9.5 9.5 7 12.5 7C15.5 7 18 9.5 18 12.5C18 13.3 17.8 14 17.5 14.6L14.8 11.9C14.9 11.6 15 11.3 15 11C15 9.9 14.1 9 13 9H12Z",
);

export const GhostIcon = createTypeIcon(
  "GhostIcon",
  "M12 2C8.13 2 5 5.13 5 9V17.5L7 19L9 17.5L11 19L13 17.5L15 19L17 17.5L19 19V9C19 5.13 15.87 2 12 2M9 10C9 10.55 9.45 11 10 11S11 10.55 11 10 10.55 9 10 9 9 9.45 9 10M13 10C13 10.55 13.45 11 14 11S15 10.55 15 10 14.55 9 14 9 13 9.45 13 10Z",
);

export const GrassIcon = createTypeIcon(
  "GrassIcon",
  "M12 2C12 2 6 7 6 13C6 15.21 7.79 17 10 17C10.74 17 11.42 16.78 12 16.41C12.58 16.78 13.26 17 14 17C16.21 17 18 15.21 18 13C18 7 12 2 12 2M10 15C8.9 15 8 14.1 8 13C8 10.9 10 8.5 12 6.9C14 8.5 16 10.9 16 13C16 14.1 15.1 15 14 15C13.5 15 13 14.8 12.6 14.5L12 14L11.4 14.5C11 14.8 10.5 15 10 15M12 19H10V22H14V19H12Z",
);

export const GroundIcon = createTypeIcon(
  "GroundIcon",
  "M2 19L7 14L12 19L17 14L22 19V21H2V19M22 11L17 6L12 11L7 6L2 11V13H22V11Z",
);

export const IceIcon = createTypeIcon(
  "IceIcon",
  "M12 2L11 7L8.5 4.5L7 6L10.5 9.5L6 10L7 12L11 11L7 15L8.5 16.5L12 13L15.5 16.5L17 15L13 11L17 12L18 10L13.5 9.5L17 6L15.5 4.5L13 7L12 2Z",
);

export const NormalIcon = createTypeIcon(
  "NormalIcon",
  "M12 2C6.48 2 2 6.48 2 12C2 17.52 6.48 22 12 22C17.52 22 22 17.52 22 12C22 6.48 17.52 2 12 2M12 20C7.59 20 4 16.41 4 12C4 7.59 7.59 4 12 4C16.41 4 20 7.59 20 12C20 16.41 16.41 20 12 20M12 6C8.69 6 6 8.69 6 12C6 15.31 8.69 18 12 18C15.31 18 18 15.31 18 12C18 8.69 15.31 6 12 6Z",
);

export const PoisonIcon = createTypeIcon(
  "PoisonIcon",
  "M7 22C5.9 22 5 21.1 5 20V10C5 8.9 5.9 8 7 8H17C18.1 8 19 8.9 19 10V20C19 21.1 18.1 22 17 22H7M7 10V20H17V10H7M15.5 2L12 5.5L8.5 2L7 3.5L10.5 7L7 10.5L8.5 12L12 8.5L15.5 12L17 10.5L13.5 7L17 3.5L15.5 2Z",
);

export const PsychicIcon = createTypeIcon(
  "PsychicIcon",
  "M12 2C6.48 2 2 6.48 2 12C2 17.52 6.48 22 12 22C17.52 22 22 17.52 22 12C22 6.48 17.52 2 12 2M12 20C7.59 20 4 16.41 4 12C4 7.59 7.59 4 12 4C16.41 4 20 7.59 20 12C20 16.41 16.41 20 12 20M8 12C8 10.9 8.9 10 10 10S12 10.9 12 12 11.1 14 10 14 8 13.1 8 12M16 12C16 10.9 15.1 10 14 10S12 10.9 12 12 12.9 14 14 14 16 13.1 16 12M8 17H16V18H8V17Z",
);

export const RockIcon = createTypeIcon(
  "RockIcon",
  "M19 3H5C3.9 3 3 3.9 3 5V19C3 20.1 3.9 21 5 21H19C20.1 21 21 20.1 21 19V5C21 3.9 20.1 3 19 3M19 19H5V5H19V19M12 6L7 14H11V18H13V14H17L12 6Z",
);

export const SteelIcon = createTypeIcon(
  "SteelIcon",
  "M2 12C2 9.21 3.64 6.8 6 5.68V18.32C3.64 17.2 2 14.79 2 12M22 12C22 14.79 20.36 17.2 18 18.32V5.68C20.36 6.8 22 9.21 22 12M12 6C8.69 6 6 8.69 6 12C6 15.31 8.69 18 12 18C15.31 18 18 15.31 18 12C18 8.69 15.31 6 12 6M12 16C9.79 16 8 14.21 8 12C8 9.79 9.79 8 12 8C14.21 8 16 9.79 16 12C16 14.21 14.21 16 12 16Z",
);

export const WaterIcon = createTypeIcon(
  "WaterIcon",
  "M12 2.69L17.66 8.35C20.78 11.47 20.78 16.53 17.66 19.66C14.54 22.78 9.47 22.78 6.34 19.66C3.22 16.54 3.22 11.47 6.34 8.35L12 2.69M12 6.1L8.22 9.88C6.22 11.88 6.22 15.12 8.22 17.12C10.22 19.12 13.47 19.12 15.47 17.12C17.47 15.12 17.47 11.88 15.47 9.88L12 6.1Z",
);

// Export all icons as a record for easy lookup
export const TYPE_ICON_COMPONENTS = {
  bug: BugIcon,
  dark: DarkIcon,
  dragon: DragonIcon,
  electric: ElectricIcon,
  fairy: FairyIcon,
  fighting: FightingIcon,
  fire: FireIcon,
  flying: FlyingIcon,
  ghost: GhostIcon,
  grass: GrassIcon,
  ground: GroundIcon,
  ice: IceIcon,
  normal: NormalIcon,
  poison: PoisonIcon,
  psychic: PsychicIcon,
  rock: RockIcon,
  steel: SteelIcon,
  water: WaterIcon,
} as const;

export type TypeIconKey = keyof typeof TYPE_ICON_COMPONENTS;
