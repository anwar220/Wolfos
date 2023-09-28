# classes4.dex

.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static BOOT_START_TIME:J = 0x0L

.field private static final LOGGING_DEBUG:Z

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static sPreloadComplete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Zygote"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginPreload()V
    .registers 2

    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    return-void
.end method

.method private static cacheNonBootClasspathClassLoaders()V
    .registers 15

    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    const-string v1, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v13, Landroid/content/pm/SharedLibraryInfo;

    const-string v2, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    new-instance v14, Landroid/content/pm/SharedLibraryInfo;

    const-string v3, "/system/framework/android.test.base.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/content/pm/SharedLibraryInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders([Landroid/content/pm/SharedLibraryInfo;)V

    return-void
.end method

.method static childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 5

    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method static createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .registers 11

    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v8

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method private static endPreload()V
    .registers 2

    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .registers 26

    const/16 v0, 0xd

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v9, 0x7

    aput v1, v0, v9

    sget v1, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    const/16 v10, 0x8

    aput v1, v0, v10

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v11, 0x9

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v11, 0xa

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    const/16 v11, 0xb

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/16 v11, 0xc

    aput v1, v0, v11

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v11

    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    invoke-direct {v0, v1, v2}, Landroid/system/StructCapUserHeader;-><init>(II)V

    move-object v1, v0

    :try_start_56
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0
    :try_end_5a
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5a} :catch_1ae

    move-object v13, v0

    nop

    aget-object v0, v13, v2

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v14, v0

    aget-object v0, v13, v3

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v8, v14

    and-long/2addr v8, v11

    new-array v0, v10, [Ljava/lang/String;

    const-string v10, "--setuid=1000"

    aput-object v10, v0, v2

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/content/res/ThemeManagerStub;->appendZygoteGid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v6

    const-string v2, "--runtime-args"

    aput-object v2, v0, v7

    const-string v2, "--target-sdk-version=10000"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "com.android.server.SystemServer"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    move-object v2, v0

    :try_start_c0
    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c0 .. :try_end_c5} :catch_1a7

    move-object v3, v0

    :try_start_c6
    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_ca
    .catch Ljava/io/EOFException; {:try_start_c6 .. :try_end_ca} :catch_19c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_ca} :catch_1a7

    nop

    :try_start_cb
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v4

    if-eqz v4, :cond_142

    const-string v4, "arm64.memtag.process.system_server"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cb .. :try_end_e6} :catch_1a7

    const-string v6, "async"

    if-eqz v5, :cond_f2

    :try_start_ea
    const-string/jumbo v5, "persist.arm64.memtag.default"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_f2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_150

    :cond_100
    const-string/jumbo v5, "sync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v6, 0x180000

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_150

    :cond_111
    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_150

    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown memory tag level for the system server: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    :cond_142
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v4

    if-eqz v4, :cond_150

    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_151

    :cond_150
    :goto_150
    nop

    :goto_151
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v4

    if-eqz v4, :cond_164

    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    :cond_164
    iget v14, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v15, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v4, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/16 v18, 0x0

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    iget-wide v10, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    invoke-static/range {v14 .. v22}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v4
    :try_end_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_17e} :catch_1a7

    move v3, v4

    nop

    if-nez v3, :cond_19a

    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18b

    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    :cond_18b
    invoke-static {}, Lcom/android/internal/os/ZygoteInitStub;->getInstance()Lcom/android/internal/os/ZygoteInitStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteInitStub;->setLastZygotePid()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object v4

    return-object v4

    :cond_19a
    const/4 v4, 0x0

    return-object v4

    :catch_19c
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    :try_start_19f
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Unexpected argument error for forking system server"

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19f .. :try_end_1a7} :catch_1a7

    :catch_1a7
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1ae
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to capget()"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static gcAndFinalize()V
    .registers 0

    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    return-void
.end method

.method private static getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_14

    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    :cond_14
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .registers 10

    const-string v0, "Zygote"

    sget v1, Landroid/system/OsConstants;->S_IRWXG:I

    sget v2, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v1, v2

    invoke-static {v1}, Landroid/system/Os;->umask(I)I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_13
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v2

    if-eqz v2, :cond_38

    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_29

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_38

    :cond_29
    :try_start_29
    const-string v2, "Preparing system server profile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_32

    goto :goto_38

    :catch_32
    move-exception v2

    const-string v3, "Failed to set up system server profile"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    if-eqz v1, :cond_52

    array-length v2, v0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "-cp"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v1, v2, v4

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_52
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_69
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_76
    iget v2, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isPreloadComplete()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static lazyPreload()V
    .registers 4

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-wide/16 v1, 0x4000

    const-string v3, "ZygoteInitTiming_lazy"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    const/4 v4, 0x0

    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    const/4 v5, 0x0

    :try_start_d
    invoke-static {v5, v5}, Landroid/system/Os;->setpgid(II)V
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_10} :catch_15c

    nop

    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string v7, "1"

    const-string/jumbo v8, "sys.boot_completed"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v8
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_14a

    if-eqz v8, :cond_31

    :try_start_28
    const-string v8, "Zygote64Timing"
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    goto :goto_33

    :catchall_2b
    move-exception v0

    move-object/from16 v16, v4

    move-object v4, v3

    goto/16 :goto_14e

    :cond_31
    :try_start_31
    const-string v8, "Zygote32Timing"

    :goto_33
    new-instance v9, Landroid/util/TimingsTraceLog;

    const-wide/16 v10, 0x4000

    invoke-direct {v9, v8, v10, v11}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v10, "ZygoteInit"

    invoke-virtual {v9, v10}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_14a

    const/4 v10, 0x0

    const-string/jumbo v11, "zygote"

    move-object v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_4a
    move-object/from16 v16, v4

    :try_start_4c
    array-length v4, v1

    if-ge v15, v4, :cond_b5

    const-string/jumbo v4, "start-system-server"

    move-object/from16 v17, v8

    aget-object v8, v1, v15

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    const/4 v4, 0x1

    move v10, v4

    goto :goto_93

    :cond_5f
    const-string v4, "--enable-lazy-preload"

    aget-object v8, v1, v15

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const/4 v4, 0x1

    move v14, v4

    goto :goto_93

    :cond_6c
    aget-object v4, v1, v15

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    aget-object v4, v1, v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_93

    :cond_80
    aget-object v4, v1, v15

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    aget-object v4, v1, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    :goto_93
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    goto :goto_4a

    :cond_9a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command line argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v15

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b5
    move-object/from16 v17, v8

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v7, :cond_d5

    const/16 v2, 0xf0

    if-eqz v0, :cond_c7

    const/16 v4, 0x11

    invoke-static {v2, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_d5

    :cond_c7
    const-string/jumbo v4, "zygote_secondary"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    const/16 v4, 0x12

    invoke-static {v2, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_d5
    :goto_d5
    if-eqz v13, :cond_13c

    if-nez v14, :cond_fa

    const-string v2, "ZygotePreload"

    invoke-virtual {v9, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_4c .. :try_end_de} :catchall_147

    nop

    move-object v4, v3

    :try_start_e0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v8, 0xbcc

    invoke-static {v8, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v8, 0xbd6

    invoke-static {v8, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_fb

    :cond_fa
    move-object v4, v3

    :goto_fb
    const-string v2, "PostZygoteInitGC"

    invoke-virtual {v9, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    new-instance v2, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v2, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V
    :try_end_114
    .catchall {:try_start_e0 .. :try_end_114} :catchall_145

    if-eqz v10, :cond_128

    :try_start_116
    invoke-static {v13, v12, v2}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_128

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_11f
    .catchall {:try_start_116 .. :try_end_11f} :catchall_124

    nop

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    return-void

    :catchall_124
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_14e

    :cond_128
    :try_start_128
    const-string v3, "Accepting command socket connections"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v13}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3
    :try_end_131
    .catchall {:try_start_128 .. :try_end_131} :catchall_124

    move-object v0, v3

    nop

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    if-eqz v0, :cond_13b

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_13b
    return-void

    :cond_13c
    move-object v4, v3

    :try_start_13d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No ABI list supplied."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_145

    :catchall_145
    move-exception v0

    goto :goto_14e

    :catchall_147
    move-exception v0

    move-object v4, v3

    goto :goto_14e

    :catchall_14a
    move-exception v0

    move-object/from16 v16, v4

    move-object v4, v3

    :goto_14e
    :try_start_14e
    const-string v2, "System zygote died with fatal exception"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_155
    .catchall {:try_start_14e .. :try_end_155} :catchall_155

    :catchall_155
    move-exception v0

    if-eqz v16, :cond_15b

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    :cond_15b
    throw v0

    :catch_15c
    move-exception v0

    move-object/from16 v16, v4

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to setpgid(0,0)"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static maybePreloadGraphicsDriver()V
    .registers 2

    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    :cond_d
    return-void
.end method

.method private static native nativePreloadAppProcessHALs()V
.end method

.method static native nativePreloadGraphicsDriver()V
.end method

.method private static native nativeZygoteInit()V
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .registers 8

    const-wide/16 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_1f

    aget v4, p0, v3

    if-ltz v4, :cond_15

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-gt v4, v5, :cond_15

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    return-wide v0
.end method

.method private static prefetchStandaloneSystemServerJars()V
    .registers 10

    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v4, v2, :cond_3e

    aget-object v5, v1, v4

    nop

    :try_start_1b
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_22
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_3b

    :catch_23
    move-exception v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v6}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Zygote"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_3e
    return-void
.end method

.method static preload(Landroid/util/TimingsTraceLog;)V
    .registers 5

    const-string v0, "Zygote"

    const-string v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BeginPreload"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "PreloadClasses"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "PreloadResources"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-wide/16 v1, 0x4000

    const-string v3, "PreloadAppProcessHALs"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const-string v3, "PreloadGraphicsDriver"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    const-string v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return-void
.end method

.method private static preloadClasses()V
    .registers 23

    const-string v1, "Failed to restore root"

    const-string v2, "ResetJitCounters"

    const-string v3, "dalvik.vm.profilebootclasspath"

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "persist.device_config.runtime_native_boot.profilebootclasspath"

    const-string v6, "PreloadDexCaches"

    const-string v7, ""

    const-string v8, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    :try_start_16
    new-instance v0, Ljava/io/FileInputStream;

    const-string v10, "/system/etc/preloaded-classes"

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1d} :catch_265

    move-object v10, v0

    nop

    const-string v0, "Preloading classes..."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v13

    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v14

    const/4 v15, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    if-nez v13, :cond_4e

    if-nez v14, :cond_4e

    const/16 v0, 0x270f

    :try_start_3a
    invoke-static {v15, v0}, Landroid/system/Os;->setregid(II)V

    invoke-static {v15, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_3a .. :try_end_40} :catch_45

    nop

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_4e

    :catch_45
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4e
    :goto_4e
    move/from16 v17, v13

    move/from16 v18, v14

    :try_start_52
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x100

    invoke-direct {v0, v15, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    move v15, v14

    move v14, v0

    :goto_63
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    if-eqz v0, :cond_138

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    const-string v0, "#"

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12c

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_81} :catch_1da
    .catchall {:try_start_52 .. :try_end_81} :catchall_1d7

    if-eqz v0, :cond_89

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    goto/16 :goto_130

    :cond_89
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    const-wide/16 v1, 0x4000

    :try_start_8f
    invoke-static {v1, v2, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_1d1
    .catchall {:try_start_8f .. :try_end_92} :catchall_1cb

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_94
    invoke-static {v13, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_94 .. :try_end_97} :catch_f5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_94 .. :try_end_97} :catch_d0
    .catchall {:try_start_94 .. :try_end_97} :catchall_9b

    add-int/lit8 v14, v14, 0x1

    :cond_99
    :goto_99
    goto/16 :goto_11f

    :catchall_9b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    :try_start_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error preloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_cc

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_c6

    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_c6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_cc
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    :catch_d0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem preloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_11f

    :catch_f5
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    const-string v1, "$$Lambda$"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_107

    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v1, :cond_99

    add-int/lit8 v15, v15, 0x1

    goto :goto_99

    :cond_107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found for preloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    :goto_11f
    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v13, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_63

    :cond_12c
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    :goto_130
    move-object/from16 v13, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_63

    :cond_138
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v20, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...preloaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classes in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v0, :cond_186

    if-eqz v15, :cond_186

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unresolved lambda preloads: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_186} :catch_1d1
    .catchall {:try_start_9e .. :try_end_186} :catchall_1cb

    :cond_186
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v1, 0x4000

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a4

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1a5

    :cond_1a4
    move-object v1, v0

    :goto_1a5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    move-object/from16 v2, v22

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1b8
    if-eqz v16, :cond_223

    const/4 v2, 0x0

    :try_start_1bb
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_1c1
    .catch Landroid/system/ErrnoException; {:try_start_1bb .. :try_end_1c1} :catch_1c2

    goto :goto_21b

    :catch_1c2
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v13, v21

    invoke-direct {v2, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1cb
    move-exception v0

    move-object/from16 v13, v21

    move-object/from16 v2, v22

    goto :goto_226

    :catch_1d1
    move-exception v0

    move-object/from16 v13, v21

    move-object/from16 v2, v22

    goto :goto_1dc

    :catchall_1d7
    move-exception v0

    move-object v13, v1

    goto :goto_226

    :catch_1da
    move-exception v0

    move-object v13, v1

    :goto_1dc
    :try_start_1dc
    const-string v1, "Error reading /system/etc/preloaded-classes."

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e1
    .catchall {:try_start_1dc .. :try_end_1e1} :catchall_225

    nop

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_200

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_201

    :cond_200
    move-object v1, v0

    :goto_201
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_212

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_212
    if-eqz v16, :cond_223

    const/4 v2, 0x0

    :try_start_215
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_21b
    .catch Landroid/system/ErrnoException; {:try_start_215 .. :try_end_21b} :catch_21c

    :goto_21b
    goto :goto_223

    :catch_21c
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_223
    :goto_223
    nop

    return-void

    :catchall_225
    move-exception v0

    :goto_226
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_242

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_242
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_253

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_253
    if-eqz v16, :cond_264

    const/4 v2, 0x0

    :try_start_256
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_25c
    .catch Landroid/system/ErrnoException; {:try_start_256 .. :try_end_25c} :catch_25d

    goto :goto_264

    :catch_25d
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_264
    :goto_264
    throw v0

    :catch_265
    move-exception v0

    const-string v1, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .registers 7

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_49

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_18

    goto :goto_49

    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4c
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .registers 7

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_49

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_18

    goto :goto_49

    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4c
    return v0
.end method

.method private static preloadResources()V
    .registers 11

    const-string v0, " resources in "

    const-string/jumbo v1, "ms."

    const-string v2, "...preloaded "

    const-string v3, "Zygote"

    :try_start_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sput-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->startPreloading()V

    const-string v4, "Preloading resources..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x10700d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v7

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v4, v8

    sget-object v8, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v9, 0x10700d8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v6, v8

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v8

    move v7, v8

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v8, 0x1110159

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v4, v8

    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v8, 0x10700da

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " resource in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_d8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d8} :catch_d9

    goto :goto_df

    :catch_d9
    move-exception v0

    const-string v1, "Failure preloading resources"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_df
    return-void
.end method

.method private static preloadSharedLibraries()V
    .registers 3

    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "compiler_rt"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "jnigraphics"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInitStub;->getInstance()Lcom/android/internal/os/ZygoteInitStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInitStub;->loadSoBridge()V

    :try_start_1d
    const-string/jumbo v1, "qti_performance"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_2a

    :catch_24
    move-exception v1

    const-string v2, "Couldn\'t load qti_performance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static preloadTextResources()V
    .registers 0

    invoke-static {}, Landroid/text/Hyphenator;->init()V

    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    return-void
.end method

.method private static prepareSystemServerProfile(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    const-string v9, "android"

    const-string/jumbo v10, "primary.prof"

    const/4 v4, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v11, 0x0

    aget-object v7, v0, v11

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v9

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v9, v3, v5, v0, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public static setApiDenylistExemptions([Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    return-void
.end method

.method public static setHiddenApiAccessLogSampleRate(I)V
    .registers 2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    return-void
.end method

.method public static setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .registers 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    return-void
.end method

.method private static shouldProfileSystemServer()Z
    .registers 2

    const-string v0, "dalvik.vm.profilesystemserver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "persist.device_config.runtime_native_boot.profilesystemserver"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v0, "zygote_secondary"

    goto :goto_e

    :cond_d
    nop

    :goto_e
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    return-void
.end method

.method private static warmUpJcaProviders()V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    const-string v4, "Starting installation of AndroidKeyStoreProvider"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Zygote"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v4, "Starting warm up of JCA providers"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x0

    :goto_44
    if-ge v8, v7, :cond_4e

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7

    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
