# classes.dex

.class public final Landroid/graphics/text/PositionedGlyphs;
.super Ljava/lang/Object;


# static fields
.field private static final REGISTRY:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutPtr:J

.field private final mXOffset:F

.field private final mYOffset:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/PositionedGlyphs;->nReleaseFunc()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/PositionedGlyphs;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>(JFF)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {p1, p2}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    iput p3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    iput p4, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v0, :cond_31

    invoke-static {p1, p2, v4}, Landroid/graphics/text/PositionedGlyphs;->nGetFont(JI)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_29

    move-wide v1, v5

    new-instance v7, Landroid/graphics/fonts/Font;

    invoke-direct {v7, v5, v6}, Landroid/graphics/fonts/Font;-><init>(J)V

    move-object v3, v7

    :cond_29
    iget-object v7, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_31
    sget-object v4, Landroid/graphics/text/PositionedGlyphs;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private static native nGetAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFont(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetGlyphCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetGlyphId(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTotalAdvance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetX(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetY(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/graphics/text/PositionedGlyphs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/graphics/text/PositionedGlyphs;

    iget v3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    iget v4, v1, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_68

    iget v3, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    iget v4, v1, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    goto :goto_68

    :cond_1e
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v4

    if-ge v3, v4, :cond_67

    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v5

    if-eq v4, v5, :cond_3b

    return v2

    :cond_3b
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_48

    return v2

    :cond_48
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_55

    return v2

    :cond_55
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/fonts/Font;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    return v2

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_67
    return v0

    :cond_68
    :goto_68
    return v2
.end method

.method public getAdvance()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetTotalAdvance(J)F

    move-result v0

    return v0
.end method

.method public getAscent()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetAscent(J)F

    move-result v0

    return v0
.end method

.method public getDescent()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetDescent(J)F

    move-result v0

    return v0
.end method

.method public getFont(I)Landroid/graphics/fonts/Font;
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, "index"

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    return-object v0
.end method

.method public getGlyphId(I)I
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, "index"

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphId(JI)I

    move-result v0

    return v0
.end method

.method public getGlyphX(I)F
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, "index"

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetX(JI)F

    move-result v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getGlyphY(I)F
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const-string v2, "index"

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetY(JI)F

    move-result v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOffsetX()F
    .registers 2

    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    return v0
.end method

.method public glyphCount()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v5

    if-ge v2, v5, :cond_56

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x3

    invoke-virtual {p0, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p0, v2}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_56
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    if-eqz v1, :cond_15

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") font = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_62
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PositionedGlyphs{glyphs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mXOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
