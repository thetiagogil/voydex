import { getGameOverview } from "@/features/game/server/game";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ slug: string }> },
) {
  try {
    const { slug: gameSlug } = await params;

    if (!gameSlug)
      return NextResponse.json({ error: "Missing game slug" }, { status: 400 });

    const { data, error } = await getGameOverview(gameSlug);

    if (error) {
      return NextResponse.json({ error }, { status: 500 });
    }

    if (!data) {
      return NextResponse.json({ error: "No game found" }, { status: 404 });
    }

    return NextResponse.json({ data }, { status: 200 });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
