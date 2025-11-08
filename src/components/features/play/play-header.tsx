import { PageHeader } from "@/components/shared/page-header";

interface PlayHeaderProps {
  playthrough: {
    id: string;
    title: string;
    status: "active" | "completed" | "paused" | "dropped";
    challenge?: string;
    game: {
      slug: string;
      name: string;
      genSlug: string;
      genName: string;
    };
  };
}

const getStatusVariant = (
  status: "active" | "completed" | "paused" | "dropped",
): "default" | "secondary" | "outline" | "destructive" => {
  switch (status) {
    case "active":
      return "default";
    case "completed":
      return "secondary";
    case "paused":
      return "outline";
    case "dropped":
      return "destructive";
  }
};

const getStatusLabel = (
  status: "active" | "completed" | "paused" | "dropped",
) => {
  return status.charAt(0).toUpperCase() + status.slice(1);
};

export const PlayHeader = ({ playthrough }: PlayHeaderProps) => {
  const badges = [
    {
      label: getStatusLabel(playthrough.status),
      variant: getStatusVariant(playthrough.status),
    },
  ];

  // Add challenge badge if not normal
  if (playthrough.challenge && playthrough.challenge !== "normal") {
    badges.push({
      label:
        playthrough.challenge.charAt(0).toUpperCase() +
        playthrough.challenge.slice(1),
      variant: "outline" as const,
    });
  }

  return (
    <PageHeader
      title={playthrough.title}
      badges={badges}
      metadata={`${playthrough.game.name} • ${playthrough.game.genName}`}
    />
  );
};
