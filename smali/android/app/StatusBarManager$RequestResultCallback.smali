# classes.dex

.class final Landroid/app/StatusBarManager$RequestResultCallback;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RequestResultCallback"
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method synthetic lambda$onTileRequest$0$android-app-StatusBarManager$RequestResultCallback(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onTileRequest(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/StatusBarManager$RequestResultCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/StatusBarManager$RequestResultCallback$$ExternalSyntheticLambda0;-><init>(Landroid/app/StatusBarManager$RequestResultCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
