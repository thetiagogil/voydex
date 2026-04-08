import { uncollectEntry } from "@/services/gameplay/play-collectibles";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const collectibleEntryId = searchParams.get("collectibleEntryId");

    if (!collectibleEntryId) {
      return NextResponse.json(
        { error: "collectibleEntryId is required" },
        { status: 400 },
      );
    }

    const result = await uncollectEntry(playId, parseInt(collectibleEntryId));
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error ? error.message : "Failed to uncollect entry",
      },
      { status: 500 },
    );
  }
}
