# classes4.dex

.class public final synthetic Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/SurfaceSyncer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/window/SurfaceSyncer;ILjava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;->f$0:Landroid/window/SurfaceSyncer;

    iput p2, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;->f$0:Landroid/window/SurfaceSyncer;

    iget v1, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, v2, p1}, Landroid/window/SurfaceSyncer;->lambda$setupSync$1$android-window-SurfaceSyncer(ILjava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
