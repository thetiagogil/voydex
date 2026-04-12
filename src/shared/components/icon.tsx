import { cn } from "@/lib/utils/cn";
import {
  ArrowUp,
  BookPlus,
  Box,
  Calendar,
  ChevronRight,
  Circle,
  CircleCheck,
  CirclePlay,
  ClipboardCheck,
  Clock,
  Compass,
  Edit2,
  EyeOff,
  Gamepad2,
  Info,
  Layers,
  Leaf,
  Link,
  LogIn,
  LogOut,
  MapPin,
  Mars,
  Menu,
  Notebook,
  PauseCircle,
  Plus,
  Search,
  Settings,
  Shield,
  Sparkle,
  Sparkles,
  Star,
  Swords,
  Trash,
  Trophy,
  User,
  UserPlus,
  Venus,
  X,
  XCircle,
  type LucideIcon,
} from "lucide-react";
import { Pokeball } from "./pokeball";

const ICON_MAP = {
  // Basic
  rightArrow: ChevronRight,
  time: Clock,
  calendar: Calendar,
  details: BookPlus,
  box: Box,
  link: Link,
  circle: Circle,
  info: Info,

  // Pokemon
  pokemonCaught: Notebook,
  male: Mars,
  female: Venus,
  ability: Shield,
  nature: Leaf,
  move: Swords,
  shiny: Sparkles,
  level: ArrowUp,
  mythical: Sparkle,
  excluded: EyeOff,

  // Entities
  user: User,
  pokemon: Pokeball,

  // Features
  adventure: MapPin,
  generation: Layers,
  game: Gamepad2,
  play: Compass,
  region: MapPin,
  collection: ClipboardCheck,

  // Play status
  total: Compass,
  active: CirclePlay,
  completed: CircleCheck,
  paused: PauseCircle,
  dropped: XCircle,

  // Recent activity
  badge: Star,
  legendary: Pokeball,
  eliteFour: Trophy,
  champion: Trophy,

  // Story item types
  battle: Swords,
  checkpoint: ClipboardCheck,
  decision: Compass,

  // Actions
  login: LogIn,
  signup: UserPlus,
  logout: LogOut,
  menu: Menu,
  add: Plus,
  edit: Edit2,
  delete: Trash,
  search: Search,
  x: X,

  // Pages
  settings: Settings,
  intro: Info,
  pokedex: Pokeball,
} as const;

export type IconType = keyof typeof ICON_MAP;

interface IconProps {
  type: IconType;
  size?: number;
  className?: string;
  onClick?: () => void;
}

export const Icon = ({ type, className, size = 16, onClick }: IconProps) => {
  const IconComponent = ICON_MAP[type] as LucideIcon;

  if (!IconComponent) {
    console.warn(`Icon "${type}" not found in ICON_MAP`);
    return null;
  }

  return (
    <IconComponent className={cn(className)} size={size} onClick={onClick} />
  );
};
