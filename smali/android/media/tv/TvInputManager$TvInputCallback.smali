# classes2.dex

.class public abstract Landroid/media/tv/TvInputManager$TvInputCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTunedInfosUpdated(Ljava/util/List;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onInputAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .registers 2

    return-void
.end method
