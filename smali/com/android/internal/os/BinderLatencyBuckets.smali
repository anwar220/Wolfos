# classes4.dex

.class public Lcom/android/internal/os/BinderLatencyBuckets;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderLatencyBuckets"


# instance fields
.field private final mBuckets:[I


# direct methods
.method public constructor <init>(IIF)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    int-to-double v2, p2

    const/4 v4, 0x1

    :goto_c
    add-int/lit8 v5, p1, -0x1

    if-ge v4, v5, :cond_40

    float-to-double v5, p3

    mul-double/2addr v5, v2

    const-wide v7, 0x41dfffffffc00000L  # 2.147483647E9

    cmpl-double v7, v5, v7

    if-lez v7, :cond_29

    const-string v7, "BinderLatencyBuckets"

    const-string v8, "Attempted to create a bucket larger than maxint"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-void

    :cond_29
    double-to-int v7, v5

    add-int/lit8 v8, v4, -0x1

    aget v8, v0, v8

    if-le v7, v8, :cond_34

    double-to-int v7, v5

    aput v7, v0, v4

    goto :goto_3c

    :cond_34
    add-int/lit8 v7, v4, -0x1

    aget v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v4

    :goto_3c
    move-wide v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_40
    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-void
.end method


# virtual methods
.method public getBuckets()[I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-object v0
.end method

.method public sampleToBucket(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-lt p1, v1, :cond_b

    array-length v0, v0

    return v0

    :cond_b
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-gez v0, :cond_14

    neg-int v1, v1

    :cond_14
    return v1
.end method
