# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic f$1:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput-object p2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;->f$1:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;->f$1:Landroid/media/RoutingSessionInfo;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Manager;->lambda$notifySessionUpdated$5(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
