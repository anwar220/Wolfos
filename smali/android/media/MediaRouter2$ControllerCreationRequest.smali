# classes2.dex

.class final Landroid/media/MediaRouter2$ControllerCreationRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControllerCreationRequest"
.end annotation


# instance fields
.field public final mManagerRequestId:J

.field public final mOldController:Landroid/media/MediaRouter2$RoutingController;

.field public final mRequestId:I

.field public final mRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method constructor <init>(IJLandroid/media/MediaRoute2Info;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRequestId:I

    iput-wide p2, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mManagerRequestId:J

    const-string v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    iput-object v0, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    nop

    const-string v0, "oldController must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter2$RoutingController;

    iput-object v0, p0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mOldController:Landroid/media/MediaRouter2$RoutingController;

    return-void
.end method
