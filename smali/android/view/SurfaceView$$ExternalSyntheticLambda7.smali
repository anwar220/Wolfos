# classes3.dex

.class public final synthetic Landroid/view/SurfaceView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceView$SyncBufferTransactionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;->f$0:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;->f$0:Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
