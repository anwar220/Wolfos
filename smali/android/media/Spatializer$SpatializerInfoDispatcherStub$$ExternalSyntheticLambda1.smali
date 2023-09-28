# classes2.dex

.class public final synthetic Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic f$0:Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;->f$0:Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    iput-boolean p2, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final callbackMethod(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;->f$0:Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    iget-boolean v1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {v0, v1, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerEnabledChanged$0$android-media-Spatializer$SpatializerInfoDispatcherStub(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method
