export const STATUS_COLORS = {
  total: {
    icon: "text-blue-600 dark:text-blue-400",
    bg: "bg-blue-500/10",
    text: "text-blue-600 dark:text-blue-400",
  },
  active: {
    icon: "text-pink-600 dark:text-pink-400",
    bg: "bg-pink-500/10",
    text: "text-pink-600 dark:text-pink-400",
  },
  completed: {
    icon: "text-green-600 dark:text-green-400",
    bg: "bg-green-500/10",
    text: "text-green-600 dark:text-green-400",
  },
  paused: {
    icon: "text-yellow-600 dark:text-yellow-400",
    bg: "bg-yellow-500/10",
    text: "text-yellow-600 dark:text-yellow-400",
  },
  dropped: {
    icon: "text-gray-600 dark:text-gray-400",
    bg: "bg-gray-500/10",
    text: "text-gray-600 dark:text-gray-400",
  },
} as const;

export const ACTIVITY_COLORS = {
  badge: {
    icon: "text-green-500",
    bg: "bg-green-500/10",
  },
  champion: {
    icon: "text-cyan-500",
    bg: "bg-cyan-500/10",
  },
  eliteFour: {
    icon: "text-yellow-500",
    bg: "bg-yellow-500/10",
  },
  pokemon: {
    icon: "text-orange-500",
    bg: "bg-orange-500/10",
  },
  play: {
    icon: "text-blue-500",
    bg: "bg-blue-500/10",
  },
  completed: {
    icon: "text-green-500",
    bg: "bg-green-500/10",
  },
} as const;

export type StatusType = keyof typeof STATUS_COLORS;
export type ActivityType = keyof typeof ACTIVITY_COLORS;
