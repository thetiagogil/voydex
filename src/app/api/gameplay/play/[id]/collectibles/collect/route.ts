import { collectEntry } from "@/services/gameplay/play-collectibles";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { collectibleEntryId } = await request.json();

    if (!collectibleEntryId) {
      return NextResponse.json(
        { error: "collectibleEntryId is required" },
        { status: 400 },
      );
    }

    const result = await collectEntry(playId, collectibleEntryId);
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error ? error.message : "Failed to collect entry",
      },
      { status: 500 },
    );
  }
}
