import { deletePlay, getPlay, updatePlay } from "@/services/gameplay/play";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  if (!playId)
    return NextResponse.json({ error: "Missing play id" }, { status: 400 });

  const result = await getPlay(playId);
  const { data, error, breadcrumbs } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data)
    return NextResponse.json({ error: "No play found" }, { status: 404 });
  return NextResponse.json({ data, breadcrumbs }, { status: 200 });
}

export async function PUT(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  if (!playId)
    return NextResponse.json({ error: "Missing play id" }, { status: 400 });

  const body = await req.json();
  const { data, error } = await updatePlay(playId, body);

  if (error)
    return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json(data, { status: 200 });
}

export async function DELETE(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  if (!playId)
    return NextResponse.json({ error: "Missing play id" }, { status: 400 });

  const { success, error } = await deletePlay(playId);

  if (error)
    return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success }, { status: 200 });
}
