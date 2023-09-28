# classes4.dex

.class Lcom/android/internal/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Lcom/android/internal/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Lcom/android/internal/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    :cond_b
    return-void
.end method


# virtual methods
.method clear(I)V
    .registers 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_17

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_17

    :cond_e
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    :cond_17
    :goto_17
    return-void
.end method

.method countOnesBefore(I)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1c

    if-lt p1, v1, :cond_11

    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    :cond_11
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    :cond_1c
    if-ge p1, v1, :cond_29

    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    :cond_29
    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method get(I)Z
    .registers 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_10

    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    move-result v0

    return v0

    :cond_10
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method insert(IZ)V
    .registers 14

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_44

    :cond_f
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    move v2, v4

    :goto_1f
    const-wide/16 v5, 0x1

    shl-long v7, v5, p1

    sub-long/2addr v7, v5

    and-long v5, v0, v7

    not-long v9, v7

    and-long/2addr v0, v9

    shl-long/2addr v0, v3

    or-long v9, v5, v0

    iput-wide v9, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    if-eqz p2, :cond_33

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_36

    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ChildHelper$Bucket;->clear(I)V

    :goto_36
    if-nez v2, :cond_3c

    iget-object v3, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v3, :cond_44

    :cond_3c
    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v3, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/widget/ChildHelper$Bucket;->insert(IZ)V

    :cond_44
    :goto_44
    return-void
.end method

.method remove(I)Z
    .registers 13

    const/16 v0, 0x40

    if-lt p1, v0, :cond_10

    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v0

    return v0

    :cond_10
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    iget-wide v4, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    and-long v6, v4, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_22

    move v6, v7

    goto :goto_23

    :cond_22
    move v6, v8

    :goto_23
    not-long v9, v2

    and-long/2addr v4, v9

    iput-wide v4, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    sub-long/2addr v2, v0

    and-long v0, v4, v2

    not-long v9, v2

    and-long/2addr v4, v9

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    or-long v9, v0, v4

    iput-wide v9, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    iget-object v7, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v7, :cond_48

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/ChildHelper$Bucket;->get(I)Z

    move-result v7

    if-eqz v7, :cond_43

    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    :cond_43
    iget-object v7, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/ChildHelper$Bucket;->remove(I)Z

    :cond_48
    return v6
.end method

.method reset()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper$Bucket;->reset()V

    :cond_b
    return-void
.end method

.method set(I)V
    .registers 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/widget/ChildHelper$Bucket;->ensureNext()V

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->set(I)V

    goto :goto_17

    :cond_f
    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    :goto_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mNext:Lcom/android/internal/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0
.end method