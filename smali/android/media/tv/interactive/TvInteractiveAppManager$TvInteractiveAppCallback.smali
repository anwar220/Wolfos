# classes2.dex

.class public abstract Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInteractiveAppCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractiveAppServiceAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .registers 2

    return-void
.end method

.method public onTvInteractiveAppServiceStateChanged(Ljava/lang/String;III)V
    .registers 5

    return-void
.end method
