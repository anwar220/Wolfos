# classes3.dex

.class Landroid/view/SurfaceControl$GlobalTransactionWrapper;
.super Landroid/view/SurfaceControl$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalTransactionWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl$GlobalTransactionWrapper-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Z)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Global transaction must be applied from closeTransaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyGlobalTransaction(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->applyResizedSurfaces()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->notifyReparentedSurfaces()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZ)V

    return-void
.end method
