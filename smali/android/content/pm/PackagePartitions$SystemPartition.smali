# classes.dex

.class public Landroid/content/pm/PackagePartitions$SystemPartition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackagePartitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPartition"
.end annotation


# instance fields
.field private final mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final mName:Ljava/lang/String;

.field private final mNonConicalFolder:Ljava/io/File;

.field private final mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field private final mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

.field public final type:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v1, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iget-object v0, p1, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;ILjava/lang/String;ZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iput-object p3, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string v2, "app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p4, :cond_23

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "priv-app"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    goto :goto_24

    :cond_23
    move-object v0, v1

    :goto_24
    iput-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz p5, :cond_32

    new-instance v0, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const-string/jumbo v2, "overlay"

    invoke-direct {v0, p1, v2, v1}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/PackagePartitions$DeferredCanonicalFile-IA;)V

    move-object v1, v0

    goto :goto_33

    :cond_32
    nop

    :goto_33
    iput-object v1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    iput-object p1, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;ILjava/lang/String;ZZLandroid/content/pm/PackagePartitions$SystemPartition-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 10

    iget v2, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    iget-object v3, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    move v5, v1

    goto :goto_d

    :cond_c
    move v5, v4

    :goto_d
    iget-object v0, p2, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_13

    move v6, v1

    goto :goto_14

    :cond_13
    move v6, v4

    :goto_14
    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;ILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public containsApp(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public containsFile(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public containsOverlay(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public containsPath(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public containsPrivApp(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Landroid/content/pm/PackagePartitions;->-$$Nest$smcanonicalize(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public getAppFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonConicalFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mNonConicalFolder:Ljava/io/File;

    return-object v0
.end method

.method public getOverlayFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mOverlayFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getPrivAppFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->mPrivAppFolder:Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {v0}, Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;->-$$Nest$mgetFile(Landroid/content/pm/PackagePartitions$DeferredCanonicalFile;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0
.end method
