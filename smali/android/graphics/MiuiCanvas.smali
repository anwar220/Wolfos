# classes.dex

.class public abstract Landroid/graphics/MiuiCanvas;
.super Landroid/graphics/BaseCanvas;


# instance fields
.field private mHasForceDark:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 11

    if-nez p7, :cond_6

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p7}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p7}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p7, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 9

    if-nez p5, :cond_6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 7

    if-nez p3, :cond_6

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p3}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 7

    if-nez p3, :cond_6

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p3}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 7

    if-nez p3, :cond_6

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p3}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 9

    if-nez p5, :cond_6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 9

    if-nez p5, :cond_6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 6

    if-nez p2, :cond_6

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 6

    if-nez p2, :cond_6

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 11

    if-nez p7, :cond_6

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p7}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p7}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p7, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 8

    if-nez p4, :cond_6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p4}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p4}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 10

    if-nez p6, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p6}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 8

    if-nez p4, :cond_6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p4}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p4}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 10

    if-nez p6, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p6}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 10

    if-nez p6, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p6}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 9

    if-nez p5, :cond_6

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 11

    if-nez p7, :cond_6

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p7}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p7}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    invoke-virtual {p7, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 13

    if-nez p9, :cond_6

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p9}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    invoke-virtual {p9, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 13

    if-nez p9, :cond_6

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p9}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    invoke-virtual {p9, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 13

    if-nez p9, :cond_6

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void

    :cond_6
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p9}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    invoke-virtual {p9, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    return-void
.end method

.method public hasForceDark()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/MiuiCanvas;->mHasForceDark:Z

    return v0
.end method

.method public setHasForceDark(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/MiuiCanvas;->mHasForceDark:Z

    return-void
.end method
