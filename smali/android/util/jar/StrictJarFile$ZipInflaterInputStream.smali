# classes3.dex

.class public Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInflaterInputStream"
.end annotation


# instance fields
.field private bytesRead:J

.field private closed:Z

.field private final entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    iput-object p4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_17

    :cond_d
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    :goto_17
    return v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->closed:Z

    return-void
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_47

    nop

    const/4 v1, -0x1

    if-ne v0, v1, :cond_40

    iget-object v1, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    goto :goto_46

    :cond_15
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size mismatch on inflated file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    iget-wide v1, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    :goto_46
    return v0

    :catch_47
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " near offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method