# classes4.dex

.class public Lcom/android/internal/content/om/OverlayScanner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    }
.end annotation


# instance fields
.field private final mExcludedOverlayPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mParsedOverlayInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final getAllParsedInfos()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    return-object v0
.end method

.method final isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {p2, v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    return v2

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;)",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forParsingWithoutPlatformCompat()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v2, v0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    const-string v5, "OverlayConfig"

    const-string v6, "Got exception loading overlay."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :cond_23
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/ApkLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_30

    return-object v4

    :cond_30
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    goto :goto_48

    :cond_45
    move-object/from16 v8, p2

    goto :goto_5e

    :cond_48
    :goto_48
    invoke-static {v5, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5c

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_5c
    move-object/from16 v8, p2

    :goto_5e
    new-instance v4, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v12

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->isOverlayIsStatic()Z

    move-result v13

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getOverlayPriority()I

    move-result v14

    new-instance v15, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V

    return-object v4
.end method

.method public scanDir(Ljava/io/File;)V
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6f

    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_39

    return-void

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    array-length v2, v0

    if-ge v1, v2, :cond_6e

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p0, v2}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    :cond_48
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_6b

    :cond_5b
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/content/om/OverlayScanner;->parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v3

    if-nez v3, :cond_64

    goto :goto_6b

    :cond_64
    iget-object v4, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_6e
    return-void

    :cond_6f
    :goto_6f
    return-void
.end method
