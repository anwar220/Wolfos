# classes2.dex

.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroid/media/ExifInterface;

.field final synthetic val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 3

    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-gez v2, :cond_c

    return v3

    :cond_c
    :try_start_c
    iget-wide v4, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_2a

    cmp-long v0, v4, v0

    if-ltz v0, :cond_23

    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v4, v0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_23

    return v3

    :cond_23
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    :cond_2a
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    if-le p5, v0, :cond_39

    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    move p5, v0

    :cond_39
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_48

    iget-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_47} :catch_49

    return v0

    :cond_48
    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    nop

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/ExifInterface$1;->mPosition:J

    return v3
.end method
