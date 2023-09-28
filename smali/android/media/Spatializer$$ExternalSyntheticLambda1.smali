# classes2.dex

.class public final synthetic Landroid/media/Spatializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/media/Spatializer;


# direct methods
.method public synthetic constructor <init>(Landroid/media/Spatializer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$$ExternalSyntheticLambda1;->f$0:Landroid/media/Spatializer;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/Spatializer$$ExternalSyntheticLambda1;->f$0:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->lambda$addOnHeadTrackingModeChangedListener$2$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;

    move-result-object v0

    return-object v0
.end method
