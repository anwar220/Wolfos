# classes3.dex

.class interface abstract Landroid/util/apk/DataSource;
.super Ljava/lang/Object;


# direct methods
.method public static create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;
    .registers 12

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalFileFd(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/util/apk/ReadFileDataSource;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/util/apk/ReadFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-object v0

    :cond_10
    new-instance v0, Landroid/util/apk/MemoryMappedFileDataSource;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-object v0
.end method


# virtual methods
.method public abstract feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation
.end method

.method public abstract size()J
.end method
