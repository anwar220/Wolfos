# classes.dex

.class public Landroid/content/pm/LimitedLengthInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final mEnd:J

.field private mOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_3d

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_34

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2c

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p2

    cmp-long v0, p4, v0

    if-gtz v0, :cond_23

    add-long v0, p2, p4

    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    invoke-virtual {p0, p2, p3}, Landroid/content/pm/LimitedLengthInputStream;->skip(J)J

    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    return-void

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "offset + length > Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_17

    cmp-long v2, v0, v2

    if-ltz v2, :cond_c

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_c
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :try_start_f
    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_17

    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/LimitedLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    iget-wide v1, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    const-wide v3, 0x7fffffffffffffffL

    int-to-long v5, p3

    sub-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_30

    int-to-long v3, p3

    add-long/2addr v3, v1

    iget-wide v5, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_25

    sub-long/2addr v5, v1

    long-to-int p3, v5

    :cond_25
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    return v1

    :cond_30
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset out of bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
