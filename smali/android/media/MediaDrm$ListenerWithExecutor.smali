# classes2.dex

.class Landroid/media/MediaDrm$ListenerWithExecutor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWithExecutor"
.end annotation


# instance fields
.field private final mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsumer(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
