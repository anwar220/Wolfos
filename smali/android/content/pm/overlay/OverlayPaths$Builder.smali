# classes.dex

.class public Landroid/content/pm/overlay/OverlayPaths$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/overlay/OverlayPaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mPaths:Landroid/content/pm/overlay/OverlayPaths;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/overlay/OverlayPaths;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/overlay/OverlayPaths;-><init>(Landroid/content/pm/overlay/OverlayPaths-IA;)V

    iput-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-void
.end method

.method private static addUniquePath(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .registers 5

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_a

    :cond_20
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v2}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_28

    :cond_3e
    return-object p0
.end method

.method public addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmResourceDirs(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-static {v0}, Landroid/content/pm/overlay/OverlayPaths;->-$$Nest$fgetmOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/overlay/OverlayPaths$Builder;->mPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object v0
.end method
