import type { ComponentPropsWithoutRef } from "react";
import {
  AlertTriangle,
  ArrowLeft,
  ArrowRight,
  Backpack,
  BarChart3,
  BookOpen,
  BookOpenCheck,
  CalendarDays,
  Check,
  CheckCircle2,
  ChevronDown,
  Circle,
  CircleHelp,
  Clock3,
  ClipboardList,
  Compass,
  Eye,
  Gamepad2,
  Gauge,
  Gem,
  Grid2X2,
  HeartPulse,
  Home,
  Layers3,
  LayoutDashboard,
  List,
  ListChecks,
  Lock,
  LogIn,
  LogOut,
  Map,
  MapPin,
  Monitor,
  Moon,
  Plus,
  RotateCcw,
  Route,
  Search,
  Settings,
  Shield,
  ShieldAlert,
  ShieldCheck,
  SlidersHorizontal,
  Sparkles,
  Star,
  Sun,
  Trophy,
  User,
  UsersRound,
  WifiOff,
  X,
  type LucideIcon,
} from "lucide-react";
import type { ModuleKey } from "@/config/modules";
import { cn } from "@/lib/utils";

const iconSizeClassNames = {
  xs: "size-3",
  sm: "size-3.5",
  md: "size-4",
  lg: "size-5",
  xl: "size-6",
} as const;

export type AppIconComponent = LucideIcon;
export type AppIconSize = keyof typeof iconSizeClassNames | number;
export type AppIconInline = "start" | "end";

export const appIcons = {
  account: {
    user: User,
  },
  actions: {
    back: ArrowLeft,
    browseCodex: BookOpenCheck,
    clear: X,
    continue: ArrowRight,
    create: Plus,
    enterApp: Compass,
    expand: ChevronDown,
    filter: SlidersHorizontal,
    home: Home,
    learnMore: Sparkles,
    login: LogIn,
    retry: RotateCcw,
    search: Search,
    settings: Settings,
    signOut: LogOut,
  },
  modules: {
    codex: BookOpen,
    mainline: Map,
  },
  product: {
    activity: Sparkles,
    battle: Shield,
    caught: CheckCircle2,
    collected: CheckCircle2,
    collectible: Gem,
    completedPlay: Trophy,
    completion: CheckCircle2,
    date: CalendarDays,
    details: ClipboardList,
    event: Circle,
    game: Gamepad2,
    health: HeartPulse,
    journey: Compass,
    location: MapPin,
    milestone: ListChecks,
    nextMilestone: Star,
    optionalEntries: ShieldCheck,
    play: Backpack,
    playtime: Clock3,
    pokedex: ClipboardList,
    recent: Clock3,
    reference: BookOpenCheck,
    reserve: Sparkles,
    roster: ShieldAlert,
    seen: Eye,
    stats: BarChart3,
    team: UsersRound,
    uncaught: Circle,
    uncollected: Circle,
  },
  status: {
    active: Check,
    error: AlertTriangle,
    locked: Lock,
    offline: WifiOff,
    unknown: CircleHelp,
  },
  theme: {
    dark: Moon,
    light: Sun,
    system: Monitor,
  },
  views: {
    codex: {
      games: Gamepad2,
      generations: Layers3,
      pokemon: BookOpenCheck,
    },
    display: {
      grid: Grid2X2,
      list: List,
    },
    mainline: {
      collectibles: Gem,
      dashboard: LayoutDashboard,
      overview: LayoutDashboard,
      plays: Route,
      pokedex: ClipboardList,
      progress: Gauge,
      story: BookOpen,
      team: UsersRound,
    },
  },
} as const;

const moduleIcons = {
  codex: appIcons.modules.codex,
  mainline: appIcons.modules.mainline,
} satisfies Record<ModuleKey, AppIconComponent>;

type AppIconProps = Omit<
  ComponentPropsWithoutRef<AppIconComponent>,
  "aria-hidden" | "size"
> & {
  "aria-hidden"?: boolean;
  icon: AppIconComponent;
  inline?: AppIconInline;
  size?: AppIconSize;
};

export const getModuleIcon = (moduleKey: ModuleKey) => {
  return moduleIcons[moduleKey];
};

export const AppIcon = ({
  "aria-hidden": ariaHidden = true,
  className,
  icon: IconComponent,
  inline,
  size,
  ...props
}: AppIconProps) => {
  const numericSize = typeof size === "number" ? size : undefined;
  const semanticSizeClassName =
    typeof size === "string" ? iconSizeClassNames[size] : undefined;

  return (
    <IconComponent
      aria-hidden={ariaHidden}
      className={cn(semanticSizeClassName, className)}
      data-icon={inline ? `inline-${inline}` : undefined}
      size={numericSize}
      {...props}
    />
  );
};
