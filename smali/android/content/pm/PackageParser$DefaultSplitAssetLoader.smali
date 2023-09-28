# classes.dex

.class Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/pm/PackageParser$SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSplitAssetLoader"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBaseApkAssets:Landroid/content/res/ApkAssets;

.field private final mBaseCodePath:Ljava/lang/String;

.field private mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final mFlags:I

.field private final mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    return-void
.end method

.method private static loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    :cond_b
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object v0

    :catch_2b
    move-exception v0

    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load APK at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    array-length v1, v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v3, v4}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    const/4 v4, 0x0

    add-int/lit8 v5, v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v4, v3

    move v6, v2

    :goto_2e
    if-ge v6, v4, :cond_40

    aget-object v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    iget v9, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v9

    aput-object v9, v1, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_2e

    :cond_40
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v24, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v6 .. v24}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    invoke-virtual {v3, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    iput-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v3
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
