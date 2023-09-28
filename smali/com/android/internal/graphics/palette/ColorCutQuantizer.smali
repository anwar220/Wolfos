# classes4.dex

.class final Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final COMPONENT_BLUE:I = -0x1

.field static final COMPONENT_GREEN:I = -0x2

.field static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final LOG_TIMINGS:Z = false

.field private static final QUANTIZE_WORD_MASK:I = 0x1f

.field private static final QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mColors:[I

.field mHistogram:[I

.field mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    return-void
.end method

.method private static approximateToRgb888(I)I
    .registers 4

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .registers 7

    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .registers 8

    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    :pswitch_4  #0xffffffff
    move v0, p2

    :goto_5
    if-gt v0, p3, :cond_3e

    aget v1, p0, v0

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_20  #0xfffffffe
    move v0, p2

    :goto_21
    if-gt v0, p3, :cond_3c

    aget v1, p0, v0

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3c
    goto :goto_3e

    :pswitch_3d  #0xfffffffd
    nop

    :cond_3e
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3d  #fffffffd
        :pswitch_20  #fffffffe
        :pswitch_4  #ffffffff
    .end packed-switch
.end method

.method private static modifyWordWidth(III)I
    .registers 6

    if-le p2, p1, :cond_7

    sub-int v0, p2, p1

    shl-int v0, p0, v0

    goto :goto_b

    :cond_7
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    :goto_b
    const/4 v1, 0x1

    shl-int v2, v1, p2

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    return v1
.end method

.method private static quantizeFromRgb888(I)I
    .registers 6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    shl-int/lit8 v2, v0, 0xa

    shl-int/lit8 v4, v3, 0x5

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method private quantizePixels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static quantizedBlue(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_20

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1f
    return-void

    :cond_20
    return-void
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II)V
    .registers 14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    const v0, 0x8000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    const/4 v1, 0x0

    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    aget v2, p1, v1

    invoke-static {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v2

    aput v2, p1, v1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_21
    array-length v3, v0

    if-ge v2, v3, :cond_2d

    aget v3, v0, v2

    if-lez v3, :cond_2a

    add-int/lit8 v1, v1, 0x1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2d
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_33
    array-length v5, v0

    if-ge v4, v5, :cond_42

    aget v5, v0, v4

    if-lez v5, :cond_3f

    add-int/lit8 v5, v3, 0x1

    aput v4, v2, v3

    move v3, v5

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_42
    if-gt v1, p2, :cond_64

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_6a

    aget v6, v2, v5

    iget-object v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v8, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v6}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v9

    aget v10, v0, v6

    invoke-direct {v8, v9, v10}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_64
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_6a
    return-void
.end method
