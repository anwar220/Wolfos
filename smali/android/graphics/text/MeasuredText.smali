# classes.dex

.class public Landroid/graphics/text/MeasuredText;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MeasuredText"


# instance fields
.field private final mBottom:I

.field private final mChars:[C

.field private final mComputeHyphenation:Z

.field private final mComputeLayout:Z

.field private final mNativePtr:J

.field private final mTop:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C
    .registers 1

    iget-object p0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$smnGetReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/text/MeasuredText;->nGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(J[CZZII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iput-object p3, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    iput-boolean p4, p0, Landroid/graphics/text/MeasuredText;->mComputeHyphenation:Z

    iput-boolean p5, p0, Landroid/graphics/text/MeasuredText;->mComputeLayout:Z

    iput p6, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    iput p7, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    return-void
.end method

.method synthetic constructor <init>(J[CZZIILandroid/graphics/text/MeasuredText-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZII)V

    return-void
.end method

.method private static native nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native nGetCharWidthAt(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetExtent(J[CII)J
.end method

.method private static native nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public getBounds(IILandroid/graphics/Rect;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p1, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string/jumbo v5, "start(%d) must be 0 <= start <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_2d

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p2, v2, :cond_2d

    move v2, v0

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "end(%d) must be 0 <= end <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gt p1, p2, :cond_48

    move v2, v0

    goto :goto_49

    :cond_48
    move v2, v1

    :goto_49
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string/jumbo v0, "start(%d) is larger than end(%d)"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v6, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/graphics/text/MeasuredText;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getCharWidthAt(I)F
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-ge p1, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offset(%d) is larger than text length %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/MeasuredText;->nGetCharWidthAt(JI)F

    move-result v0

    return v0
.end method

.method public getChars()[C
    .registers 2

    iget-object v0, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    return-object v0
.end method

.method public getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p1, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string/jumbo v5, "start(%d) must be 0 <= start <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_2d

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p2, v2, :cond_2d

    move v2, v0

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "end(%d) must be 0 <= end <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gt p1, p2, :cond_48

    move v2, v0

    goto :goto_49

    :cond_48
    move v2, v1

    :goto_49
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string/jumbo v0, "start(%d) is larger than end(%d)"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    invoke-static {v0, v1, v2, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetExtent(J[CII)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mTop:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Landroid/graphics/text/MeasuredText;->mBottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    return-void
.end method

.method public getMemoryUsage()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/MeasuredText;->nGetMemoryUsage(J)I

    move-result v0

    return v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    return-wide v0
.end method

.method public getWidth(II)F
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p1, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string/jumbo v5, "start(%d) must be 0 <= start <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_2d

    iget-object v2, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v2, v2

    if-gt p2, v2, :cond_2d

    move v2, v0

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/graphics/text/MeasuredText;->mChars:[C

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "end(%d) must be 0 <= end <= %d"

    invoke-static {v2, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-gt p1, p2, :cond_48

    move v2, v0

    goto :goto_49

    :cond_48
    move v2, v1

    :goto_49
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string/jumbo v0, "start(%d) is larger than end(%d)"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Landroid/graphics/text/MeasuredText;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/text/MeasuredText;->nGetWidth(JII)F

    move-result v0

    return v0
.end method
