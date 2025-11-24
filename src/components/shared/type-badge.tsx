import Image from "next/image";
import { Badge } from "../ui/badge";

// Type icon imports
import bugIcon from "@/lib/icons/bug.svg";
import darkIcon from "@/lib/icons/dark.svg";
import dragonIcon from "@/lib/icons/dragon.svg";
import electricIcon from "@/lib/icons/electric.svg";
import fairyIcon from "@/lib/icons/fairy.svg";
import fightingIcon from "@/lib/icons/fighting.svg";
import fireIcon from "@/lib/icons/fire.svg";
import flyingIcon from "@/lib/icons/flying.svg";
import ghostIcon from "@/lib/icons/ghost.svg";
import grassIcon from "@/lib/icons/grass.svg";
import groundIcon from "@/lib/icons/ground.svg";
import iceIcon from "@/lib/icons/ice.svg";
import normalIcon from "@/lib/icons/normal.svg";
import poisonIcon from "@/lib/icons/poison.svg";
import psychicIcon from "@/lib/icons/psychic.svg";
import rockIcon from "@/lib/icons/rock.svg";
import steelIcon from "@/lib/icons/steel.svg";
import waterIcon from "@/lib/icons/water.svg";

const TYPE_ICONS: Record<string, any> = {
  Bug: bugIcon,
  Dark: darkIcon,
  Dragon: dragonIcon,
  Electric: electricIcon,
  Fairy: fairyIcon,
  Fighting: fightingIcon,
  Fire: fireIcon,
  Flying: flyingIcon,
  Ghost: ghostIcon,
  Grass: grassIcon,
  Ground: groundIcon,
  Ice: iceIcon,
  Normal: normalIcon,
  Poison: poisonIcon,
  Psychic: psychicIcon,
  Rock: rockIcon,
  Steel: steelIcon,
  Water: waterIcon,
};

const TYPE_STYLES_OUTLINE: Record<string, string> = {
  Normal: "bg-type-normal/15 border-type-normal/50 text-type-normal",
  Fire: "bg-type-fire/15 border-type-fire/50 text-type-fire",
  Water: "bg-type-water/15 border-type-water/50 text-type-water",
  Electric: "bg-type-electric/15 border-type-electric/50 text-type-electric",
  Grass: "bg-type-grass/15 border-type-grass/50 text-type-grass",
  Ice: "bg-type-ice/15 border-type-ice/50 text-type-ice",
  Fighting: "bg-type-fighting/15 border-type-fighting/50 text-type-fighting",
  Poison: "bg-type-poison/15 border-type-poison/50 text-type-poison",
  Ground: "bg-type-ground/15 border-type-ground/50 text-type-ground",
  Flying: "bg-type-flying/15 border-type-flying/50 text-type-flying",
  Psychic: "bg-type-psychic/15 border-type-psychic/50 text-type-psychic",
  Bug: "bg-type-bug/15 border-type-bug/50 text-type-bug",
  Rock: "bg-type-rock/15 border-type-rock/50 text-type-rock",
  Ghost: "bg-type-ghost/15 border-type-ghost/50 text-type-ghost",
  Dragon: "bg-type-dragon/15 border-type-dragon/50 text-type-dragon",
  Dark: "bg-type-dark/15 border-type-dark/50 text-type-dark",
  Steel: "bg-type-steel/15 border-type-steel/50 text-type-steel",
  Fairy: "bg-type-fairy/15 border-type-fairy/50 text-type-fairy",
};

const TYPE_STYLES_SOLID: Record<string, string> = {
  Normal: "bg-type-normal/75 ",
  Fire: "bg-type-fire/75",
  Water: "bg-type-water/75",
  Electric: "bg-type-electric/75",
  Grass: "bg-type-grass/75",
  Ice: "bg-type-ice/75",
  Fighting: "bg-type-fighting/75",
  Poison: "bg-type-poison/75",
  Ground: "bg-type-ground/75",
  Flying: "bg-type-flying/75",
  Psychic: "bg-type-psychic/75",
  Bug: "bg-type-bug/75",
  Rock: "bg-type-rock/75",
  Ghost: "bg-type-ghost/75",
  Dragon: "bg-type-dragon/75",
  Dark: "bg-type-dark/75",
  Steel: "bg-type-steel/75",
  Fairy: "bg-type-fairy/75",
};

export const TypeBadge = ({
  type,
  variant = "outline",
  size,
  className,
}: {
  type: Type;
  variant?: "solid" | "outline";
  size?: "sm";
  showIcon?: boolean;
  className?: string;
}) => {
  const typeStyles =
    variant === "solid" ? TYPE_STYLES_SOLID[type] : TYPE_STYLES_OUTLINE[type];
  const icon = TYPE_ICONS[type];

  if (size === "sm") {
    return (
      <Badge
        className={`${typeStyles} ${className} h-7 w-7 rounded-full text-center`}
      >
        {icon && <Image src={icon} alt={type} width={20} height={20} />}
      </Badge>
    );
  }

  return <Badge className={`${typeStyles} ${className}`}>{type}</Badge>;
};
