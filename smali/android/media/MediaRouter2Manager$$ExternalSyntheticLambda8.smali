# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/media/RouteDiscoveryPreference;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput-object p2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;->f$2:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;->f$2:Landroid/media/RouteDiscoveryPreference;

    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2Manager;->lambda$updateDiscoveryPreference$10(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method
