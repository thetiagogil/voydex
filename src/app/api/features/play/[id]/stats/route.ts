import { getPlayStats } from "@/features/play/server/play";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId)
      return NextResponse.json({ error: "Missing play id" }, { status: 400 });

    const { data, error } = await getPlayStats(playId);

    if (error)
      return NextResponse.json({ error: String(error) }, { status: 500 });

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
