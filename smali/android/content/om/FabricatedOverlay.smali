# classes.dex

.class public Landroid/content/om/FabricatedOverlay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/FabricatedOverlay$Builder;
    }
.end annotation


# instance fields
.field final mOverlay:Landroid/os/FabricatedOverlayInternal;


# direct methods
.method private constructor <init>(Landroid/os/FabricatedOverlayInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/FabricatedOverlayInternal;Landroid/content/om/FabricatedOverlay-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Landroid/content/om/OverlayIdentifier;
    .registers 4

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v1, v1, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
