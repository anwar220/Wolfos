# classes2.dex

.class public final synthetic Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

.field public final synthetic f$1:Landroid/media/CallbackUtil$ListenerInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/Spatializer$SpatializerOutputDispatcherStub;Landroid/media/CallbackUtil$ListenerInfo;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    iput-object p2, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/CallbackUtil$ListenerInfo;

    iput p3, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    iget-object v1, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/CallbackUtil$ListenerInfo;

    iget v2, p0, Landroid/media/Spatializer$SpatializerOutputDispatcherStub$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->lambda$dispatchSpatializerOutputChanged$0$android-media-Spatializer$SpatializerOutputDispatcherStub(Landroid/media/CallbackUtil$ListenerInfo;I)V

    return-void
.end method
