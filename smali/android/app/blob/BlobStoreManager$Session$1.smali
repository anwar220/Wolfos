# classes.dex

.class Landroid/app/blob/BlobStoreManager$Session$1;
.super Landroid/app/blob/IBlobCommitCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/blob/BlobStoreManager$Session;->commit(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/blob/BlobStoreManager$Session;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$resultCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4

    iput-object p1, p0, Landroid/app/blob/BlobStoreManager$Session$1;->this$0:Landroid/app/blob/BlobStoreManager$Session;

    iput-object p2, p0, Landroid/app/blob/BlobStoreManager$Session$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/blob/BlobStoreManager$Session$1;->val$resultCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/app/blob/IBlobCommitCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .registers 6

    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session$1;->val$executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/blob/BlobStoreManager$Session$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/blob/BlobStoreManager$Session$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/app/blob/BlobStoreManager$Session$1;->val$resultCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
