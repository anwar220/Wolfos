# classes3.dex

.class public final synthetic Landroid/view/TextureView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Landroid/view/TextureView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/TextureView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TextureView$$ExternalSyntheticLambda0;->f$0:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget-object v0, p0, Landroid/view/TextureView$$ExternalSyntheticLambda0;->f$0:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->lambda$new$0$android-view-TextureView(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
