import { getGameBySlug } from "@/services/meta/game";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ slug: string }> },
) {
  const { slug: gameSlug } = await params;

  if (!gameSlug)
    return NextResponse.json({ error: "Missing game slug" }, { status: 400 });

  const result = await getGameBySlug(gameSlug);
  const { data, error, breadcrumbs } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data)
    return NextResponse.json({ error: "No game found" }, { status: 404 });
  return NextResponse.json({ data, breadcrumbs }, { status: 200 });
}
