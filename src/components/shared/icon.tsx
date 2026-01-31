import { cn } from "@/lib/utils/cn";
import {
  BookPlus,
  Calendar,
  Cat,
  ChevronRight,
  CircleCheck,
  ClipboardCheck,
  Clock,
  Compass,
  Edit,
  Gamepad2,
  Info,
  Layers,
  LogIn,
  LogOut,
  MapPin,
  Notebook,
  PauseCircle,
  Plus,
  Search,
  Settings,
  Sparkles,
  Star,
  Swords,
  Target,
  Trash,
  Trophy,
  User,
  UserPlus,
  X,
  XCircle,
  type LucideIcon,
} from "lucide-react";

const ICON_MAP = {
  // Basic
  rightArrow: ChevronRight,
  time: Clock,
  pokemonCaught: Notebook,
  calendar: Calendar,
  details: BookPlus,

  // Entities
  user: User,
  pokemon: Cat,

  // Features
  adventure: MapPin,
  generation: Layers,
  game: Gamepad2,
  play: Swords,
  region: MapPin,
  collection: ClipboardCheck,

  // Play status
  total: Compass,
  active: Target,
  completed: CircleCheck,
  paused: PauseCircle,
  dropped: XCircle,

  // Recent activity
  badge: Star,
  legendary: Sparkles,
  eliteFour: Trophy,
  champion: Trophy,

  // Actions
  login: LogIn,
  signup: UserPlus,
  logout: LogOut,
  menu: Layers,
  add: Plus,
  edit: Edit,
  delete: Trash,
  search: Search,
  x: X,

  // Pages
  settings: Settings,
  intro: Info,
  pokedex: Cat,
} as const;

export type IconName = keyof typeof ICON_MAP;

interface IconProps {
  name: IconName;
  className?: string;
  size?: number;
  onClick?: () => void;
}

export const Icon = ({ name, className, size = 16, onClick }: IconProps) => {
  const IconComponent = ICON_MAP[name] as LucideIcon;

  if (!IconComponent) {
    console.warn(`Icon "${name}" not found in ICON_MAP`);
    return null;
  }

  return (
    <IconComponent className={cn(className)} size={size} onClick={onClick} />
  );
};
