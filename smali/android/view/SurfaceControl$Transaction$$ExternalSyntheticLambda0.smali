# classes3.dex

.class public final synthetic Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/view/SurfaceControl$TransactionCommittedListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$TransactionCommittedListener;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$TransactionCommittedListener;

    invoke-static {v0, v1}, Landroid/view/SurfaceControl$Transaction;->lambda$addTransactionCommittedListener$0(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method
