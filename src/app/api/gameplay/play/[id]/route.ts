import { getPlay } from "@/services/gameplay/play";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id } = await params;
  const playId = id;
  if (!playId)
    return NextResponse.json({ error: "Missing play id" }, { status: 400 });

  const result = await getPlay(playId);
  const { data, error, breadcrumbs } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data)
    return NextResponse.json({ error: "No play found" }, { status: 404 });
  return NextResponse.json({ data, breadcrumbs }, { status: 200 });
}
