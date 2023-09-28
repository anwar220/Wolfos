# classes3.dex

.class public final Landroid/os/incremental/IncrementalManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;,
        Landroid/os/incremental/IncrementalManager$CreateMode;
    }
.end annotation


# static fields
.field private static final ALLOWED_PROPERTY:Ljava/lang/String; = "incremental.allowed"

.field public static final CREATE_MODE_CREATE:I = 0x4

.field public static final CREATE_MODE_OPEN_EXISTING:I = 0x8

.field public static final CREATE_MODE_PERMANENT_BIND:I = 0x2

.field public static final CREATE_MODE_TEMPORARY_BIND:I = 0x1

.field public static final MIN_VERSION_TO_SUPPORT_FSVERITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IncrementalManager"


# instance fields
.field private final mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

.field private final mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor <init>(Landroid/os/incremental/IIncrementalService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>(Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks-IA;)V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    iput-object p1, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    return-void
.end method

.method public static getVersion()I
    .registers 1

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsV2Available()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_11

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isAllowed()Z
    .registers 2

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    const-string/jumbo v0, "incremental.allowed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static isFeatureEnabled()Z
    .registers 1

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isIncrementalFileFd(Ljava/io/FileDescriptor;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->nativeIsIncrementalFd(I)Z

    move-result v0

    return v0
.end method

.method public static isIncrementalPath(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeIsIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p5, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Landroid/os/incremental/IncrementalManager$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p4

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/incremental/IncrementalManager$1;-><init>(Landroid/os/incremental/IncrementalManager;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;)V

    invoke-static {v8, v9}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-void
.end method

.method private static native nativeIsEnabled()Z
.end method

.method private static native nativeIsIncrementalFd(I)Z
.end method

.method private static native nativeIsIncrementalPath(Ljava/lang/String;)Z
.end method

.method private static native nativeIsV2Available()Z
.end method

.method private static native nativeUnsafeGetFileSignature(Ljava/lang/String;)[B
.end method

.method public static unsafeGetFileSignature(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeUnsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroid/os/incremental/IIncrementalService;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I

    move-result v0

    if-gez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v1, v2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v1

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Landroid/os/incremental/IIncrementalService;->createLinkedStorage(Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v1, 0x0

    return-object v1

    :cond_e
    new-instance v1, Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v1, v2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    new-instance v1, Landroid/os/incremental/IncrementalMetrics;

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/incremental/IncrementalMetrics;-><init>(Landroid/os/PersistableBundle;)V

    return-object v1
.end method

.method public linkCodePath(Ljava/io/File;Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v7

    if-eqz v7, :cond_4a

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x6

    invoke-virtual {p0, v8, v7, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v9

    if-eqz v9, :cond_31

    :try_start_1d
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v3, ""

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/os/incremental/IncrementalManager;->linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_2c

    nop

    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v9, v8}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create linked storage at dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Incremental path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-interface {v0, p1}, Landroid/os/incremental/IIncrementalService;->openStorage(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    new-instance v1, Landroid/os/incremental/IncrementalStorage;

    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v1, v2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v1, v0, p2}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    move-result v1

    return v1
.end method

.method public rmPackageDir(Ljava/io/File;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v2, v1}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V

    invoke-virtual {v1, v0}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "IncrementalManager"

    const-string v2, "Failed to remove code path"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public unregisterLoadingProgressCallbacks(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v1, v0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V

    return-void
.end method
