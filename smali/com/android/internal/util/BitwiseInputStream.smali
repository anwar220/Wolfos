# classes4.dex

.class public Lcom/android/internal/util/BitwiseInputStream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseInputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v2, v0, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    if-ltz p1, :cond_30

    const/16 v3, 0x8

    if-gt p1, v3, :cond_30

    add-int v4, v0, p1

    iget v5, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-gt v4, v5, :cond_30

    iget-object v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    if-ge v2, v3, :cond_25

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v5, v3

    :cond_25
    ushr-int v3, v5, v2

    const/4 v4, -0x1

    rsub-int/lit8 v5, p1, 0x20

    ushr-int/2addr v4, v5

    and-int/2addr v3, v4

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    return v3

    :cond_30
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal read (pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bits "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray(I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_26

    shl-int/lit8 v3, v2, 0x3

    sub-int v3, p1, v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    rsub-int/lit8 v5, v3, 0x8

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    return-object v1
.end method

.method public skip(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-gt v1, v2, :cond_c

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    return-void

    :cond_c
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal skip (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bits "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
